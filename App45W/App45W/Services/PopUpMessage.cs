using System;
using System.Collections.Generic;
using System.Text;
using Xamarin.Forms;
using Plugin.Toasts;

namespace App45W.Services
{
    public static class PopUpMessage
    {
        public static void Show(String title, String description)
        {
            Device.BeginInvokeOnMainThread(async () =>
            {
                var notifier = DependencyService.Get<IToastNotificator>();
                var options = new NotificationOptions()
                {
                    Title = title,
                    Description = description
                };
                var result = await notifier.Notify(options);
            });
        }
    }
}
