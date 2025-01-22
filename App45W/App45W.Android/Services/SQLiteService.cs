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
using App45W.Services;
using SQLite;
using System.IO;

[assembly: Dependency(typeof(ExpCaptureINV.Droid.Services.SQLiteService))]

namespace ExpCaptureINV.Droid.Services
{
    class SQLiteService:ISQLite
    {
        public SQLiteService() { }

        public SQLiteConnection GetConnection()
        {
            var filename = "APP45WDB.db3";
            var documentspath = System.Environment.GetFolderPath(System.Environment.SpecialFolder.Personal);
            var path = Path.Combine(documentspath, filename);
            var connection = new SQLiteConnection(path);
          return connection;
        }
    }
}