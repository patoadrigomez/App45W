using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Text;
using System.Runtime.CompilerServices;


namespace App45W.Entities
{
    public class Acumulados : INotifyPropertyChanged
    {
        int m_totalUnidades = 0;

        public int TotalUnidades
        {
            get { return m_totalUnidades; }
            set { SetProperty(ref m_totalUnidades, value); }
        }
        public Acumulados()
        {
        }

        public Acumulados(int _totalUnidades)
        {
            TotalUnidades = _totalUnidades;
        }
        public Acumulados(Acumulados cpy)
        {
            TotalUnidades = cpy.TotalUnidades;
        }
        public void Copy(Acumulados des)
        {
            des.TotalUnidades = TotalUnidades;
        }
        protected bool SetProperty<T>(ref T backingStore, T value, [CallerMemberName]string propertyName = "", Action onChanged = null)
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
