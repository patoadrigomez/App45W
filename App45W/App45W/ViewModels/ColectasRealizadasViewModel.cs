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
    public class ColectasRealizadasViewModel : BaseViewModel
    {
        private bool botonActivo = false;
        public ObservableCollection<Colecta> Colectas { get; set; }

        public Command LoadColectasCommand { get; }
        public ColectasRealizadasViewModel()
        {
            Colectas = new ObservableCollection<Colecta>();
            LoadColectasCommand = new Command(async () => await ExecuteLoadColectasCommand());
            LoadColectasCommand.Execute(null);
        }

        public bool BotonActivo
        {
            get => botonActivo;
            set => SetProperty(ref botonActivo, value);
        }

        async Task ExecuteLoadColectasCommand()
        {
            if (IsBusy)
                return;

            IsBusy = true;
            AlertServices.Show("IMPORTANTE", "Para quitar una colecta realizada, pulse sobre el ítem de la misma");

            try
            {
                Colectas.Clear();
                var colectas = await DbLocal.GetColectasAsync();
                if (colectas.Count > 0) BotonActivo = true;
                foreach (var c in colectas)
                {
                    Colectas.Add(c);
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
