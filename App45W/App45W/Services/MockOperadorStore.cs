using App45W.Entities;
using App45W.Interface;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace App45W.Services
{
    public class MockOperadorStore : IOperadorStore<Operador>
    {
        readonly List<Operador> operadores = new List<Operador>();

        public  MockOperadorStore()
        {
            operadores = DbLocal.GetOperadores();
        }

        public async Task<IEnumerable<Operador>> GetOperadoresAsync(bool forceRefresh = false)
        {
            return await DbLocal.GetOperadoresAsync();
        }

        public async Task<Operador> GetOperadorAsync(int id)
        {
            return await Task.FromResult(operadores.FirstOrDefault(s => s.Id == id));

        }
    }
}
