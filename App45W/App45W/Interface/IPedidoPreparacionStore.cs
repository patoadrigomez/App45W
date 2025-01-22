using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace App45W.Interface
{
    public interface IPedidoPreparacionStore<T>
    {
        Task<IEnumerable<T>> GetPedidosPreparacionesAsignadosAsync(bool forceRefresh = false);
    }
}
