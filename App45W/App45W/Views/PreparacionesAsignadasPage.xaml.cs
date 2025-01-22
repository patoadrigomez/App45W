using App45W.Entities;
using App45W.Services;
using App45W.ViewModels;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace App45W.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PreparacionesAsignadasPage : ContentPage
    {
        PreparacionesAsignadasViewModel _viewModel;
     

        public PreparacionesAsignadasPage(PedidoAsignado pedidoAsignado)
        {
            InitializeComponent();
            BindingContext = _viewModel = new PreparacionesAsignadasViewModel();
            _viewModel.PAsignado = pedidoAsignado;
        }

        private async void btn_faltaStock_Clicked(object sender, EventArgs e)
        {
            if (await DisplayAlert("App45W-Atención!!", "Está por cerrar la colecta por falta de stock del artículo. ¿Desea continuar?", "SI", "NO"))
            {
                //Se valida que el usuario haya editado envases o unidades
                if (!ent_cantidad.IsEnabled)
                {
                    if (ent_envases.Text == "")
                    {
                        await DisplayAlert("App45W - Error!!", "No se han editado cantidades de envases a acopiar", "OK");
                        return;
                    }
                }
                else
                {
                    if (ent_cantidad.Text != "" && ent_envases.Text == "")
                    {
                        ent_envases.Text = "0";
                    }
                    else if (ent_cantidad.Text == "" && ent_envases.Text == "")
                    {
                        await DisplayAlert("App45W - Error!!", "No se han editado cantidades de envases y unidades a acopiar", "OK");
                        return;
                    }
                    else if(ent_cantidad.Text == "" && ent_envases.Text != "")
                    {
                        ent_cantidad.Text = "0";
                    }
                }

                decimal unidades = Convert.ToDecimal(ent_cantidad.Text);
                decimal envases =  Convert.ToDecimal(ent_envases.Text);

                int registro = _viewModel.Registro;

                decimal unidadesAPreparar = _viewModel.UnidadesAPreparar;
                decimal unidadesPorEnvase = _viewModel.UnidadesPorEnvase;
                decimal peso = _viewModel.Peso;
                decimal pesoMaximoBolson = _viewModel.PesoMaximoBolson;

                decimal cantidad = envases * unidadesPorEnvase + unidades;

                decimal pesoAcumuladoBolson = DbLocal.GetPesoBolson(registro);

                //Se valida que las cantidades ingresadas no superen a las requeridas.
                if (cantidad > unidadesAPreparar)
                {
                    await DisplayAlert("App45W - Error!!", "La cantidad ingresada supera la requerida", "OK");
                    ent_cantidad.Text = "0";
                    ent_envases.Text = "0";
                    unidades = 0;
                    envases = 0;
                    return;
                } else if(cantidad == unidadesAPreparar)
                {
                    await DisplayAlert("App45W - Error!!", "La cantidad ingresada es igual a la requerida. En ese caso debe utilizar el botón Registrar", "OK");
                    return;
                }

                //Se valida que no se excedan el peso máximo del bolson  
                if ((pesoAcumuladoBolson + cantidad * peso) > pesoMaximoBolson)
                {
                    decimal maxCantidadPermitida = Math.Truncate((pesoMaximoBolson - pesoAcumuladoBolson) / peso);
                    decimal maxEnvasesPermitidos = Math.Truncate((maxCantidadPermitida / unidadesPorEnvase));
                    if (ent_cantidad.IsEnabled)
                    {
                        if (maxCantidadPermitida > 0 && maxEnvasesPermitidos > 0)
                        {
                            if (await DisplayAlert("App45W - Atención!!", "Se alcanzó el peso máximo del bolsón. Se pueden agregar " + maxEnvasesPermitidos + " envases o " + maxCantidadPermitida + " unidades de este artículo. ¿Desea corregir las cantidades ingresadas al bolsón?", "SI", "NO"))
                            {
                                return;
                            }
                            else
                            {
                                _viewModel.RegistrarConFaltaStock.Execute(null);
                            }
                        }
                        else if (maxCantidadPermitida > 0)
                        {
                            if (await DisplayAlert("App45W - Atención!!", "Se alcanzó el peso máximo del bolsón. Se pueden agregar " + maxCantidadPermitida + " unidades de este artículo. ¿Desea corregir las cantidades ingresadas al bolsón?", "SI", "NO"))
                            {
                                return;
                            }
                            else
                            {
                                _viewModel.RegistrarConFaltaStock.Execute(null);
                            }
                        }
                        else
                        {
                            if (await DisplayAlert("App45W - Atención!!", "Se alcanzó el peso máximo del bolsón.No se pueden agregar más unidades de este artículo. Debe ir a la balanza a pesar el bolsón. ¿Desea de todos modos ingresar estas cantidades al bolsón?", "SI", "NO"))
                            {
                                _viewModel.RegistrarConFaltaStock.Execute(null);                         
                            }
                            else
                            {
                                await App.Navigate.PushAsync(new AboutPage());
                                return;
                            } 
                        }
                    }
                    else if (maxEnvasesPermitidos > 0)
                    {
                        if (await DisplayAlert("App45W - Atención!!", "Se alcanzó el peso máximo del bolsón. Se pueden agregar " + maxEnvasesPermitidos + " envases de este artículo. ¿Desea corregir las cantidades ingresadas al bolsón?", "SI", "NO"))
                        {
                            return;
                        }
                        else
                        {
                            _viewModel.RegistrarConFaltaStock.Execute(null);
                        }
                    }
                    else
                    {
                        if (await DisplayAlert("App45W - Atención!!", "Se alcanzó el peso máximo del bolsón.No se pueden agregar más envases de este artículo. Debe ir a la balanza a pesar el bolsón. ¿Desea de todos modos ingresar estas cantidades al bolsón?", "SI", "NO"))
                        {
                            _viewModel.RegistrarConFaltaStock.Execute(null);
                        }
                        else
                        {
                            await App.Navigate.PushAsync(new AboutPage());
                            return;
                        }
                    }
                }
                _viewModel.RegistrarConFaltaStock.Execute(null);
            }              
        }

        private void btn_GoToHomePage_Clicked(object sender, EventArgs e)
        {
            Xamarin.Forms.Application.Current.MainPage = new MainPage();
        }

        private async void btn_registrar_Clicked(object sender, EventArgs e)
        {
            //Se valida que el usuario haya editado envases o unidades
            if (!ent_cantidad.IsEnabled)
            {
                if (ent_envases.Text == "")
                {
                    await DisplayAlert("App45W - Error!!", "No se han editado cantidades de envases a acopiar", "OK");
                    return;
                }
            }
            else
            {
                if (ent_cantidad.Text != "" && ent_envases.Text == "")
                {
                    ent_envases.Text = "0";
                }
                else if (ent_cantidad.Text == "" && ent_envases.Text == "")
                {
                    await DisplayAlert("App45W - Error!!", "No se han editado cantidades de envases y unidades a acopiar", "OK");
                    return;
                }
                else if (ent_cantidad.Text == "" && ent_envases.Text != "")
                {
                    ent_cantidad.Text = "0";
                }
            }

            decimal unidades = ent_cantidad.Text == "" ? Convert.ToDecimal("0") : Convert.ToDecimal(ent_cantidad.Text);
            decimal envases = ent_envases.Text == "" ? Convert.ToDecimal("0") : Convert.ToDecimal(ent_envases.Text);

            int registro = _viewModel.Registro;

            decimal unidadesAPreparar = _viewModel.UnidadesAPreparar;
            decimal unidadesPorEnvase = _viewModel.UnidadesPorEnvase;
            decimal peso = _viewModel.Peso;
            decimal pesoMaximoBolson = _viewModel.PesoMaximoBolson;

            decimal cantidad = envases * unidadesPorEnvase + unidades;

            decimal pesoAcumuladoBolson = DbLocal.GetPesoBolson(registro);

            /*Se valida que las cantidades ingresadas no sean menores que las requeridas. Si lo son, se le informa al 
             * usuario y se le brinda la posibilidad de continuar o corregir*/
            if (cantidad < unidadesAPreparar)
            {
                if (!await DisplayAlert("App45W - Atención!!", "La cantidad ingresada es menor a la requerida. Si es por falta de stock utilice el botón correspondiente ¿Desea acopiar de todos modos?. Si indica que SI, se realizará el acopio y la aplicación lo llevará a la pantalla de inicio para la  Exportación de Novedades ", "SI", "NO"))
                {
                    return;
                }        
            }

            //Se valida que las cantidades ingresadas no sean 0(cero)
            if(cantidad == 0)
            {
                await DisplayAlert("App45W - Error!!", "Si no hay stock del artículo, debe presionar el botón Falta Stock", "OK");
                ent_cantidad.Text = "0";
                ent_envases.Text = "0";
                unidades = 0;
                envases = 0;
                return;
            }

            //Se valida que las cantidades ingresadas no superen a las requeridas
            if(cantidad > unidadesAPreparar)
            {
                await DisplayAlert("App45W - Error!!", "La cantidad ingresada supera la requerida", "OK");
                ent_cantidad.Text = "0";
                ent_envases.Text = "0";
                unidades = 0;
                envases = 0;
                return;
            }

            //Se valida que no se excedan el peso máximo del bolson  
            if((pesoAcumuladoBolson + cantidad * peso ) > pesoMaximoBolson)
            {
                decimal maxCantidadPermitida = Math.Truncate((pesoMaximoBolson - pesoAcumuladoBolson) / peso);
                decimal maxEnvasesPermitidos = Math.Truncate((maxCantidadPermitida / unidadesPorEnvase));
                if(ent_cantidad.IsEnabled)
                {
                    if (maxCantidadPermitida > 0 && maxEnvasesPermitidos > 0)
                    {
                        if(await DisplayAlert("App45W - Atención!!", "Se alcanzó el peso máximo del bolsón. Se pueden agregar " + maxEnvasesPermitidos + " envases o " + maxCantidadPermitida + " unidades de este artículo. ¿Desea corregir las cantidades ingresadas al bolsón?", "SI", "NO"))
                        {
                            return;
                        } else
                        {
                            _viewModel.RegisterCommand.Execute(null);
                        }
                    } else if(maxCantidadPermitida > 0)
                    {
                        if(await DisplayAlert("App45W - Atención!!", "Se alcanzó el peso máximo del bolsón. Se pueden agregar " + maxCantidadPermitida + " unidades de este artículo. ¿Desea corregir las cantidades ingresadas al bolsón?", "SI", "NO"))
                        {
                            return;
                        } else
                        {
                            _viewModel.RegisterCommand.Execute(null);
                        }
                    } else
                    {
                        if (await DisplayAlert("App45W - Atención!!", "Se alcanzó el peso máximo del bolsón.No se pueden agregar más unidades de este artículo. Debe ir a la balanza a pesar el bolsón. ¿Desea de todos modos ingresar estas cantidades al bolsón?", "SI", "NO"))
                        {                           
                            _viewModel.RegisterCommand.Execute(null);                         
                        }
                        else
                        {
                            Xamarin.Forms.Application.Current.MainPage = new MainPage();
                            return;
                        } 
                            
                    }
                } else if(maxEnvasesPermitidos > 0)
                {
                    if(await DisplayAlert("App45W - Atención!!", "Se alcanzó el peso máximo del bolsón. Se pueden agregar " + maxEnvasesPermitidos + " envases de este artículo. ¿Desea corregir las cantidades ingresadas al bolsón?", "SI", "NO"))
                    {
                        return;
                    } else
                    {
                        _viewModel.RegisterCommand.Execute(null);
                    }
                } else
                {
                    if (await DisplayAlert("App45W - Atención!!", "Se alcanzó el peso máximo del bolsón.No se pueden agregar más envases de este artículo. Debe ir a la balanza a pesar el bolsón. ¿Desea de todos modos ingresar estas cantidades al bolsón?", "SI", "NO"))
                    {
                        _viewModel.RegisterCommand.Execute(null);                      
                    }
                    else
                    {
                        Xamarin.Forms.Application.Current.MainPage = new MainPage();
                        return;
                    }                        
                }
            }
            _viewModel.RegisterCommand.Execute(null);
            if(cantidad < unidadesAPreparar)
            {
                Xamarin.Forms.Application.Current.MainPage = new MainPage();
                return;
            }
        }
    }
}