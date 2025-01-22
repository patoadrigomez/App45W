using App45W.Entities;
using Plugin.Settings;
using Plugin.Settings.Abstractions;
using System;
using System.Collections.Generic;
using System.Text;


namespace App45W.Services
{
    public static class ConfigApp
    {
        private static ISettings AppSettings
        {
            get { return CrossSettings.Current; }
        }
        
        public static string NombreServidorDB
        {
            get => AppSettings.GetValueOrDefault(nameof(NombreServidorDB), "192.168.0.47");
            set => AppSettings.AddOrUpdateValue(nameof(NombreServidorDB), value);
        }
        public static string NombreDB
        {
            get => AppSettings.GetValueOrDefault(nameof(NombreDB), "basebalanzamcrv30");
            set => AppSettings.AddOrUpdateValue(nameof(NombreDB), value);
        }
        public static string UsuarioDB
        {
            get => AppSettings.GetValueOrDefault(nameof(UsuarioDB), "root");
            set => AppSettings.AddOrUpdateValue(nameof(UsuarioDB), value);
        }
        public static string PassWordDB
        {
            get => AppSettings.GetValueOrDefault(nameof(PassWordDB), "286991imcR");
            set => AppSettings.AddOrUpdateValue(nameof(PassWordDB), value);
        }

        public static string IdTerminal
        {
            get => AppSettings.GetValueOrDefault(nameof(IdTerminal), "1");
            set => AppSettings.AddOrUpdateValue(nameof(IdTerminal), value);
        }

        public static string IdAcopiador
        {
            get => AppSettings.GetValueOrDefault(nameof(IdAcopiador), "1");
            set => AppSettings.AddOrUpdateValue(nameof(IdAcopiador), value);
        }

        public static string NombreAcopiador
        {
            get => AppSettings.GetValueOrDefault(nameof(NombreAcopiador), "1");
            set => AppSettings.AddOrUpdateValue(nameof(NombreAcopiador), value);
        }

        public static int IdOperadorLogueado
        {
            get => AppSettings.GetValueOrDefault(nameof(IdOperadorLogueado), 0);
            set => AppSettings.AddOrUpdateValue(nameof(IdOperadorLogueado), value);
        }

        public static string NombreOperadorLogueado
        {
            get => AppSettings.GetValueOrDefault(nameof(NombreOperadorLogueado), "");
            set => AppSettings.AddOrUpdateValue(nameof(NombreOperadorLogueado), value);
        }

        public static string TipoOperadorLogueado
        {
            get => AppSettings.GetValueOrDefault(nameof(TipoOperadorLogueado), "");
            set => AppSettings.AddOrUpdateValue(nameof(TipoOperadorLogueado), value);
        }

        /*La siguiente propiedad  indica que, si està en true, la aplicación se inició sin conexión
        a la Base de datos remota y abrió directamente el módulo de configuración. Su valor por defecto
        es false*/
        public static bool InicioModoConfig
        {
            get => AppSettings.GetValueOrDefault(nameof(InicioModoConfig), false);
            set => AppSettings.AddOrUpdateValue(nameof(InicioModoConfig), value);
        }

        public static bool LecturaCodigoDeBarrasHabilitado
        {
            get => AppSettings.GetValueOrDefault(nameof(LecturaCodigoDeBarrasHabilitado), true);
            set => AppSettings.AddOrUpdateValue(nameof(LecturaCodigoDeBarrasHabilitado), value);
        }
    }


}
