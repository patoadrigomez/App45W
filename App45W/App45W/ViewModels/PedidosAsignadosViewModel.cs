using App45W.Entities;
using App45W.Models;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace App45W.ViewModels
{
    public class PedidosAsignadosViewModel : BaseViewModel
    {
        public ObservableCollection<PedidoPreparacion> PedidosPreparacionesAsignados { get; set; }
        public Command LoadPedidosAsignadosCommand { get; }

        public PedidosAsignadosViewModel()
        {
            PedidosPreparacionesAsignados = new ObservableCollection<PedidoPreparacion>();
            LoadPedidosAsignadosCommand = new Command(async () => await ExecuteLoadPedidosAsignadosCommand());
            LoadPedidosAsignadosCommand.Execute(null);
        }

        async Task ExecuteLoadPedidosAsignadosCommand()
        {
            if (IsBusy)
                return;

            IsBusy = true;

            try
            {
                PedidosPreparacionesAsignados.Clear();

                var pedidosPreparacionesAsignados = await PedidoPreparacionStore.GetPedidosPreparacionesAsignadosAsync(true);
                foreach (var pp in pedidosPreparacionesAsignados)
                {
                   PedidosPreparacionesAsignados.Add(pp);                   
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
