using App45W.Entities;
using App45W.Models;
using App45W.Services;
using App45W.ViewModels;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App45W.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ColectasRealizadasPage : ContentPage
    {
        ColectasRealizadasViewModel _viewModel;
        public ColectasRealizadasPage()
        {
            InitializeComponent();
            BindingContext = _viewModel = new ColectasRealizadasViewModel();           
        }

        private async void lvw_colectasRealizadas_ItemSelected(object sender, SelectedItemChangedEventArgs e)
        {
            if (await DisplayAlert("App45W - Atención!!", "¿Está seguro de eliminar la colecta?", "SI", "NO"))
            {
                Colecta colectaAEliminar = (Colecta)e.SelectedItem;
                 
                if (DbLocal.DeleteColecta(colectaAEliminar.Registro))
                {
                    //Si la colecta a eliminar generó un evento, éste debe eliminarse de la tabla local para que no sea exportado. 
                    List<Evento> eventos = new List<Evento>();
                    eventos = await DbLocal.GetEventosAsync();
                    if (eventos.Any(x => x.Registro == colectaAEliminar.Registro))
                    {
                        DbLocal.DeleteEvento(colectaAEliminar.Registro);
                    }
                    List<PedidoAsignado> pedidoAsignados = new List<PedidoAsignado>();                  
                    PedidoAsignado pedidoAsignado = new PedidoAsignado();              
                    pedidoAsignados = await DbLocal.GetPedidosAsignadosAsync();
                    pedidoAsignado = pedidoAsignados.Where(x => x.Registro == colectaAEliminar.Registro).FirstOrDefault();
                    /*Se recorren todos los artículos del pedido-preparación al cual pertenece la colecta que se 
                     * está eliminando, para setear en false las propiedades: PedidoPreparacionGestionadoCompleto y PedidoPreparacionSinStockde la tabla PedidoAsignado,
                      ColectaPertenecienteAUnPedidoSinNadaDeStock de la tabla Colecta*/
                    bool gestionadoCompleto = false;
                    bool sinStock = false;
                    foreach (var pp in pedidoAsignados)
                    {
                        if(pp.PreparacionTipo == pedidoAsignado.PreparacionTipo && pp.PreparacionSucursal == pedidoAsignado.PreparacionSucursal && pp.PreparacionNumero == pedidoAsignado.PreparacionNumero
                            && pp.PedidoTipo == pedidoAsignado.PedidoTipo && pp.PedidoSucursal == pedidoAsignado.PedidoSucursal && pp.PedidoNumero == pedidoAsignado.PedidoNumero)
                        {
                            DbLocal.SetPedidoPreparacionGestionadoCompleto(pp.Registro, gestionadoCompleto);
                            DbLocal.SetPedidoPreparacionSinStock(pp.Registro, sinStock);
                            DbLocal.SetColectaEnPedidoSinNadaDeStock(pp.Registro, sinStock);
                        }
                    }
                    int estadoArticuloAsignado = (int)TYPE_ESTADO_ARTICULO_ASIGNADO.En_Proceso;
                    if (!DbLocal.UpdatePedidoAsignado(colectaAEliminar.Registro, colectaAEliminar.CantidadColectada, 0, estadoArticuloAsignado, 0))
                        AlertServices.Show("Error", "No fue posible eliminar la colecta");
                  
                    lvw_colectasRealizadas.ItemsSource = await DbLocal.GetColectasAsync();
                    
                    if(DbLocal.GetColectas().Count == 0)
                        Xamarin.Forms.Application.Current.MainPage = new MainPage();
                } else
                {
                    AlertServices.Show("Error", "No fue posible eliminar la colecta");
                }
            }     
        }

        private async void btn_deleteColectas_Clicked(object sender, EventArgs e)
        {
            if (await DisplayAlert("App45W - Atención", "¿Desea eliminar todas las colectas realizadas?", "SI", "NO"))
            {
                List<Colecta> colectas = new List<Colecta>();
                List<Evento> eventos = new List<Evento>();
                eventos = await DbLocal.GetEventosAsync();
                colectas = DbLocal.GetColectas();
                foreach(var c in colectas)
                {
                    if (eventos.Any(x => x.Registro == c.Registro))
                    {
                        DbLocal.DeleteEvento(c.Registro);
                    }
                    List<PedidoAsignado> pedidoAsignados = new List<PedidoAsignado>();
                    PedidoAsignado pedidoAsignado = new PedidoAsignado();
                    pedidoAsignados = await DbLocal.GetPedidosAsignadosAsync();
                    int estadoArticuloAsignado = (int)TYPE_ESTADO_ARTICULO_ASIGNADO.En_Proceso;
                    bool gestionadoCompleto = false;
                    bool sinStock = false;
                    if (!DbLocal.UpdatePedidoAsignado(c.Registro, c.CantidadColectada, 0, estadoArticuloAsignado, 0))
                        AlertServices.Show("Error", "No fue posible eliminar la colecta");
                    DbLocal.SetPedidoPreparacionGestionadoCompleto(c.Registro, gestionadoCompleto);
                    DbLocal.SetPedidoPreparacionSinStock(c.Registro, sinStock);
                    DbLocal.SetColectaEnPedidoSinNadaDeStock(c.Registro, sinStock);
                    pedidoAsignado = pedidoAsignados.Where(x => x.Registro == c.Registro).FirstOrDefault();
                }
                lvw_colectasRealizadas.ItemsSource = null;
                btn_deleteColectas.IsEnabled = false;
                DbLocal.ClearTable<Colecta>();
                Xamarin.Forms.Application.Current.MainPage = new MainPage();
            }
        }
    }
}