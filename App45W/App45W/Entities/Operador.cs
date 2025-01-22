using SQLite;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;

namespace App45W.Entities
{
    public class Operador : INotifyPropertyChanged
    {
        int m_id;
        string m_nombre;
        string m_password;
        string m_tipo;

        [PrimaryKey, NotNull]
        public int Id
        {
            get
            {
                return m_id;
            }
            set
            {
                m_id = value;
                OnPropertyChanged(nameof(Id));
            }
        }

        [NotNull]
        public string Nombre
        {
            get { return m_nombre; }
            set { m_nombre = value; OnPropertyChanged(nameof(Nombre)); }
        }

        [NotNull]
        public string Password
        {
            get { return m_password; }
            set { m_password = value; OnPropertyChanged(nameof(Password)); }
        }

        [NotNull]
        public string Tipo
        {
            get { return m_tipo; }
            set { m_tipo = value; OnPropertyChanged(nameof(Tipo)); }
        }

        public Operador()
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
