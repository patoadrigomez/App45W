using App45W.Entities;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace App45W.Interface
{
    public interface IPedidoAsignadoStore<T>
    {
        Task<IEnumerable<T>> GetPreparacionesAsignadasAsync(PedidoAsignado pedidoAsignado);
        Task<IEnumerable<T>> GetPedidosAsignadosAsync(bool forceRefresh = false);

        Task<IEnumerable<T>> GetArticulosARecolectarAsync(string prepTipo, int prepSucursal, decimal prepNumero,
            string pedTipo, int pedSucursal, decimal pedNumero, bool forceRefresh = false);
    }
}
