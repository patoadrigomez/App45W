using App45W.Entities;
using App45W.Interface;
using App45W.Models;
using App45W.Services;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Runtime.CompilerServices;
using Xamarin.Forms;

namespace App45W.ViewModels
{
    public class BaseViewModel : INotifyPropertyChanged
    {
        public IDataStore<Item> DataStore => DependencyService.Get<IDataStore<Item>>();
        public IOperadorStore<Operador> OperadorStore => DependencyService.Get<IOperadorStore<Operador>>();
        public IColectorStore<Acopiador> ColectorStore => DependencyService.Get<IColectorStore<Acopiador>>();
        public IEventosStore<Evento> EventosStore => DependencyService.Get<IEventosStore<Evento>>();

        public IPedidoAsignadoStore<PedidoAsignado> PedidoAsignadoStore => DependencyService.Get<IPedidoAsignadoStore<PedidoAsignado>>();
        public IPedidoPreparacionStore<PedidoPreparacion> PedidoPreparacionStore => DependencyService.Get<IPedidoPreparacionStore<PedidoPreparacion>>();

        bool isBusy = false;
        public bool IsBusy
        {
            get { return isBusy; }
            set { SetProperty(ref isBusy, value); }
        }

        string title = string.Empty;
        public string Title
        {
            get { return title; }
            set { SetProperty(ref title, value); }
        }

        protected bool SetProperty<T>(ref T backingStore, T value,
            [CallerMemberName] string propertyName = "",
            Action onChanged = null)
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
