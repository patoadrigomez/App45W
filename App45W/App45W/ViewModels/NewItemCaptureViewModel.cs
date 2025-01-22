using App45W.Entities;
using System;
using System.Collections.Generic;
using System.Text;
using System.Windows.Input;
using Xamarin.Forms;

namespace App45W.ViewModels
{
    public class NewItemCaptureViewModel : BaseCaptureViewModel
    {
        private string id;
        private string dateTimeCapture;

        public NewItemCaptureViewModel()
        {
            SaveCommand = new Command(OnSave, ValidateSave);
            CancelCommand = new Command(OnCancel);
            this.PropertyChanged +=
                (_, __) => SaveCommand.ChangeCanExecute();
        }

        private bool ValidateSave()
        {
            return !String.IsNullOrWhiteSpace(id)
                && !String.IsNullOrWhiteSpace(dateTimeCapture);
        }

        public string Id
        {
            get => id;
            set => SetProperty(ref id, value);
        }

        public string DateTimeCapture
        {
            get => dateTimeCapture;
            set => SetProperty(ref dateTimeCapture, value);
        }

        public Command SaveCommand { get; }
        public Command CancelCommand { get; }

        private async void OnCancel()
        {
            // This will pop the current page off the navigation stack
            await Shell.Current.GoToAsync("..");
        }

        private async void OnSave()
        {
            Capture newItem = new Capture()
            {
                IdPieza = Guid.NewGuid().ToString(),
                FechaHoraCaptura = DateTime.Now
            };

            await DataStore.AddItemAsync(newItem);

            // This will pop the current page off the navigation stack
            await Shell.Current.GoToAsync("..");
        }
    }
}
