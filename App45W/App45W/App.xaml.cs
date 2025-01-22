using App45W.Entities;
using App45W.Interface;
using App45W.Services;
using App45W.Views;
using System;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App45W
{
    public partial class App : Application
    {
        public static NavigationPage Navigate { get; internal set; }
        public static MainPage MenuUp { get; internal set; }

        public App()
        {
            InitializeComponent();

            DependencyService.Register<MockDataStore>();
            DependencyService.Register<MockDataCaptureStore>();
            DependencyService.Register<MockOperadorStore>();
            DependencyService.Register<MockColectorStore>();
            DependencyService.Register<MockEventoStore>();
            DependencyService.Register<MockPedidoAsignadoStore>();
            DependencyService.Register<MockPedidoPreparacionStore>();

            if(CheckConnectionWiFi())
            {
                if (DbMySql.DbMySql.Connect())
                {
                    MainPage = new LoginPage();
                    PopUpMessage.Show("Conexión Base de Datos MySql", "OK");
                } else
                {
                    MainPage = new ConfigPage();
                    ConfigApp.InicioModoConfig = true;
                }
            } else
            {                
                MainPage = new LoginPage();
            }
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }

        /// <summary>
        /// Carga en la base de datos local las tablas remotas necesarias
        /// </summary>
        /// <returns></returns>

        private bool CheckConnectionWiFi()
        {
            bool wifiok = false;
            if (DependencyService.Get<IConnectionStatus>().connectionType != ConnectionType.Wifi || !DependencyService.Get<IConnectionStatus>().isConnected)
            {
                AlertServices.Show("Error de COnexión", "Sin conexión Wifi");
            }
            else
                wifiok = true;
            return wifiok;
        }
    }
}
