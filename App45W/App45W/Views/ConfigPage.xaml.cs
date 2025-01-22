using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using App45W.Services;
using App45W.ViewModels;

namespace App45W.Views
{
	[XamlCompilation(XamlCompilationOptions.Compile)]
	public partial class ConfigPage : ContentPage
	{
		ConfigViewModel _viewModel;
        public ConfigPage ()
		{
			InitializeComponent ();
			BindingContext = _viewModel = new ConfigViewModel();
		}
    }
}