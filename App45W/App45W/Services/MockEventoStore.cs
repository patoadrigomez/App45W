using App45W.Entities;
using App45W.Interface;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace App45W.Services
{
    public class MockEventoStore : IEventosStore<Evento>
    {
        public async Task<IEnumerable<Evento>> GetEventosAsync(bool forceRefresh = false)
        {
            return await DbLocal.GetEventosAsync();
        }
    }
}
