using App45W.Entities;
using App45W.Interface;
using App45W.Services;
using App45W.Views;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using static System.Net.Mime.MediaTypeNames;

namespace App45W.ViewModels
{
    public class LoginViewModel : BaseViewModel
    {
        public Command LoginCommand { get; }

        public Command ConnectBDRemota { get; }
        private string usuario;
        private string password;
 

        public LoginViewModel()
        {
            LoginCommand = new Command(OnLoginClicked);
            ConnectBDRemota = new Command(async () => await ExecuteConnectBDRemota());
            ConnectBDRemota.Execute(null);
        }

        public string Usuario
        {
            get => usuario;
            set => SetProperty(ref usuario, value);
        }

        public string Password
        {
            get => password;
            set => SetProperty(ref password, value);
        }

        async Task ExecuteConnectBDRemota()
        {
            if(ConfigApp.InicioModoConfig)
            {
                PopUpMessage.Show("Conexión Base de Datos MySql", DbMySql.DbMySql.Connect() ? "OK" : "Error");
                ConfigApp.InicioModoConfig = false;
            }                
            if(DbMySql.DbMySql.isConnected())
                await LoadDataDBRemot();
        }

        private async void OnLoginClicked()
        {
            List<Operador> operadores = new List<Operador>();
            operadores = await DbLocal.GetOperadoresAsync();
            Operador operadorLogueado = new Operador();
            operadorLogueado = operadores.Find(o => o.Nombre == Usuario && o.Password == Password);
           if (operadorLogueado != null)
            {
                ConfigApp.NombreOperadorLogueado = operadorLogueado.Nombre;
                ConfigApp.TipoOperadorLogueado = operadorLogueado.Tipo;
                ConfigApp.IdOperadorLogueado = operadorLogueado.Id;
                Xamarin.Forms.Application.Current.MainPage = new MainPage();
            } else
            {              
                AlertServices.Show("Error", "El usuario o la contraseña son incorrectos");
            }
        }

        private async Task<bool> LoadDataDBRemot()
        {
            List<Acopiador> acopiadores = new List<Acopiador>();
            Acopiador NombreAcopiadorConfigurado = new Acopiador();
            bool loadOk = false;
            /*  
            Importa la tabla de destinos remota a la tabla local.
            */
            DbLocal.ClearTable<Operador>();
            DbLocal.ClearTable<Acopiador>();
            DbLocal.ClearTable<Capture>();
            try
            {
                loadOk = true;
                PopUpMessage.Show("Descarga Exitosa de la Tabla de Operadores", DbLocal.LoadTable<Operador>(await DbMySql.DbMySql.GetOperadoresAsync()) ? "Operadores OK" : "Error");
                PopUpMessage.Show("Descarga Exitosa de la Tabla de Colectores", DbLocal.LoadTable<Acopiador>(await DbMySql.DbMySql.GetAcopiadoresAsync()) ? "Colectores OK" : "Error");          
            } catch (Exception ex)
            {
                throw ex;
            }
            acopiadores = await DbLocal.GetAcopiadoresAsync();
            ConfigApp.NombreAcopiador = acopiadores.FirstOrDefault(x => x.Id == Convert.ToInt32(ConfigApp.IdAcopiador)).Nombre;

            return loadOk;
        }
    }
}
