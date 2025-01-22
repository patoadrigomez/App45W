using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;

namespace App45W.Entities
{
    public class Acopiador : INotifyPropertyChanged
    {
        int m_id;
        string m_nombre;
        string m_idTipo;

        [PrimaryKey, NotNull]

        public int Id
        {
            get { return m_id; }
            set { m_id = value; OnPropertyChanged(nameof(Id)); }
        }

        [NotNull]

        public string Nombre
        {
            get { return m_nombre; }
            set { m_nombre = value; OnPropertyChanged(nameof(Nombre)); }
        }

        public string IdTipo
        {
            get { return m_idTipo; }
            set { m_idTipo = value; OnPropertyChanged(nameof(IdTipo)); }
        }

        public Acopiador()
        {

        }

        public event PropertyChangedEventHandler PropertyChanged;

        private void OnPropertyChanged(string propertyName)
        {
            this.PropertyChanged?.Invoke(this,
              new PropertyChangedEventArgs(propertyName));
        }
    }
}
   
