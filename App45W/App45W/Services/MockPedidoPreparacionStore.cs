using App45W.Interface;
using App45W.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace App45W.Services
{
    public class MockPedidoPreparacionStore : IPedidoPreparacionStore<PedidoPreparacion>
    {
        public async Task<IEnumerable<PedidoPreparacion>> GetPedidosPreparacionesAsignadosAsync(bool forceRefresh = false)
        {
            return await DbLocal.GetPedidosPrepracionesAsignadosAsync();
        }
    }
}
