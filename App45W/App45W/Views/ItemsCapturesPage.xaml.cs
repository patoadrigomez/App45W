using App45W.Entities;
using App45W.ViewModels;
using App45W.Views;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App45W.Views
{
    public partial class ItemsCapturesPage : ContentPage
    {
        ItemsCapturesViewModel _viewModel;

        public ItemsCapturesPage()
        {
            InitializeComponent();

            BindingContext = _viewModel = new ItemsCapturesViewModel();
        }

        protected override void OnAppearing()
        {
            base.OnAppearing();
            _viewModel.OnAppearing();
        }
    }
}