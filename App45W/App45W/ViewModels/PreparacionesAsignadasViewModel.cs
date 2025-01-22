using App45W.Entities;
using App45W.Models;
using App45W.Services;
using App45W.Views;
using Honeywell.AIDC.CrossPlatform;
using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Forms;

namespace App45W.ViewModels
{
    [QueryProperty(nameof(PAsignado), nameof(PAsignado))]
  
    public class PreparacionesAsignadasViewModel : BaseViewModel
    {
        private const string DEFAULT_READER_KEY = "default";
        private Dictionary<string, BarcodeReader> mBarcodeReaders;
        List<string> listScanners = new List<string>();
        private BarcodeReader mSelectedReader = null;
        private bool codigoDeBarrasLeido = false;

        private PedidoAsignado pedidoAsignado;
        private string pedidoClaveUnica;
        private string preparacionClaveUnica;
        private string clienteNombre;
        private string articulo;
        private string fechaPedido;
        private int registro;
        private string codigoArticulo;
        private string codigoDeBarras;
        private string ubicacionAtriculo;
        private decimal unidadesAPreparar;
        private decimal envasesAPreparar;
        private decimal unidadesPendientes;
        private decimal envasesPendientes;
        private int unidadesPorEnvase;
        private int unidadesPorBolson;
        private decimal cantidad;
        private decimal cantidadPreparada;
        private decimal pedidoCantidad;
        private decimal unidades;
        private decimal envases;
        private int finalizado;
        private bool lblCantidad;
        private bool entCantidad;
        private decimal peso;
        private decimal pesoMaximoBolson;
        private bool cantidadesValidadas = false;
        private int gestionado;
        private bool isLoading = false;
        private bool botonesActivados = false;
        private bool pesoBolsonExcedido = false;
        
        public ObservableCollection<PedidoAsignado> Preparaciones { get; set; }

        public ObservableCollection<PedidoAsignado> ArticuloEditable { get; set; }

        public Command RegisterCommand { get; }

        public Command RegistrarConFaltaStock { get; }

        public Command GoToHomePageCommand { get; }


        public PreparacionesAsignadasViewModel()
        {
            Preparaciones = new ObservableCollection<PedidoAsignado>();
            ArticuloEditable = new ObservableCollection<PedidoAsignado>();
            RegisterCommand = new Command(async () => await ExecuteRegisterCommandsCommand());
            RegistrarConFaltaStock = new Command(async () => await ExecuteRegistrarConFaltaStock());
            BotonesActivados = !ConfigApp.LecturaCodigoDeBarrasHabilitado;
            ReadCodBarCommand = new Command(() => testFunction());
            PopulateReaderString();
            mBarcodeReaders = new Dictionary<string, BarcodeReader>();
            OpenBarcodeReader();
        }

        async Task ExecuteRegisterCommandsCommand()
        {
            if (IsBusy)
                return;

            IsBusy = true;

            await Task.Run(async () =>
            {
                try
                {
                    //decimal pesoAcumuladoBolson = DbLocal.GetPesoBolson(Registro);
                    
                    if (!BotonesActivados) return;

                    //Se valida que se hayaa leído correctamente el código de barras
                    if(ConfigApp.LecturaCodigoDeBarrasHabilitado)
                    {
                        if (!codigoDeBarrasLeido)
                        {
                            AlertServices.Show("Error", "No se ha leído el código de barras");
                            return;
                        }
                    }

                    //Se crea la colecta que se està realizando
                    Colecta colectaRealizada = new Colecta();
                   
                    Cantidad = Envases * UnidadesPorEnvase + Unidades;

                    colectaRealizada.Registro = Registro;
                    colectaRealizada.ArticuloCodigo = CodigoArticulo;
                    colectaRealizada.Articulo = Articulo;
                    colectaRealizada.CantidadColectada = Cantidad;
                    colectaRealizada.PesoColectado = Cantidad * Peso;
                    colectaRealizada.ColectaPertenecienteAUnPedidoSinNadaDeStock = false;
                    bool colectaOK = false;
                    if (DbLocal.ExistColecta(colectaRealizada.Registro))
                    {
                        if (DbLocal.UpdateColecta(colectaRealizada)) colectaOK = true;
                    }
                    else
                    {
                        if (DbLocal.RegistrarColecta(colectaRealizada)) colectaOK = true;
                    }
                    if (colectaOK)
                    {
                        //Se pasa como parámetro de UpDate Finalizado = 0 porque no hay falta de stock
                        int estadoArticuloAsignado = (int)TYPE_ESTADO_ARTICULO_ASIGNADO.Procesado;
                        if (DbLocal.UpdatePedidoAsignado(Registro, Cantidad, TYPE_COLECTA.Colecta_Normal, estadoArticuloAsignado, 1))
                        {                           
                            if(Cantidad == unidadesAPreparar)
                            {
                                codigoDeBarrasLeido = false;
                                if (ConfigApp.LecturaCodigoDeBarrasHabilitado)
                                    BotonesActivados = false;
                                LimpiarArticuloEditable();
                            }
                            CantidadesValidadas = false;
                            LoadPrepraciones(pedidoAsignado);
                            AlertServices.Show("", "Cantidades actualizadas");
                        }
                        else
                        {
                            AlertServices.Show("Error", "No se pudo actulizar la cantidad.");
                            DbLocal.DeleteColecta(Registro);
                        }

                    } else
                    {
                        AlertServices.Show("Error", "No se pudo registrar la Colecta");                      
                    }
                 
                    Envases = 0;
                    Cantidad = 0;
                    Unidades = 0;
                    Finalizado = 0;
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex);
                }
                finally
                {
                    IsBusy = false;
                }
            });
        }

       async Task ExecuteRegistrarConFaltaStock()
       {
            if (IsBusy)
                return;

            IsBusy = true;

            await Task.Run(async () =>
            {
                try
                {
                    Cantidad = Envases * UnidadesPorEnvase + Unidades;
                    //Se valida que se hayaa leído correctamente el código de barras
                    if (ConfigApp.LecturaCodigoDeBarrasHabilitado)
                    {
                        if (!codigoDeBarrasLeido && Cantidad!= 0)
                        {
                            AlertServices.Show("Error", "No se ha leído el código de barras");
                            return;                         
                        }
                    }

                    //Se crea la colecta que se està realizando
                    Colecta colectaRealizada = new Colecta();
               
                    //Pasada todas las validaciones, se crea la nueva colecta
                    colectaRealizada.Registro = Registro;
                    colectaRealizada.ArticuloCodigo = CodigoArticulo;
                    colectaRealizada.Articulo = Articulo;
                    colectaRealizada.CantidadColectada = Cantidad;
                    colectaRealizada.PesoColectado = Cantidad * Peso;
                    colectaRealizada.ColectaPertenecienteAUnPedidoSinNadaDeStock = false;
                    bool colectaOK = false;
                    if (DbLocal.ExistColecta(colectaRealizada.Registro))
                    {
                        if (DbLocal.UpdateColecta(colectaRealizada)) colectaOK = true;
                    }
                    else
                    {
                        if (DbLocal.RegistrarColecta(colectaRealizada)) colectaOK = true;
                    }
                    if(colectaOK)
                    {
                        //Se pasa como parámetro de UpDate Finalizado = 1 porque hay falta de stock
                        int estadoArticuloAsignado = (int)TYPE_ESTADO_ARTICULO_ASIGNADO.Procesado;

                        if (DbLocal.UpdatePedidoAsignado(Registro, Cantidad, TYPE_COLECTA.Colecta_Sin_Stock, estadoArticuloAsignado, 1))
                        {                      
                            TYPE_EVENTO tipoEvento;
                            string tipoEventoDetalle;
                            try
                            {
                                tipoEvento = TYPE_EVENTO.ACOPIO_DE_ARTICULO_POR_COLECTOR;
                                if (Cantidad == 0)
                                {
                                    tipoEventoDetalle = String.Format("No hay stock del artículo: {0}", Articulo); //No había nada de stock del artículo
                                }
                                else
                                {
                                    tipoEventoDetalle = String.Format("No hay stock suficiente del artículo: {0} para completar el pedido", Articulo);//Había algo de stock pero no se pudo completar las cantidades pedidas
                                }

                                DbLocal.RegistrarEvento(Registro, pedidoAsignado.PreparacionTipo, pedidoAsignado.PreparacionSucursal, pedidoAsignado.PreparacionNumero,
                                    pedidoAsignado.PedidoTipo, pedidoAsignado.PedidoSucursal, pedidoAsignado.PedidoNumero, tipoEvento, tipoEventoDetalle, CodigoArticulo, Articulo);
                            }
                            catch (Exception e)
                            {
                                PopUpMessage.Show("Excepción", e.Message);
                            }
                           
                            codigoDeBarrasLeido = false;

                            LimpiarArticuloEditable();
                            LoadPrepraciones(pedidoAsignado);
                            AlertServices.Show("", "Cantidades actualizadas");
                        }
                        else
                        {
                            PopUpMessage.Show("Error", "No se pudo actulizar la cantidad.");
                            DbLocal.DeleteColecta(Registro);
                        }
                    } else
                    {
                        AlertServices.Show("Error", "No se pudo registrar la colecta");
                    }
                    Envases = 0;
                    Cantidad = 0;
                    Unidades = 0;
                    Finalizado = 0;
                    if (ConfigApp.LecturaCodigoDeBarrasHabilitado)
                        BotonesActivados = false;
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex);
                }
                finally
                {
                    IsBusy = false;
                }
            });
       }
        public string PedidoClaveUnica
        {
            get => pedidoClaveUnica;
            set => SetProperty(ref pedidoClaveUnica, value);
        }

        public string PreparacionClaveUnica
        {
            get => preparacionClaveUnica;
            set => SetProperty(ref preparacionClaveUnica, value);
        }

        public string ClienteNombre
        {
            get => clienteNombre;
            set => SetProperty(ref clienteNombre, value);
        }

        public string Articulo
        {
            get => articulo;
            set => SetProperty(ref articulo, value);
        }

        public string FechaPedido
        {
            get => fechaPedido;
            set => SetProperty(ref fechaPedido, value);
        }

        public int Registro
        {
            get => registro;
            set => SetProperty(ref registro, value);
        }

        public string CodigoArticulo
        {
            get => codigoArticulo;
            set => SetProperty(ref codigoArticulo, value);
        }

        public string CodigoDeBarras
        {
            get => codigoDeBarras;
            set => SetProperty(ref codigoDeBarras, value);
        }

        public string UbicacionAtriculo
        {
            get => ubicacionAtriculo;
            set => SetProperty(ref ubicacionAtriculo, value);
        }

        public decimal UnidadesAPreparar
        {
            get => unidadesAPreparar;
            set => SetProperty(ref unidadesAPreparar, value);
        }

        public decimal EnvasesAPreparar
        {
            get => envasesAPreparar;
            set => SetProperty(ref envasesAPreparar, value);
        }

        public decimal UnidadesPendientes
        {
            get => unidadesPendientes;
            set => SetProperty(ref unidadesPendientes, value);
        }

        public decimal EnvasesPendientes
        {
            get => envasesPendientes;
            set => SetProperty(ref envasesPendientes, value);
        }

        public int UnidadesPorEnvase
        {
            get => unidadesPorEnvase;
            set => SetProperty(ref unidadesPorEnvase, value);
        }

        public int UnidadesPorBolson
        {
            get => unidadesPorBolson;
            set => SetProperty(ref unidadesPorBolson, value);
        }

        public decimal Cantidad
        {
            get => cantidad;
            set => SetProperty(ref cantidad, value);
        }

        public decimal CantidadPreparada
        {
            get => cantidadPreparada;
            set => SetProperty(ref cantidadPreparada, value);
        }

        public decimal PedidoCantidad
        {
            get => pedidoCantidad;
            set => SetProperty(ref pedidoCantidad, value);
        }

        public decimal Unidades
        {
            get => unidades;
            set => SetProperty(ref unidades, value);
        }
        public decimal Envases
        {
            get => envases;
            set => SetProperty(ref envases, value);
        }

        public int Finalizado
        {
            get => finalizado;
            set => SetProperty(ref finalizado, value);
        }

        public bool LblCantidad
        {
            get => lblCantidad;
            set => SetProperty(ref lblCantidad, value);
        }

        public bool EntCantidad
        {
            get => entCantidad;
            set => SetProperty(ref entCantidad, value);
        }

        public decimal Peso
        {
            get => peso;
            set => SetProperty(ref peso, value);
        }

        public decimal PesoMaximoBolson
        {
            get => pesoMaximoBolson;
            set => SetProperty(ref pesoMaximoBolson, value);
        }

        public int Gestionado
        {
            get => gestionado;
            set => SetProperty(ref gestionado, value);
        }

        public bool IsLoading
        {
            get => isLoading;
            set => SetProperty(ref isLoading, value);
        }

        public bool BotonesActivados
        {
            get => botonesActivados;
            set => SetProperty(ref botonesActivados, value);
        }

        public bool CodigoDeBarrasLeido
        {
            get => codigoDeBarrasLeido;
            set => SetProperty(ref codigoDeBarrasLeido, value);
        }

        public bool CantidadesValidadas
        {
            get => cantidadesValidadas;
            set => SetProperty(ref cantidadesValidadas, value);
        }

        public bool PesoBolsonExcedido
        {
            get => pesoBolsonExcedido;
            set => SetProperty(ref pesoBolsonExcedido, value);
        }

        public PedidoAsignado PAsignado
        {
            get
            {
                return pedidoAsignado;
            }
            set
            {
                pedidoAsignado = value;
                LoadPrepraciones(value);
            }
        }


        public async void LoadPrepraciones(PedidoAsignado pedidoAsignado)
        {
            await Task.Run(() =>
            {
                IsLoading = true;
                try
                {
                    Preparaciones.Clear();
                    ArticuloEditable.Clear();
                    List<PedidoAsignado> preparaciones = new List<PedidoAsignado>();
                    List<PedidoAsignado> articulosARecolectar = new List<PedidoAsignado>();
                    articulosARecolectar = DbLocal.GetArticulosARecolectar(pedidoAsignado.PreparacionTipo, pedidoAsignado.PreparacionSucursal, pedidoAsignado.PreparacionNumero,
                        pedidoAsignado.PedidoTipo, pedidoAsignado.PedidoSucursal, pedidoAsignado.PedidoNumero);
                    preparaciones = articulosARecolectar.OrderByDescending(x => x.ArticuloUbicacionEnDeposito).ThenBy(x => x.ArticuloCodigo).ToList();
                   
                    PedidoClaveUnica = preparaciones[0].PedidoClaveUnica;
                    PreparacionClaveUnica = preparaciones[0].PreparacionClaveUnica;
                    ClienteNombre = preparaciones[0].ClienteNombre;
                    FechaPedido = preparaciones[0].PedidoFecha.ToString().Substring(0,9);
                    PesoMaximoBolson = Convert.ToDecimal(preparaciones[0].PesoMaximoBolson);

                    foreach (var pa in preparaciones)
                    {                        
                        if (pa.UndsPendientes > 0 && pa.Finalizado == 0)
                        {
                            if (ArticuloEditable.Count > 0)
                            {
                                Preparaciones.Add(pa);
                            }
                            else 
                            {
                                ArticuloEditable.Add(pa);
                             
                                Articulo = pa.ArticuloDescripcion;
                                Registro = pa.Registro;
                                CodigoArticulo = pa.ArticuloCodigo;
                                CodigoDeBarras = pa.ArticuloCodigoDeBarras;
                                UbicacionAtriculo = !pa.ArticuloUbicacionEnDeposito.Equals("") ? pa.ArticuloUbicacionEnDeposito : "No tiene";
                                UnidadesAPreparar = pa.UndsAPreparar;
                                UnidadesPendientes = pa.UndsPendientes;
                                UnidadesPorEnvase = pa.ArticuloUnidadesPorEnvase;
                                UnidadesPorBolson = pa.ArticuloUnidadesPorBolson;
                                CantidadPreparada = pa.CantidadPreparada;
                                //La siguiente instrucción es para tomar los primeros 12 dígitos del código de barras y no otmar el dígito verificador ya que el colector no lo lee
                                CodigoDeBarras = pa.ArticuloCodigoDeBarras.Length < 12 ? "1" : pa.ArticuloCodigoDeBarras.ToString().Substring(0, 12);
                                Peso = pa.ArticuloPesoEquivalenciaUnitario;
                                Finalizado = pa.Finalizado;
                                Gestionado = pa.Gestionado;
                                if (pa.UndsAPreparar % pa.ArticuloUnidadesPorEnvase == 0)
                                {
                                    LblCantidad = false;
                                    EntCantidad = false;
                                    EnvasesAPreparar = pa.UndsAPreparar / pa.ArticuloUnidadesPorEnvase;
                                    EnvasesPendientes = pa.UndsPendientes / pa.ArticuloUnidadesPorEnvase;
                                }
                                else
                                {
                                    LblCantidad = true;
                                    EntCantidad = true;
                                    EnvasesAPreparar = Math.Truncate(pa.UndsAPreparar / pa.ArticuloUnidadesPorEnvase);
                                    EnvasesPendientes = Math.Truncate(pa.UndsPendientes / pa.ArticuloUnidadesPorEnvase);
                                }
                            }
                        }
                    }
                    /*Se consulta si el artículo procesado es el último del pedido-preparaciòn. Si es así, se le indica
                     * al usuario que debe realizar una exportaciòn. En caso que no se haya podido acopiar ningún 
                     artículo por falta de stock, se le indica ello al usuario y se le permite procesar el siguiente
                    pedido - preparación si lo hubiere*/
                    if (Preparaciones.Count == 0 && ArticuloEditable.Count == 0)
                    {
                        int cantidadArticulosSinStock = articulosARecolectar.FindAll(x => x.Cantidad == 0 && x.Gestionado == 1 && x.Finalizado == Convert.ToInt32(TYPE_COLECTA.Colecta_Sin_Stock)).Count();
                        bool gestionadoCompleto = true;
                        if(articulosARecolectar.Count() == cantidadArticulosSinStock)
                        {
                            /*Ningún artículo del pedido-preparacion pudo ser acopiado por falta total de stock.
                             * Por ende se setea la propiedad PedidoPreparacionSinStock de cada artículo del actual
                             * pedido-preparacion a true*/
                            bool pedidoPreparacionSinStock = true;
                            foreach(var artSinStock in articulosARecolectar)
                            {
                                try
                                {
                                    DbLocal.SetPedidoPreparacionSinStock(artSinStock.Registro, pedidoPreparacionSinStock);
                                    DbLocal.SetColectaEnPedidoSinNadaDeStock(artSinStock.Registro, pedidoPreparacionSinStock);
                                    /*Se declara que todos los artículos del pedido-preparación fueron gestionados*/
                                    DbLocal.SetPedidoPreparacionGestionadoCompleto(artSinStock.Registro, gestionadoCompleto);
                                } catch(Exception e)
                                {
                                    throw (e);
                                }
                            }
                            AlertServices.Show("Aviso!", "No se ha podido acopiar ningún artículo por falta de stock. Pulse el botón Ir a la Pantalla de Inicio para acceder al siguiente pedido-preparación o para realizar una exportación de los datos.");
                        } else
                        {
                            /*Se declara que todos los artículos del pedido-preparación fueron gestionados*/
                            foreach(var articuloProcesado in articulosARecolectar)
                            {
                                DbLocal.SetPedidoPreparacionGestionadoCompleto(articuloProcesado.Registro, gestionadoCompleto);
                            }
                            AlertServices.Show("Aviso!", "No hay más artículos para procesar. Utilice el botón Ir a la Pantalla de Inicio para ir a realizar una exportación de los datos y pesaje del bolsón.");
                        }
                    } else if(Preparaciones.Count == 0 && Cantidad < UnidadesAPreparar && Finalizado == 0 && Gestionado == 1)
                    {
                        bool gestionadoCompleto = true;
                        foreach (var articuloProcesado in articulosARecolectar)
                        {
                            DbLocal.SetPedidoPreparacionGestionadoCompleto(articuloProcesado.Registro, gestionadoCompleto);
                        }                    
                    }                     
                }
                catch (Exception ex)
                {
                    Debug.WriteLine(ex);
                }
                finally
                {
                    IsBusy = false;
                }
                IsLoading = false;
            });          
        }

        public void LimpiarArticuloEditable()
        {
            Articulo = "";
            Registro = 0;
            CodigoArticulo = "";
            CodigoDeBarras = "";
            UbicacionAtriculo = "";
            UnidadesAPreparar = 0;
            UnidadesPorEnvase = 0;
            UnidadesPorBolson = 0;
            CantidadPreparada = 0;
            EnvasesAPreparar = 0;
            PedidoCantidad = 0;
            UnidadesPendientes = 0;
            EnvasesPendientes = 0;
            Peso = 0;
            Finalizado = 0;
            Gestionado = 0;
            LblCantidad = false;
            EntCantidad = false;
        }

        private void Bcr_BarcodeDataReady(object sender, BarcodeDataArgs e)
        {
        }

        public ICommand OpenWebCommand { get; }
        public ICommand ReadCodBarCommand { get; }

        public void testFunction()
        {
            PopUpMessage.Show("Titulo", "Mensage");

        }

        /// <summary>
        /// Opens the barcode reader. This method should be called from the
        /// main UI thread because it also updates the button states.
        /// </summary>
        public async void OpenBarcodeReader()
        {
            mSelectedReader = GetBarcodeReader(null);
            if (!mSelectedReader.IsReaderOpened)
            {
                BarcodeReader.Result result = await mSelectedReader.OpenAsync();

                if (result.Code == BarcodeReader.Result.Codes.SUCCESS ||
                    result.Code == BarcodeReader.Result.Codes.READER_ALREADY_OPENED)
                {
                }
                else
                {
                    PopUpMessage.Show("Error", "OpenAsync failed, Code:" + result.Code +
                        " Message:" + result.Message);
                }
            } //endif (mOpenReader)
        }
        /// <summary>
        /// Get an instance of BarcodeReader from the mBarcodeReaders collection
        /// if a matching key (reader name) is found; otherwise, create a new
        /// instance of BarcodeReader and add it to the mBarcodeReaders collection.
        /// </summary>
        /// <param name="readerName">A string containing the barcode reader name.</param>
        /// <returns>An instance of BarcodeReader object.</returns>
        public BarcodeReader GetBarcodeReader(string readerName)
        {
            BarcodeReader reader = null;

            if (readerName == DEFAULT_READER_KEY)
            { // This name was added to the Open Reader picker list if the
              // query for connected barcode readers failed. It is not a
              // valid reader name. Set the readerName to null to default
              // to internal scanner.
                readerName = null;
            }

            if (null == readerName)
            {
                if (mBarcodeReaders.ContainsKey(DEFAULT_READER_KEY))
                {
                    reader = mBarcodeReaders[DEFAULT_READER_KEY];
                }
            }
            else
            {
                if (mBarcodeReaders.ContainsKey(readerName))
                {
                    reader = mBarcodeReaders[readerName];
                }
            }

            if (null == reader)
            {
                // Create a new instance of BarcodeReader object.
                reader = new BarcodeReader(readerName);

                // Add an event handler to receive barcode data.
                // Even though we may have multiple reader sessions, we only
                // have one event handler. In this app, no matter which reader
                // the data come frome it will update the same UI controls.
                reader.BarcodeDataReady += Reader_BarcodeDataReady; ;

                // Add the BarcodeReader object to mBarcodeReaders collection.
                if (null == readerName)
                {
                    mBarcodeReaders.Add(DEFAULT_READER_KEY, reader);
                }
                else
                {
                    mBarcodeReaders.Add(readerName, reader);
                }
            }

            return reader;
        }

        private void Reader_BarcodeDataReady(object sender, BarcodeDataArgs e)
        {
            if (e.Data == CodigoDeBarras)
            {
                codigoDeBarrasLeido = true;
                BotonesActivados = true;
                AlertServices.Show("Código de Barras - OK", "Cödigo de barras leído correctamente");
            } else
            {
                codigoDeBarrasLeido = false;
                AlertServices.Show("Código de Barras - Error", "El código de barras leído no corresponde al artículo seleccionado");
            }
        }

        private async void PopulateReaderString()
        {
            try
            {
                // Queries the list of readers that are connected to the mobile computer.
                IList<BarcodeReaderInfo> readerList = await BarcodeReader.GetConnectedBarcodeReaders();
                if (readerList.Count > 0)
                {
                    foreach (BarcodeReaderInfo reader in readerList)
                    {
                        listScanners.Add(reader.ScannerName);
                    }
                }
                else
                {
                    listScanners.Add(DEFAULT_READER_KEY);
                }
            }
            catch (Exception ex)
            {
                listScanners.Add(DEFAULT_READER_KEY);
                PopUpMessage.Show("Error", "Failed to query connected readers, " + ex.Message);
            }
        }

    }
}
