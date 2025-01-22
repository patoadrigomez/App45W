using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace App45W.Interface
{
    public interface IEventosStore<T>
    {
        Task<IEnumerable<T>> GetEventosAsync(bool forceRefresh = false);
    }
}
