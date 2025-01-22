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
    [QueryProperty(nameof(ItemId), nameof(ItemId))]
 
    public class OperadoresViewModel : BaseViewModel
    {
        public ObservableCollection<Operador> Operadores { get; set; }
        public Command LoadOperadoresCommand { get; }

        private int itemId;
       
        public OperadoresViewModel() 
        {
            Title = "Operadores";
            Operadores = new ObservableCollection<Operador>();
            LoadOperadoresCommand = new Command(async () => await ExecuteLoadOperadoresCommand());
            LoadOperadoresCommand.Execute(null);
        }

        async Task ExecuteLoadOperadoresCommand()
        {
            if (IsBusy)
                return;

            IsBusy = true;

            try
            {
                Operadores.Clear();

                var operadores = await OperadorStore.GetOperadoresAsync(true);
                //var operadores = await DbLocal.GetOperadoresAsync();
                foreach (var op in operadores)
                {
                    Operadores.Add(op);
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

        public int ItemId
        {
            get
            {
                return itemId;
            }
            set
            {
                itemId = value;
                //LoadItemId(value);
            }
        }

        //public void OnAppearing()
        //{
        //    IsBusy = true;
        //    SelectedItem = null;
        //}
    }
}
