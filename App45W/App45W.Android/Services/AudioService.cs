using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Android.App;
using Android.Content;
using Android.OS;
using Android.Runtime;
using Android.Views;
using Android.Widget;
using Xamarin.Forms;
using Android.Media;
using App45W.Services;
using Android;

[assembly: Dependency(typeof(App45W.Droid.Services.AudioService))]

namespace App45W.Droid.Services
{
    public class AudioService : IAudio
    {
        public AudioService() { }

        private MediaPlayer _mediaPlayer;

        public bool PlayBeep()
        {
            _mediaPlayer = MediaPlayer.Create(global::Android.App.Application.Context, Resource.Raw.beep_corto);
            _mediaPlayer.Start();
            return true;
        }
    }
}