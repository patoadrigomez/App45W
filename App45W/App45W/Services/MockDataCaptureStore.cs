using App45W.Entities;
using MySqlConnector;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Threading.Tasks;

namespace App45W.Services
{
    public class MockDataCaptureStore : IDataCaptureStore<Capture>
    {
        readonly List<Capture> items = new List<Capture>();

        public MockDataCaptureStore()
        {
            //solo a modo de test de funcionamiento del conector de mysql
            //var listitems = DbLocal.GetCapturasAsync().Result;
            items = DbLocal.GetCapturas();
        }
        public async Task<bool> AddItemAsync(Capture item)
        {
            items.Add(item);
            return await Task.FromResult(true);
        }

        public async Task<bool> UpdateItemAsync(Capture item)
        {
            var oldItem = items.Where((Capture arg) => arg.IdPieza == item.IdPieza).FirstOrDefault();
            items.Remove(oldItem);
            items.Add(item);
            return await Task.FromResult(true);
        }

        public async Task<bool> DeleteItemAsync(string id)
        {
            var oldItem = items.Where((Capture arg) => arg.IdPieza == id).FirstOrDefault();
            items.Remove(oldItem);

            return await Task.FromResult(true);
        }

        public async Task<Capture> GetItemAsync(string id)
        {
            return await Task.FromResult(items.FirstOrDefault(s => s.IdPieza == id));
        }

        public async Task<IEnumerable<Capture>> GetItemsAsync(bool forceRefresh = false)
        {
            return await Task.FromResult(items);
        }
    }
}