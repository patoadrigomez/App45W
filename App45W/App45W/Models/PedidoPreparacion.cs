using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace App45W.Models
{
    public class PedidoPreparacion
    {
        public decimal PreparacionNumero { get; set; }
        public decimal PedidoNumero { get; set; }
        public string PreparacionTipo { get; set; }
        public int PreparacionSucursal { get; set; }
        public string PedidoTipo { get; set; }
        public int PedidoSucursal { get; set; }
        public DateTime PedidoFecha { get; set; }
        public string ClienteNombre { get; set; }
        public string PreparacionClaveUnica { get; set; }
        public string PedidoClaveUnica { get; set; }
    }
}
