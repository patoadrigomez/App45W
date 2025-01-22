using App45W.ViewModels;
using System.ComponentModel;
using Xamarin.Forms;

namespace App45W.Views
{
    public partial class ItemDetailPage : ContentPage
    {
        public ItemDetailPage()
        {
            InitializeComponent();
            BindingContext = new ItemDetailViewModel();
        }
    }
}