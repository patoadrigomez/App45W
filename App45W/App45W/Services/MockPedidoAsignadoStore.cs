using App45W.Entities;
using App45W.Interface;
using App45W.Models;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace App45W.Services
{
    public class MockPedidoAsignadoStore : IPedidoAsignadoStore<PedidoAsignado>
    {
        readonly List<PedidoAsignado> pedidosAsignados = new List<PedidoAsignado>();

        public  MockPedidoAsignadoStore()
        {
            pedidosAsignados =  DbLocal.GetPedidosAsignados();
        }
        public async Task<IEnumerable<PedidoAsignado>> GetPreparacionesAsignadasAsync(PedidoAsignado pedidoAsignado)
        {
            return await Task.FromResult(pedidosAsignados.FindAll(s => s.PedidoTipo == pedidoAsignado.PedidoTipo && s.PedidoSucursal == pedidoAsignado.PedidoSucursal && s.PedidoNumero == pedidoAsignado.PedidoNumero 
            && s.PreparacionTipo == pedidoAsignado.PreparacionTipo && s.PreparacionSucursal == pedidoAsignado.PreparacionSucursal && s.PreparacionNumero == pedidoAsignado.PreparacionNumero));
        }

        public async Task<IEnumerable<PedidoAsignado>> GetPedidosAsignadosAsync(bool forceRefresh = false)
        {
            return await DbLocal.GetPedidosAsignadosAsync();
        }

        public async Task<IEnumerable<PedidoAsignado>> GetArticulosARecolectarAsync(string prepTipo, int prepSucursal, decimal prepNumero, string pedTipo, int pedSucursal, decimal pedNumero, bool forceRefresh = false)
        {
            return await DbLocal.GetArticulosARecolectarAsync(prepTipo, prepSucursal, prepNumero, pedTipo, pedSucursal, pedNumero);
        }
    }
}
