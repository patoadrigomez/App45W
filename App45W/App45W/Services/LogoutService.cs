using System;
using System.Collections.Generic;
using System.Text;

namespace App45W.Services
{
    public class LogoutService
    {
        public static void Logout()
        {
            ConfigApp.IdOperadorLogueado = 0;
            ConfigApp.NombreOperadorLogueado = "";
            ConfigApp.TipoOperadorLogueado = "";
        }
    }
}
