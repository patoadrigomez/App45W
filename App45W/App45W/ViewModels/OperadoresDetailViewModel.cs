using App45W.Entities;
using App45W.Services;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace App45W.ViewModels
{
    [QueryProperty(nameof(OperadorId), nameof(OperadorId))]
    public class OperadoresDetailViewModel : BaseViewModel
    {
        private int operadorId;
        private string nombre;
        private string password;
        private string tipo;

        public OperadoresDetailViewModel()
        {
           
        }
        public int Id { get; set; }

        public string Nombre
        {
            get => nombre;
            set => SetProperty(ref nombre, value);
        }

        public string Password
        {
            get => password;
            set => SetProperty(ref password, value);
        }

        public string Tipo
        {
            get => tipo;
            set => SetProperty(ref tipo, value);
        }

        public int OperadorId
        {
            get
            {
                return operadorId;
            }
            set
            {
                operadorId = value;
                LoadOperador(value);
            }
        }

       
        public async void LoadOperador(int operadorId)
        {
            try
            {
                Operador operador = new Operador();
                operador = await OperadorStore.GetOperadorAsync(operadorId);
                //operador = await DbLocal.GetOperadorAsync(operadorId);
                Id = operador.Id;
                Nombre = operador.Nombre;
                Password = operador.Password;
                Tipo = operador.Tipo;

            } catch(Exception e)
            {
                PopUpMessage.Show("Error Operador", e.Message);
            }
        }
    }
}
