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
    public partial class OperadoresDetaliPage : ContentPage
    {
        OperadoresDetailViewModel _viewModel;
        public OperadoresDetaliPage(int operadorId)
        {
            InitializeComponent();
            BindingContext = _viewModel = new OperadoresDetailViewModel();
            _viewModel.OperadorId = operadorId;
        }
    }
}