using App45W.Entities;
using App45W.Interface;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace App45W.Services
{
    public class MockColectorStore : IColectorStore<Acopiador>
    {
        public Task<Acopiador> GetColectorAsync(int id)
        {
            throw new NotImplementedException();
        }

        public async Task<IEnumerable<Acopiador>> GetColectoresAsync(bool forceRefresh = false)
        {
            return await DbLocal.GetAcopiadoresAsync();
        }
    }
}
