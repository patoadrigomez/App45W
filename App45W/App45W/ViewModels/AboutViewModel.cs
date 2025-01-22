using App45W.Services;
using System;
using System.Threading.Tasks;
using System.Windows.Input;
using Xamarin.Essentials;
using Xamarin.Forms;
using Honeywell.AIDC.CrossPlatform;
using System.Collections.Generic;
using App45W.Entities;
using App45W.Views;
using System.Linq;
using static Honeywell.AIDC.CrossPlatform.ConnectionStateArgs;
using App45W.Interface;
using System.Net;

namespace App45W.ViewModels
{
    public class AboutViewModel : BaseViewModel
    {
        private string operadorLogueado;
        private string colector;
        private string nombreColector;
        private string nombreTerminal;
        private bool botonImportarEnabled = false;
        private bool botonExportarEnabled = false;

        private bool isLoading = false;
        public Command OpenPedidosCommand { get; }

        public Command ExportarDatosCommand { get; set; }

        public Command ImportarDatosCommand { get; set; }

        public Command GetInicioMainPageCommand { get; }

        public AboutViewModel()
        {
            Title = "About";
            OpenPedidosCommand = new Command(async () => await ExecuteOpenPedidosCommand());
            ExportarDatosCommand = new Command(async () => await ExecuteExportarDatosCommand());
            ImportarDatosCommand = new Command(async () => await ExecuteImportarDatosCommand());
            GetInicioMainPageCommand = new Command( () => ExecuteGetInicioMainPageCommandd());
            GetInicioMainPageCommand.Execute(null);
        }

        public bool IsLoading
        {
            get => isLoading;
            set => SetProperty(ref isLoading, value);
        }

        public bool BotonImportarEnabled
        {
            get => botonImportarEnabled;
            set => SetProperty(ref botonImportarEnabled, value);
        }

        public bool BotonExportarEnabled
        {
            get => botonExportarEnabled;
            set => SetProperty(ref botonExportarEnabled, value);
        }

        void ExecuteGetInicioMainPageCommandd()
         {
            //Se obtienen los datos del operador, el colector y la terminal.
            if(ConfigApp.NombreOperadorLogueado.Length > 15)
            {
                OperadorLogueado = ConfigApp.NombreOperadorLogueado.Substring(0, 14) + "...";
            } else
            {
                OperadorLogueado = ConfigApp.NombreOperadorLogueado;
            }         
            Colector = ConfigApp.IdAcopiador;
            NombreColector = ConfigApp.NombreAcopiador;
            NombreTerminal = ConfigApp.IdTerminal;

            //Se validad si el botón Importar debe estar habilitado
            List<PedidoAsignado> pedidoAsignados = new List<PedidoAsignado>();
            pedidoAsignados = DbLocal.GetPedidosAsignados();
            if(pedidoAsignados.Any(x => x.Gestionado == 1 && !x.RegistroNoExportado))
            {
                BotonImportarEnabled = false;
                BotonExportarEnabled = true;
            } 
            else
            {
                BotonImportarEnabled = true;
                BotonExportarEnabled = false;
            }

            //Se valida si el botón Exportar debe estar habilitado
            if(DbLocal.GetPedidosAsignados().Any(x => x.Gestionado == 1))
            {
                BotonExportarEnabled = true;
                BotonImportarEnabled = false;
            } else
            {
                BotonExportarEnabled = false;
                BotonImportarEnabled = true;
            }
        }

        public string OperadorLogueado
        {
            get => operadorLogueado;
            set => SetProperty(ref operadorLogueado, value);
        }

        public string Colector
        {
            get => colector;
            set => SetProperty(ref colector, value);
        }

        public string NombreColector
        {
            get => nombreColector;
            set => SetProperty(ref nombreColector, value);
        }

        public string NombreTerminal
        {
            get => nombreTerminal;
            set => SetProperty(ref nombreTerminal, value);
        }

        async Task ExecuteOpenPedidosCommand()
        {
            await App.Navigate.PushAsync(new PedidosAsignadosPage());
        }

        async Task ExecuteExportarDatosCommand()
        {
            if(!CheckConnectionWiFi() || !await CheckConnectionDbRemotAsync())
            {
                //Se hace un Delay del Task para darle tiempo a la app a conectarse nuevamente a la BBDD luego de conectar el Wifi nuevamente.
                await Task.Delay(1000);
                return;
            }
         
            await Task.Run(async () =>
            {
                try
                {
                    //Se exportan as actualizaciones de la tabla local PedidoAsignado a la tabla remota mcr_pedidosdetalleasignado
                    bool hayDatosParaExportar;
                    int registrosPedidosDetalleAsignadoActualizados = 0;
                    List<PedidoAsignado> listPedidosAsignados = new List<PedidoAsignado>();                  
                    List<PedidoAsignado> listPedidosAsignadosNoExportado = new List<PedidoAsignado>();
                    //Se activa el Activity Indicartor
                    IsLoading = true;
                    listPedidosAsignados = DbLocal.GetPedidosAsignados().OrderByDescending(x => x.Gestionado).ToList();
                    hayDatosParaExportar = listPedidosAsignados.Any(x => x.Gestionado == 1);
                    if(!hayDatosParaExportar)
                    {
                        AlertServices.Show("Atención!", "No hay datos para exportar");
                        return;
                    }
                    //La lista Pedidos asignados deberá ser ordenada de manera tal que queden primeros los registros con movimientos
                    //while (listPedidosAsignados.Count > 0 && listPedidosAsignados[pos].Gestionado != 0)
                    foreach(var lpa in listPedidosAsignados)
                    {
                        if(lpa.Gestionado == 1)
                        {
                            if (await ImportExportService.ExtistPedidoPreparacion(lpa))
                            {
                                if (ImportExportService.SincronizarPedidosDetalleAsignado(lpa))
                                {
                                    registrosPedidosDetalleAsignadoActualizados++;
                                    await DbLocal.DeletePedidoAsignado(lpa.Registro);
                                }
                            }
                            else
                            {
                                /*Los registros que que no se pudieron actualizar por no encontrarse en la BBDD remota, 
                                 * se almacenan transitoriamente en esta lista para luego ser recorridos por segunda vez.
                                 * Esto se hace para gestionar las excepciones que se pueden dar al exportar los datos
                                 * inmediatamanete después de agarrar señal WIFI. Ocurre que a veces, la conectividad con la BBDD
                                 * remota demora un tanto más luego de reestablecerse conexión Wifi y al realizar la exportación
                                 * puede ocurrir que los primeros registros no se encuentren cuando en realidad están en la tabla remota*/
                                ImportExportService.SetRegistroNoExportado(lpa.Registro);
                                listPedidosAsignadosNoExportado.Add(lpa);                               
                            }
                            listPedidosAsignados = DbLocal.GetPedidosAsignados().OrderByDescending(x => x.Gestionado).ToList();
                        }                    
                    }

                    //Se recoree la lista de registros que no se encontraron en la primer barrida luego de agarrar señal Wifi
                    if(listPedidosAsignadosNoExportado.Count() > 0)
                    {
                        int registrosNoExportados = 0;
                        foreach (var p in listPedidosAsignadosNoExportado)
                        {                        
                            if (await ImportExportService.ExtistPedidoPreparacion(p))
                            {
                                if (ImportExportService.SincronizarPedidosDetalleAsignado(p))
                                {
                                    registrosPedidosDetalleAsignadoActualizados++;
                                    await DbLocal.DeletePedidoAsignado(p.Registro);
                                }
                            }
                            else
                            {   /*Si el registro no exportado genró un evento en la tabla de la bbdd local,
                                 * éste no deberá ser exportado ya que el registro que le dió origen no pudo ser exportado*/
                                Evento evento = new Evento();
                                evento = DbLocal.GetEventos().Find(x => x.Registro == p.Registro);
                                if (evento != null) DbLocal.DeleteEvento(evento.Registro);
                                registrosNoExportados++;
                            }
                        }
                        //Se eliminan de la tabla PedidoAsignado los artículos que no fueron procesados
                        List<PedidoAsignado> pedidoAsignadosNoProcesados = new List<PedidoAsignado>();
                        pedidoAsignadosNoProcesados = DbLocal.GetPedidosAsignados().FindAll(x => x.Gestionado == 0 && !x.RegistroNoExportado).ToList();
                        foreach(var panp in pedidoAsignadosNoProcesados)
                        {
                            await DbLocal.DeletePedidoAsignado(panp.Registro);
                        }
                        if (registrosNoExportados > 0)
                            AlertServices.Show("Exportación de Novedades", "Hubo " + registrosNoExportados + " colectas que no se pudiron exportar correctamente. Para verlas, utlice la opción Registros No Exportados del menú principal.");
                    } else
                    {
                        DbLocal.ClearTable<PedidoAsignado>();
                    }                  
                    AlertServices.Show("Exportación de Novedades", "Se han actualizado " + registrosPedidosDetalleAsignadoActualizados + " colecta de artículos");
                }
                catch (Exception ex)
                {
                    PopUpMessage.Show("Excepción", ex.Message);
                }
                //Antes de borrar toda la tabla local, verificar que todo se haya exportado correctamente. Se han dado casos en los que surgieron excepciones y los cambios no se guardaron.               
                DbLocal.ClearTable<Colecta>();
            });
            
            
            if (!CheckConnectionWiFi())
            {
                AlertServices.Show("Error de Conexión", "No hay conexión WIFI");
                return;
            }
            await Task.Run(() =>
            {
                try
                {
                    //Se exporta la tabla Eventos
                    int registrosEventosInsertados = ImportExportService.SincronizarEventos();
                    if(registrosEventosInsertados > 0)
                        AlertServices.Show("Exportación de Eventos", "Se han insertado " + registrosEventosInsertados + " eventos");
                }
                catch (Exception ex)
                {
                    PopUpMessage.Show("Excepción", ex.Message);
                }
                DbLocal.ClearTable<Evento>();
                IsLoading = false;
            });
            Xamarin.Forms.Application.Current.MainPage = new MainPage();
        }

        async Task ExecuteImportarDatosCommand()
        {      
            await Task.Delay(100);
            List<PedidoAsignado> listPedidosAsignados = new List<PedidoAsignado>();
            if(!CheckConnectionWiFi() || !await CheckConnectionDbRemotAsync())
            {
                AlertServices.Show("Error de Conexión", "No hay conexión WIFI");
                await Task.Delay(1000);
                return;
            }
            if(await ImportExportService.ExtistArticuloPendientePesar())
            {
                AlertServices.Show("Importación de Novedades", "No se pueden importar novedades porque hay artículos pendientes de pesar para este colector en la terminal local");
                IsLoading = false;
                return;
            }
            if (!DbLocal.GetPedidosAsignados().Any(x => x.Gestionado == 1 && !x.RegistroNoExportado))
            {
                DbLocal.ClearTable<PedidoAsignado>();
                DbLocal.ClearTable<Colecta>();
                DbLocal.ClearTable<Evento>();

                //Se importa la tabla pedidosdetallesignado una vez que no quedan datos para exportar.
                IsLoading = true;
                if (DbLocal.LoadTable<PedidoAsignado>(await DbMySql.DbMySql.GetPedidosAsync()))
                {
                    /*Una vez cargada la tabla local PedidoAsignado con la info de la tabla remota 
                     * pedidosdetalleasignado, se la recorre para actualizar el campo IdEstadoArticuloAsignado
                     * de la tabla remota a 2(pedido en proceso) */
                    listPedidosAsignados = DbLocal.GetPedidosAsignados();
                    if(listPedidosAsignados != null)
                    {
                        foreach(var lpa in listPedidosAsignados)
                        {
                            if (!ImportExportService.SincronizarPedidosDetalleAsignado(lpa))
                                AlertServices.Show("Error", "Error al cambiar de estado al artìculo " + lpa.ArticuloDescripcion);
                        }
                    }
                    AlertServices.Show("Importación de Novedades", "La importación de novedades fue exitosa");
                } else
                {
                    AlertServices.Show("Importación de Novedades", "No hay novedades a importar para este colector.");
                }
            } else
            {
                AlertServices.Show("Error", "Quedan novedades pendientes de exportar");
            }
            IsLoading = false;
        }

        private bool CheckConnectionWiFi()
        {
            bool wifiok = false;
            if (DependencyService.Get<IConnectionStatus>().connectionType != ConnectionType.Wifi || !DependencyService.Get<IConnectionStatus>().isConnected)
            {
                AlertServices.Show("Error de Conexión", "Sin conexión Wifi");
            }
            else
                wifiok = true;
            return wifiok;
        }

        private async Task<bool> CheckConnectionDbRemotAsync()
        {
            bool connected = false;
            connected = await DbMySql.DbMySql.ConnectAsync();
            if(!connected)
            {
                AlertServices.Show("Error conexión", "Sin conexión a la base de datos, aguarde un instante por favor");
            }
            return connected;
        }
    }
}