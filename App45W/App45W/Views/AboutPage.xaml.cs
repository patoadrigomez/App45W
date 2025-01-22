using App45W.ViewModels;
using System;
using System.ComponentModel;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App45W.Views
{
    public partial class AboutPage : ContentPage
    {
        AboutViewModel _viewModel;
        public AboutPage()
        {
            InitializeComponent();
            BindingContext = _viewModel = new AboutViewModel();
        }

        private async void btn_ExportarNovedades_Clicked(object sender, EventArgs e)
        {
            if(await DisplayAlert("App45W- Exportación de Novedades", "Está a punto de exportar las colectas realizadas a la base de datos remota. ¿Desea continuar?", "SI", "NO"))
            {
                _viewModel.ExportarDatosCommand.Execute(null);
            }
        }
    }
}