using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace App45W.Interface
{
    public  interface IColectorStore<T>
    {
        Task<T> GetColectorAsync(int id);
        Task<IEnumerable<T>> GetColectoresAsync(bool forceRefresh = false);
    }
}
