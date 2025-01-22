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
    public class EventosViewModel : BaseViewModel
    {
        public ObservableCollection<Evento> Eventos { get; set; }
        public Command LoadEventosCommand { get; }

        public EventosViewModel() 
        {
            Title = "Eventos";
            Eventos = new ObservableCollection<Evento>();
            LoadEventosCommand = new Command(async () => await ExecuteLoadEventosCommand());
            LoadEventosCommand.Execute(null);
        }

        async Task ExecuteLoadEventosCommand()
        {
            if (IsBusy)
                return;

            IsBusy = true;

            try
            {
                Eventos.Clear();

                var eventos = await EventosStore.GetEventosAsync(true);
                foreach (var ev in eventos)
                {
                    Eventos.Add(ev);
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
