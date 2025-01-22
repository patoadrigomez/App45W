using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using SQLite;
using System.Runtime.CompilerServices;


namespace App45W.Entities
{
    public class Capture: INotifyPropertyChanged
    {
        DateTime m_fechaHoraCaptura;
        string m_idPieza;

        [PrimaryKey,NotNull]
        public string IdPieza
        {
            get { return m_idPieza; }
            set { m_idPieza = value; OnPropertyChanged(nameof(IdPieza)); }
        }
        [NotNull]
        public DateTime FechaHoraCaptura
        {
            get { return m_fechaHoraCaptura; }
            set { m_fechaHoraCaptura = value; OnPropertyChanged(nameof(FechaHoraCaptura)); }
        }

        public Capture()
        {
        }

        protected bool SetProperty<T>(ref T backingStore, T value,[CallerMemberName]string propertyName = "",Action onChanged = null)
        {
            if (EqualityComparer<T>.Default.Equals(backingStore, value))
                return false;

            backingStore = value;
            onChanged?.Invoke();
            OnPropertyChanged(propertyName);
            return true;
        }

        #region INotifyPropertyChanged
        public event PropertyChangedEventHandler PropertyChanged;
        protected void OnPropertyChanged([CallerMemberName] string propertyName = "")
        {
            var changed = PropertyChanged;
            if (changed == null)
                return;

            changed.Invoke(this, new PropertyChangedEventArgs(propertyName));
        }
        #endregion

    }
}
