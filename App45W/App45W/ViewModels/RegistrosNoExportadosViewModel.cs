using App45W.Entities;
using App45W.Services;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Diagnostics;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace App45W.ViewModels
{
    public class RegistrosNoExportadosViewModel : BaseViewModel
    {
        private bool botonActivo = false;
        public Command GetRegistrosNoExportadosCommand { get; }

        public ObservableCollection<PedidoAsignado> RegistrosNoExportados { get; set; }

        public RegistrosNoExportadosViewModel()
        {
            RegistrosNoExportados = new ObservableCollection<PedidoAsignado>();
            GetRegistrosNoExportadosCommand = new Command(async () => await ExecuteGetRegistrosNoExportadosCommand());
            GetRegistrosNoExportadosCommand.Execute(null);
        }

        public bool BotonActivo
        {
            get => botonActivo;
            set => SetProperty(ref botonActivo, value);
        }

        async Task ExecuteGetRegistrosNoExportadosCommand()
        {
            if (IsBusy)
                return;

            IsBusy = true;

            try
            {
                RegistrosNoExportados.Clear();
                var pedidosAsignados = await DbLocal.GetPedidosAsignadosAsync();
                List<PedidoAsignado> registrosNoExportados = new List<PedidoAsignado>();
                registrosNoExportados = pedidosAsignados.FindAll(x => x.RegistroNoExportado);
                if (registrosNoExportados.Count > 0) BotonActivo = true;
                foreach (var rne in registrosNoExportados)
                {
                    RegistrosNoExportados.Add(rne);
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
