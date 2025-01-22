using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;

namespace App45W.Entities
{
    public class Evento : INotifyPropertyChanged
    {
        int m_registro;
        DateTime m_fechahora;
        int m_idterminal;
        int? m_idAcopiador;
        int m_idoperador;
        string m_idBulto;
        int? m_numBulto;
        string m_PrepracacionTipo;
        int m_PreparacionSucursal;
        decimal m_PreparacionNumero;
        string m_PedidoTipo;
        int m_PedidoSucursal;
        decimal? m_PedidoNumero;
        string m_tipo;
        string m_detalle;

        [PrimaryKey, NotNull]
        public int Registro
        {
            get { return m_registro; }
            set { m_registro = value; OnPropertyChanged(nameof(Registro)); }
        }

        [NotNull]   
        public DateTime FechaHora
        {
            get { return m_fechahora; }
            set { m_fechahora = value; OnPropertyChanged(nameof(FechaHora)); }
        }

        [NotNull]
        public int IdTerminal
        {
            get { return m_idterminal; }
            set { m_idterminal = value; OnPropertyChanged(nameof(IdTerminal)); }
        }

        public int? IdAcopiador
        {
            get { return m_idAcopiador; }
            set { m_idAcopiador = value; OnPropertyChanged(nameof(IdAcopiador)); }
        }


        public int IdOperador
        {
            get { return m_idoperador; }
            set { m_idoperador = value; OnPropertyChanged(nameof(IdOperador)); }
        }

        public string IdBulto
        {
            get { return m_idBulto; }
            set { m_idBulto = value; OnPropertyChanged(nameof(IdBulto)); }
        }

        public int? NumBulto
        {
            get { return m_numBulto; }
            set { m_numBulto = value; OnPropertyChanged(nameof(NumBulto)); }
        }

        public string PreparacionTipo
        {
            get { return m_PrepracacionTipo; }
            set { m_PrepracacionTipo = value; OnPropertyChanged(nameof(PreparacionTipo)); }
        }

        public int PreparacionSucursal
        {
            get { return m_PreparacionSucursal; }
            set { m_PreparacionSucursal = value; OnPropertyChanged(nameof(PreparacionSucursal)); }
        }

        public decimal PreparacionNumero
        {
            get { return m_PreparacionNumero; }
            set { m_PreparacionNumero = value; OnPropertyChanged(nameof(PreparacionNumero)); }
        }

        public string PedidoTipo
        {
            get { return m_PedidoTipo; }
            set { m_PedidoTipo = value; OnPropertyChanged(nameof(PedidoTipo)); }
        }

        public int PedidoSucursal
        {
            get { return m_PedidoSucursal; }
            set { m_PedidoSucursal = value; OnPropertyChanged(nameof(PedidoSucursal)); }
        }

        public decimal? PedidoNumero
        {
            get { return m_PedidoNumero; }
            set { m_PedidoNumero = value; OnPropertyChanged(nameof(PedidoNumero)); }
        }

        public string Tipo
        {
            get { return m_tipo; }
            set { m_tipo = value; OnPropertyChanged(nameof(Tipo)); }
        }

        public string Detalle
        {
            get { return m_detalle; }
            set { m_detalle = value; OnPropertyChanged(nameof(Detalle)); }
        }

        public Evento() 
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
