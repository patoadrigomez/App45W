using App45W.Entities;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace App45W.ViewModels
{
    public class PedidosAsignadosTodosViewModel : BaseViewModel
    {
        public ObservableCollection<PedidoAsignado> PedidosAsignadosTodos { get; set; }
        public Command LoadPedidosAsignadosTodosCommand { get; }

        public PedidosAsignadosTodosViewModel() 
        {
            PedidosAsignadosTodos = new ObservableCollection<PedidoAsignado>();
            LoadPedidosAsignadosTodosCommand = new Command(async () => await ExecuteLoadPedidosAsignadosTodosCommand());
            LoadPedidosAsignadosTodosCommand.Execute(null);
        }

        async Task ExecuteLoadPedidosAsignadosTodosCommand()
        {
            if (IsBusy)
                return;

            IsBusy = true;

            try
            {
                PedidosAsignadosTodos.Clear();

                var pedidosAsignadosTodos = await PedidoAsignadoStore.GetPedidosAsignadosAsync(true);
             
                foreach (var pat in pedidosAsignadosTodos)
                {
                    PedidosAsignadosTodos.Add(pat);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine(ex);
            }
            finally
            {
                IsBusy = false;
            }
        }

    }
}
