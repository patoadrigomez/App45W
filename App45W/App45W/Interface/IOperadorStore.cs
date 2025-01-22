using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace App45W.Interface
{
    public interface IOperadorStore<T>
    {
        Task<T> GetOperadorAsync(int id);
        Task<IEnumerable<T>> GetOperadoresAsync(bool forceRefresh = false);
    }
}
