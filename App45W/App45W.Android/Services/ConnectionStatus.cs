using Android.App;
using Android.Content;
using Android.Net;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using App45W.Interface;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

[assembly: Xamarin.Forms.Dependency(typeof(App45W.Droid.Services.ConnectionStatus))]

namespace App45W.Droid.Services
{
    public class ConnectionStatus : IConnectionStatus
    {
        private ConnectivityManager cm = (ConnectivityManager)Application.Context.GetSystemService(Context.ConnectivityService);

        public ConnectionStatus() { }

        public ConnectionType connectionType
        {
            get
            {
                NetworkInfo wifiInfo = cm.ActiveNetworkInfo;
                if (wifiInfo != null)
                {
                    if (wifiInfo.Type == ConnectivityType.Wifi)
                        return ConnectionType.Wifi;
                    if (wifiInfo.Type == ConnectivityType.Mobile)
                        return ConnectionType.Mobile;
                }
                return ConnectionType.nothing;
            }
        }

        public bool isConnected
        {
            get
            {
                NetworkInfo activeConnection = cm.ActiveNetworkInfo;
                return (activeConnection != null) && activeConnection.IsConnected;
            }
        }
    }
}