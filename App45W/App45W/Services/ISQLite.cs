using System;
using System.Collections.Generic;
using System.Text;
using SQLite;


namespace App45W.Services
{
    public interface ISQLite
    {
        SQLiteConnection GetConnection();
    }
}
