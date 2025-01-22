using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Input;

namespace App45W.ViewModels
{
    public class AcercaDeViewModel : BaseViewModel
    {
        public AcercaDeViewModel()
        {
            AppName = System.Reflection.Assembly.GetExecutingAssembly().GetName().Name;
            AppVersion = System.Reflection.Assembly.GetExecutingAssembly().GetName().Version.ToString();
        }

        public ICommand OpenWebCommand { get; }
        public string AppVersion { get; }
        public string AppName { get; }
    } 
}
