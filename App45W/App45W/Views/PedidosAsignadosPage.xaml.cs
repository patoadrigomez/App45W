using App45W.Entities;
using App45W.Models;
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
    public partial class PedidosAsignadosPage : ContentPage
    {
        PedidosAsignadosViewModel _viewModel;
        public PedidosAsignadosPage()
        {
            InitializeComponent();
            BindingContext = _viewModel = new PedidosAsignadosViewModel();
        }

        private void OnItemSelected(object sender, SelectedItemChangedEventArgs args)
        {
            var pedidoPreparacion = args.SelectedItem as PedidoPreparacion;
            var index = args.SelectedItemIndex;
          
            if (index != 0 && index != -1)
            {
                DisplayAlert("App45W - Atención!", "Solo puede ingresar a los pedidos de la primera prepraración de la lista", "OK");
                return;
            }
            if (pedidoPreparacion == null)
                return;
            List<PedidoAsignado> pedidos, preparacionesPedidosSinExportar  = new List<PedidoAsignado>();
            List<PedidoPreparacion> preparacionesPedidosAsignadosAlColector, preparacionesPedidosSinStock,
                preparacionesGestinadasCompletas = new List<PedidoPreparacion>();
            pedidos = DbLocal.GetArticulosARecolectar(pedidoPreparacion.PreparacionTipo, pedidoPreparacion.PreparacionSucursal, pedidoPreparacion.PreparacionNumero, pedidoPreparacion.PedidoTipo, pedidoPreparacion.PedidoSucursal, pedidoPreparacion.PedidoNumero);
            preparacionesPedidosSinExportar = DbLocal.GetPedidosAsignados();
            preparacionesPedidosSinStock = DbLocal.GetPedidosPrepracionesSinStock();
            preparacionesGestinadasCompletas = DbLocal.GetPedidosPrepracionesGestionadosComppletos();
            preparacionesPedidosAsignadosAlColector = DbLocal.GetPedidosPrepracionesAsignadosTodos();
            if (preparacionesPedidosSinExportar.Any(x => x.PreparacionTipo != pedidoPreparacion.PreparacionTipo || x.PreparacionSucursal != pedidoPreparacion.PreparacionSucursal || x.PreparacionNumero != pedidoPreparacion.PreparacionNumero ||
            x.PedidoTipo != pedidoPreparacion.PedidoTipo || x.PedidoSucursal != pedidoPreparacion.PedidoSucursal || x.PedidoNumero != pedidoPreparacion.PedidoNumero && x.Gestionado == 1 && !x.RegistroNoExportado))
            { 
                if(preparacionesGestinadasCompletas.Count > 0)
                {
                    //Hay al menos un pedido-preparación que se ha completado en su totalidad
                    if(preparacionesPedidosSinStock.Count == 0)
                    {
                        //De los pedidos-preparación que se completaron, ninguno fue con falta total de stock
                        DisplayAlert("App45W - Atención", "Quedan novedades pendientes de exportar de otro pedido preparación", "OK");
                        return;
                    }                 
                }         
            }
            var pedido = pedidos[0];

            lvw_PedidosAsignados.SelectedItem = null;
            App.Navigate.PushAsync(new PreparacionesAsignadasPage(pedido));
        }
    }
}