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
    public partial class AcercaDePage : ContentPage
    {
        AcercaDeViewModel _viewModel;
        public AcercaDePage()
        {
            InitializeComponent();
            BindingContext = _viewModel = new AcercaDeViewModel();
        }
    }
}