using App45W.Entities;
using App45W.Models;
using App45W.Services;
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
    public partial class MenuPage : ContentPage
    {
        public List<MenuModel> listMenu { get; set; }
        public MenuPage()
        {
            InitializeComponent();
            //Se crea el menú principal.
            listMenu = new List<MenuModel>();
            //Agrego un elemento por cada ítem del menú principal

            listMenu.Add(new MenuModel { nombreIcon = "ic_about.png", nombreItem = "About" });
            listMenu.Add(new MenuModel { nombreIcon = "ic_home.png", nombreItem = "Inicio" });
            listMenu.Add(new MenuModel { nombreIcon = "ic_setting.png", nombreItem = "Configuración" });     
            listMenu.Add(new MenuModel { nombreIcon = "ic_colectasOK.png", nombreItem = "Colectas Realizadas" });
            listMenu.Add(new MenuModel { nombreIcon = "ic_regNoExportados.png", nombreItem = "Registros No Exportados" });
            listMenu.Add(new MenuModel { nombreIcon = "ic_asignaciones.png", nombreItem = "Pedidos-Preparaciones Asignados" });
            listMenu.Add(new MenuModel { nombreIcon = "ic_borrar_asignaciones.png", nombreItem = "Borrar Todas las Asignaciones" });
            listMenu.Add(new MenuModel { nombreIcon = "ic_logout.png", nombreItem = "Logout" });

            BindingContext = this;
        }

       
        private async void lstMenu_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            //item contiene todo el objeto de la opción seleccionada en el menú.
            MenuModel itemSelect = (MenuModel)e.Item;

            switch (itemSelect.nombreItem)
            {
                case "About":
                    await App.Navigate.PushAsync(new AcercaDePage());
                    break;
                case "Incio":
                    Xamarin.Forms.Application.Current.MainPage = new MainPage();
                    break;
                case "Configuración":
                    if (ConfigApp.TipoOperadorLogueado == "S")
                    {
                        await App.Navigate.PushAsync(new ConfigPage());
                    }
                    else
                    {
                        await DisplayAlert("App 45W- Atención!", "No tiene permisos para ingresar a este módulo", "OK");
                    }
                    break;
                case "Colectas Realizadas":
                    await App.Navigate.PushAsync(new ColectasRealizadasPage());
                    break;
                case "Registros No Exportados":
                    await App.Navigate.PushAsync(new RegistrosNoExportadosPage());
                    break;
                case "Pedidos-Preparaciones Asignados":
                    await App.Navigate.PushAsync(new PedidosAsignadosPage());
                    break;
                case "Borrar Todas las Asignaciones":
                    if(await DisplayAlert("App45W - Atención!!", "Está a punto de borrar todas las preparaciones-pedidos asignadas. ¿Desea continuar?", "SI", "NO"))
                    {
                        DbLocal.ClearTable<PedidoAsignado>();
                        DbLocal.ClearTable<Colecta>();
                        await DisplayAlert("App45W", "Las asignaciones fueron eliminadas correctamente", "OK");
                        Xamarin.Forms.Application.Current.MainPage = new MainPage();
                    }
                    break;
                case "Logout":
                    LogoutService.Logout();
                    Xamarin.Forms.Application.Current.MainPage = new LoginPage();
                    break;
            }
            App.MenuUp.IsPresented = false;
        }
    }
}