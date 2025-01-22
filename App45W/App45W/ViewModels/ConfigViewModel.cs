using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using Xamarin.Forms;
using App45W.Services;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using System.Threading.Tasks;
using App45W.Views;
using App45W.Entities;

namespace App45W.ViewModels
{
	public class ConfigViewModel : INotifyPropertyChanged
    {
        public string NombreServidorDB { get => ConfigApp.NombreServidorDB; set => ConfigApp.NombreServidorDB = value; }
        public string NombreDB { get => ConfigApp.NombreDB; set => ConfigApp.NombreDB = value; }
        public string UsuarioDB { get => ConfigApp.UsuarioDB; set => ConfigApp.UsuarioDB = value; }
        public string PassWordDB { get => ConfigApp.PassWordDB; set => ConfigApp.PassWordDB = value; }
        public string IdTerminal { get => ConfigApp.IdTerminal; set => ConfigApp.IdTerminal = value; }
        public string IdAcopiador { get => ConfigApp.IdAcopiador; set => ConfigApp.IdAcopiador = value; }
        public string NombreAcopiador { get => ConfigApp.NombreAcopiador; set => ConfigApp.NombreAcopiador = value; }
        public string NombreOperadorLogueado { get => ConfigApp.NombreOperadorLogueado; set => ConfigApp.NombreOperadorLogueado = value; }
        public string TipoOperadorLogueado { get => ConfigApp.TipoOperadorLogueado; set => ConfigApp.TipoOperadorLogueado = value; }
        public int IdOperadorLogueado { get => ConfigApp.IdOperadorLogueado; set => ConfigApp.IdOperadorLogueado = value; }

        public bool InicioModoConfig { get => ConfigApp.InicioModoConfig; set => ConfigApp.InicioModoConfig = value; }

        public bool LecturaCodigoDeBarrasHabilitado { get => ConfigApp.LecturaCodigoDeBarrasHabilitado; set => ConfigApp.LecturaCodigoDeBarrasHabilitado = value; }

       
        public Command SetConfigurationCommand { get; }
        public ConfigViewModel()
        {
            SetConfigurationCommand = new Command(() => ExecuteSetConfigurationCommand());

        }

        void ExecuteSetConfigurationCommand()
        {
            Xamarin.Forms.Application.Current.MainPage = new LoginPage();
        }

        protected bool SetProperty<T>(ref T backingStore, T value,
        [CallerMemberName]string propertyName = "",
        Action onChanged = null)
        {
            if (EqualityComparer<T>.Default.Equals(backingStore, value))
                return false;

            backingStore = value;
            onChanged?.Invoke();
            OnPropertyChanged(propertyName);
            return true;
        }

        #region INotifyPropertyChanged
        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = "")
        {
            var changed = PropertyChanged;
            if (changed == null)
                return;

            changed.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        #endregion

    }
}