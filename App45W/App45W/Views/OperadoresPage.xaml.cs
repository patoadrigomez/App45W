using App45W.Entities;
using App45W.Services;
using App45W.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App45W.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class OperadoresPage : ContentPage
    {
        OperadoresViewModel _viewModel;
        public OperadoresPage()
        {
            InitializeComponent();
            BindingContext = _viewModel = new OperadoresViewModel();
        }

        private void OnItemSelected(object sender, SelectedItemChangedEventArgs args)
        {
            var operador = args.SelectedItem as Operador;
            if (operador == null)
                return;
            //PopUpMessage.Show("Operador Seleccionada", "ID: " + operador.Id.ToString() + " Nombre : " + operador.Nombre);
            App.Navigate.PushAsync(new OperadoresDetaliPage(operador.Id));
        }

        //protected override void OnAppearing()
        //{
        //    base.OnAppearing();
        //    _viewModel.OnAppearing();
        //}
    }
}