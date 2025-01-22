using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;

namespace App45W.Entities
{
    public class PedidoAsignado : INotifyPropertyChanged
    {

        int m_registro;
        int m_idTerminal;
        string m_preparacionTipo;
        int m_preparacionSucursal;
        decimal m_preparacionNumero;
        DateTime m_preparacionFecha;
        string m_pedidoTipo;
        int m_pedidoSucursal;
        decimal m_pedidoNumero;
        DateTime m_pedidoFecha;
        decimal m_clienteCodigo;
        string m_clienteNombre;
        string m_articuloCodigo;
        string m_articuloCodigoDeBarras;
        string m_articuloDescripcion;
        string m_articuloUbicacionEnDeposito;
        decimal m_articuloPesoEquivalenciaUnitario;
        decimal m_articuloVolumenEquivalenciaUnitario;
        string m_articuloTipoDeEnvaseNombre;
        int m_articuloUnidadesPorEnvase;
        int m_articuloUnidadesPorBolson;
        double m_pesoMaximoBolson;
        decimal m_pedidoCantidad;
        decimal m_cantidadPreparada;
        int m_preparacionOrden;
        int m_idAcopiador;
        decimal m_cantidad;
        int m_finalizado;
        int m_idEstadoArticuloAsignado;
        string m_prepracionClaveUnica;
        string m_pedidoClaveUnica;
        decimal m_undsAPreparar;
        decimal m_undsPendientes;
        decimal m_envases;
        int m_gestionado;
        bool m_registroNoExportado;
        bool m_pedidoPreparacionSinStock;
        bool m_pedidoPreparacionGestionadoCompleto;
        int m_pedidoOrdenAcopio;

        [PrimaryKey, NotNull]
        public int Registro
        {
            get { return m_registro; }
            set { m_registro = value; OnPropertyChanged(nameof(Registro)); }
        }

        public int IdTerminal
        {
            get { return m_idTerminal; }
            set { m_idTerminal = value; OnPropertyChanged(nameof(IdTerminal)); }
        }

        public string PreparacionTipo
        {
            get { return m_preparacionTipo; }
            set { m_preparacionTipo = value; OnPropertyChanged(nameof(PreparacionTipo)); }
        } 


        public int PreparacionSucursal
        {
            get { return m_preparacionSucursal; }
            set { m_preparacionSucursal = value; OnPropertyChanged(nameof(PreparacionSucursal)); }
        }

        public decimal PreparacionNumero
        {
            get { return m_preparacionNumero; }
            set { m_preparacionNumero = value; OnPropertyChanged(nameof(PreparacionNumero)); }
        }

        public DateTime PreparacionFecha
        {
            get { return m_preparacionFecha; }
            set { m_preparacionFecha = value; OnPropertyChanged(nameof(PreparacionFecha)); }
        }

        public string PedidoTipo
        {
            get { return m_pedidoTipo; }
            set { m_pedidoTipo = value; OnPropertyChanged(nameof(PedidoTipo)); }
        }

        public int PedidoSucursal
        {
            get { return m_pedidoSucursal; }
            set { m_pedidoSucursal = value; OnPropertyChanged(nameof(PedidoSucursal)); }
        }

        public decimal PedidoNumero
        {
            get { return m_pedidoNumero; }
            set { m_pedidoNumero = value; OnPropertyChanged(nameof(PedidoNumero)); }
        }

        public DateTime PedidoFecha
        {
            get { return m_pedidoFecha; }
            set { m_pedidoFecha = value; OnPropertyChanged(nameof(PedidoFecha)); }
        }

        public decimal ClienteCodigo
        {
            get { return m_clienteCodigo; }
            set { m_clienteCodigo = value; OnPropertyChanged(nameof(ClienteCodigo)); }
        }

        public string ClienteNombre
        {
            get { return m_clienteNombre; }
            set { m_clienteNombre = value; OnPropertyChanged(nameof(ClienteNombre)); }
        }

        public string ArticuloCodigo
        {
            get { return m_articuloCodigo; }
            set { m_articuloCodigo = value; OnPropertyChanged(nameof(ArticuloCodigo)); }
        }

        public string ArticuloCodigoDeBarras
        {
            get { return m_articuloCodigoDeBarras; }
            set { m_articuloCodigoDeBarras = value; OnPropertyChanged(nameof(ArticuloCodigoDeBarras)); }
        }

        public string ArticuloDescripcion
        {
            get { return m_articuloDescripcion; }
            set { m_articuloDescripcion = value; OnPropertyChanged(nameof(ArticuloDescripcion)); }
        }

        public string ArticuloUbicacionEnDeposito
        {
            get { return m_articuloUbicacionEnDeposito; }
            set { m_articuloUbicacionEnDeposito = value; OnPropertyChanged(nameof(ArticuloUbicacionEnDeposito)); }
        }

        public decimal ArticuloPesoEquivalenciaUnitario
        {
            get { return m_articuloPesoEquivalenciaUnitario; }
            set { m_articuloPesoEquivalenciaUnitario = value; OnPropertyChanged(nameof(ArticuloPesoEquivalenciaUnitario)); }
        }

        public decimal ArticuloVolumenEquivalenciaUnitario
        {
            get { return m_articuloVolumenEquivalenciaUnitario; }
            set { m_articuloVolumenEquivalenciaUnitario = value; OnPropertyChanged(nameof(ArticuloVolumenEquivalenciaUnitario)); }
        }

        public string ArticuloTipoDeEnvaseNombre
        {
            get { return m_articuloTipoDeEnvaseNombre; }
            set { m_articuloTipoDeEnvaseNombre = value; OnPropertyChanged(nameof(ArticuloTipoDeEnvaseNombre)); }
        }

        public int ArticuloUnidadesPorEnvase
        {
            get { return m_articuloUnidadesPorEnvase; }
            set { m_articuloUnidadesPorEnvase = value; OnPropertyChanged(nameof(ArticuloUnidadesPorEnvase)); }
        }

        public int ArticuloUnidadesPorBolson
        {
            get { return m_articuloUnidadesPorBolson; }
            set { m_articuloUnidadesPorBolson = value; OnPropertyChanged(nameof(ArticuloUnidadesPorBolson)); }
        }

        public double PesoMaximoBolson
        {
            get { return m_pesoMaximoBolson; }
            set { m_pesoMaximoBolson = value; OnPropertyChanged(nameof(PesoMaximoBolson)); }
        }

        public decimal PedidoCantidad
        {
            get { return m_pedidoCantidad; }
            set { m_pedidoCantidad = value; OnPropertyChanged(nameof(PedidoCantidad)); }
        }

        public decimal CantidadPreparada
        {
            get { return m_cantidadPreparada; }
            set { m_cantidadPreparada = value; OnPropertyChanged(nameof(CantidadPreparada)); }
        }

        public int PreparacionOrden
        {
            get { return m_preparacionOrden; }
            set { m_preparacionOrden = value; OnPropertyChanged(nameof(PreparacionOrden)); }
        }

        public int IdAcopiador
        {
            get { return m_idAcopiador; }
            set { m_idAcopiador = value; OnPropertyChanged(nameof(IdAcopiador)); }
        }

        public decimal Cantidad
        {
            get { return m_cantidad; }
            set { m_cantidad = value; OnPropertyChanged(nameof(Cantidad)); }
        }

        public int Finalizado
        {
            get { return m_finalizado; }
            set { m_finalizado = value; OnPropertyChanged(nameof(Finalizado)); }
        }

        public int IdEstadoArticuloAsignado
        {
            get { return m_idEstadoArticuloAsignado; }
            set { m_idEstadoArticuloAsignado = value; OnPropertyChanged(nameof(IdEstadoArticuloAsignado)); }
        }

        public string PreparacionClaveUnica
        {
            get { return m_prepracionClaveUnica = $"{PreparacionTipo} {PreparacionSucursal} - {PreparacionNumero}"; }
            set { m_prepracionClaveUnica = value; OnPropertyChanged(nameof(PreparacionClaveUnica)); }
        }

        public string PedidoClaveUnica
        {
            get { return m_pedidoClaveUnica= $"{PedidoTipo} {PedidoSucursal} - {PedidoNumero}"; }
            set { m_pedidoClaveUnica = value; OnPropertyChanged(nameof(PedidoClaveUnica)); }
        }

        public decimal UndsAPreparar
        {
            get { return m_undsAPreparar = m_pedidoCantidad - m_cantidadPreparada; }
            set { m_undsAPreparar = value; OnPropertyChanged(nameof(UndsAPreparar)); }
        }

        public decimal UndsPendientes
        {
            get { return m_undsPendientes = m_undsAPreparar - m_cantidad; }
            set { m_undsPendientes = value; OnPropertyChanged(nameof(UndsPendientes)); }
        }


        public decimal Envases
        {
            get { return m_envases = m_cantidad / m_articuloUnidadesPorEnvase; }
            set { m_envases = value; OnPropertyChanged(nameof(Envases)); }
        }

        public int Gestionado
        {
            get { return m_gestionado; }
            set { m_gestionado = value; OnPropertyChanged(nameof(Gestionado)); }
        }

        public bool RegistroNoExportado
        {
            get { return m_registroNoExportado; }
            set { m_registroNoExportado = value; OnPropertyChanged(nameof(RegistroNoExportado)); }
        }

        public bool PedidoPreparacionSinStock
        {
            get { return m_pedidoPreparacionSinStock; }
            set { m_pedidoPreparacionSinStock = value; OnPropertyChanged(nameof(PedidoPreparacionSinStock)); }
        }

        public bool PedidoPreparacionGestionadoCompleto
        {
            get { return m_pedidoPreparacionGestionadoCompleto; }
            set { m_pedidoPreparacionGestionadoCompleto = value; OnPropertyChanged(nameof(PedidoPreparacionGestionadoCompleto)); }
        }

        public int PedidoOrdenAcopio
        {
            get { return m_pedidoOrdenAcopio; }
            set { m_pedidoOrdenAcopio = value; OnPropertyChanged(nameof(PedidoOrdenAcopio)); }
        }

        public PedidoAsignado()
        {

        }

        public event PropertyChangedEventHandler PropertyChanged;
        private void OnPropertyChanged(string propertyName)
        {
            this.PropertyChanged?.Invoke(this,
              new PropertyChangedEventArgs(propertyName));
        }
    }
}
