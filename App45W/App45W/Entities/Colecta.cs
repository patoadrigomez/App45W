using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;

namespace App45W.Entities
{
    public class Colecta : INotifyPropertyChanged
    {
        int m_registro;
        string m_articuloCodigo;
        string m_articulo;
        decimal m_cantidadColectada;
        decimal m_pesoColectado;
        bool m_colectaPertenecienteAUnPedidoSinNadaDeStock;

        [PrimaryKey, NotNull]

        public int Registro
        {
            get { return m_registro; }
            set { m_registro = value; OnPropertyChanged(nameof(Registro)); }
        }

        public string ArticuloCodigo
        {
            get { return m_articuloCodigo; }
            set { m_articuloCodigo = value; OnPropertyChanged(nameof(ArticuloCodigo)); }
        }

        public string Articulo
        {
            get { return m_articulo; }
            set { m_articulo = value; OnPropertyChanged(nameof(Articulo)); }
        }

        public decimal CantidadColectada
        {
            get { return m_cantidadColectada; }
            set { m_cantidadColectada = value; OnPropertyChanged(nameof(CantidadColectada)); }
        }

        public decimal PesoColectado
        {
            get { return m_pesoColectado; }
            set { m_pesoColectado = value; OnPropertyChanged(nameof(PesoColectado)); }
        }

        public bool ColectaPertenecienteAUnPedidoSinNadaDeStock
        {
            get { return m_colectaPertenecienteAUnPedidoSinNadaDeStock; }
            set { m_colectaPertenecienteAUnPedidoSinNadaDeStock = value; OnPropertyChanged(nameof(ColectaPertenecienteAUnPedidoSinNadaDeStock)); }
        }


        public Colecta()
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
