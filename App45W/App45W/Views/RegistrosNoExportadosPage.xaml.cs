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
    public partial class RegistrosNoExportadosPage : ContentPage
    {
        RegistrosNoExportadosViewModel _viewModel;
        public RegistrosNoExportadosPage()
        {
            InitializeComponent();
            BindingContext = _viewModel = new RegistrosNoExportadosViewModel();
        }

        private async void btn_DeleteRegistros_Clicked(object sender, EventArgs e)
        {
            if (await DisplayAlert("App45W - Atención", "¿Desea eliminar todos los registros?", "SI", "NO"))
            {
                DbLocal.ClearTable<PedidoAsignado>();
                lvw_registrosNoExportados.ItemsSource = null;
                btn_DeleteRegistros.IsEnabled = false;
                Xamarin.Forms.Application.Current.MainPage = new MainPage();
            }            
        }
    }
}