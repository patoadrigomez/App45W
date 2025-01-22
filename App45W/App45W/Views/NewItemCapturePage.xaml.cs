using App45W.Entities;
using App45W.ViewModels;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App45W.Views
{
    public partial class NewItemCapturePage : ContentPage
    {
        public Capture Item { get; set; }

        public NewItemCapturePage()
        {
            InitializeComponent();
            BindingContext = new NewItemViewModel();
        }
    }
}