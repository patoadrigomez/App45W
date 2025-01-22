using Plugin.Toasts;
using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;

namespace App45W.Services
{
    public class AlertServices
    {
        public static void Show(String title, String description)
        {
            Device.BeginInvokeOnMainThread(async () =>
            {
                var notifier = DependencyService.Get<IToastNotificator>();               
                var result =  App.Current.MainPage.DisplayAlert("App45W - " + title, description, "OK");
            });
        }

        public static bool Confirm(String title, String description)
        {
            bool result = false;
            Device.BeginInvokeOnMainThread(async () =>
            {
                var notifier = DependencyService.Get<IToastNotificator>();
                result = await App.Current.MainPage.DisplayAlert("App45W - " + title, description, "SI", "NO");
            });
            return result;
        }
    }
}
