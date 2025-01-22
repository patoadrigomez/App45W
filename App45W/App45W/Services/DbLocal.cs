using System;
using System.Collections.Generic;
using System.Text;
using SQLite;
using Xamarin.Forms;
using System.Threading.Tasks;
using System.Data;
using App45W.Entities;
using App45W.Models;

namespace App45W.Services
{
    public static class DbLocal
    {
        private static SQLiteConnection _sqlconnection;
        private static object collisionLock = new object();

        static DbLocal()
        {
            try
            {
                _sqlconnection = DependencyService.Get<ISQLite>().GetConnection();
                _sqlconnection.CreateTable<Capture>();
                _sqlconnection.CreateTable<Operador>();
                _sqlconnection.CreateTable<Acopiador>();
                _sqlconnection.CreateTable<Evento>();
                _sqlconnection.CreateTable<PedidoAsignado>();
                _sqlconnection.CreateTable<Colecta>();
            }
            catch(SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
        }

        /// <summary>
        /// Verifica si existe por el Id como clave primaria
        /// </summary>
        /// <param name="pieza"></param>
        /// <returns></returns>
        public static bool ExistCollectedPiece(string Id)
        {
            lock (collisionLock)
            {
                int result = _sqlconnection.Table<Capture>()
                .Where(c => c.IdPieza == Id).Count();
                return result == 1;
            }
        }

        /// <summary>
        /// Elimina un registro de coleccion por su id como clave primaria
        /// </summary>
        /// <param name="pieza"></param>
        /// <returns></returns>
        public static bool DeleteCollectedPiece(string Id)
        {
            lock (collisionLock)
            {
                int result = _sqlconnection.Delete<Capture>(Id);
                return result == 1;
            }
        }

        public static bool InsertRow<T>(T row)
        {
            lock (collisionLock)
            {
                int result = 0;
                try
                {
                    result = _sqlconnection.Insert(row);
                }
                catch (SQLiteException sqliteex)
                {
                    throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                }
                return result >= 1;
            }
        }
        public static bool InsertRows<T>(T row)
        {
            lock (collisionLock)
            {
                int result = 0;
                try
                {
                    result = _sqlconnection.Insert(row);
                }
                catch (SQLiteException sqliteex)
                {
                    throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                }
                return result >= 1;
            }
        }

        public static async Task<bool> InsertRowsAsync<T>(T row)
        {
            return await Task.Run(() =>
            {
                lock (collisionLock)
                {
                    int result = 0;
                    try
                    {
                        result = _sqlconnection.Insert(row);
                    }
                    catch (SQLiteException sqliteex)
                    {
                        throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                    }
                    return result >= 1;
                }
            });
        }

        /**************************************************************************************************
         * Metodo:		LoadTable
         * Descripcion: Carga en una tabla de la base de datos local con los registros contenidos
         *              en una Lista<T>.
         * Parametro:	List<T> 
         * Retorna:     Retorna tru si la registracion fue ok.
        ***************************************************************************************************/
        public static bool LoadTable<T>(List<T> rowsItems)
        {
            bool loadOk = false;
            try
            {
                if (rowsItems != null && rowsItems.Count > 0)
                {
                    foreach (T dr in rowsItems)
                    {
                        if (!InsertRows<T>(dr))
                        {
                            return loadOk;
                        }
                    }
                    loadOk = true;
                }
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return loadOk;
        }

        /**************************************************************************************************
         * Metodo:		LoadTableAsync
         * Descripcion: Carga en una tabla de la base de datos local con los registros contenidos
         *              en una Lista<T>.
         * Parametro:	List<T> 
         * Retorna:     Retorna tru si la registracion fue ok.
        ***************************************************************************************************/
        public static async Task<bool> LoadTableAsync<T>(List<T> rowsItems)
        {
            bool loadOk = false;
            try
            {
                if (rowsItems != null && rowsItems.Count > 0)
                {
                    foreach (T dr in rowsItems)
                    {
                        if (!await InsertRowsAsync<T>(dr))
                        {
                            return loadOk;
                        }
                    }
                    loadOk = true;
                }
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return loadOk;
        }

        /// <summary>
        /// Vacia el contenido de una Tabla indicando su esquema
        /// </summary>
        public static bool ClearTable<T>()
        {
            lock (collisionLock)
            {
                bool deleteOk = false;
                try
                {
                    _sqlconnection.DeleteAll<T>();
                }
                catch (SQLiteException sqliteex)
                {
                    throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                }
                return deleteOk;
            }
        }

        #region METODOS GENERALES PARA LA APLICACION
        /***************************************************************************************
            Metodo:		GetCapturasAsync
                        Crea una Lista de Capturas que se encuentran en la tabla
                        Captura en la base de datos Local.
            Parametros:	 
            Retorna:    Task<List<Captura>> con las capturas. 
        *****************************************************************************************/
        public static async Task<List<Capture>> GetCapturasAsync()
        {
            string sqlQuery;
            List<Capture> listCapturas;

            return await Task.Run(() =>
            {
                sqlQuery = String.Format(" SELECT FechaHoraCaptura,IdPieza FROM Capture ");
                listCapturas = new List<Capture>();

                lock (collisionLock)
                {
                    
                    try
                    {
                        listCapturas = _sqlconnection.Query<Capture>(sqlQuery);
                    }
                    catch (SQLiteException sqliteex)
                    {
                        throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                    }
                    return listCapturas;
                }
            });

        }


        /***************************************************************************************
            Metodo:		GetCapturas
                        Crea una Lista de Capturas que se encuentran en la tabla
                        Captura en la base de datos Local.
            Parametros:	 
            Retorna:    List<Captura> con las capturas. 
        *****************************************************************************************/
        public static List<Capture> GetCapturas()
        {
            var sqlQuery = String.Format(" SELECT FechaHoraCaptura,IdPieza FROM Capture ");
            var listCapturas = new List<Capture>();
            try
            {
                listCapturas = _sqlconnection.Query<Capture>(sqlQuery);
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return listCapturas;
        }
        /**************************************************************************************************
        * Metodo:       RegistrarCaptura
        * Descripcion:  Registra en la tabla local Captura un registro de una coleccion.
        * Parametro:	DateTime fechaInicioInventario,int idDestino,string idPieza.
        * Retorna:      true si ok
        ***************************************************************************************************/
        public static bool RegistrarCaptura(string idPieza)
        {
            bool registracionOk = false;

            try
            {
                Capture newRow = new Capture
                {
                    FechaHoraCaptura=DateTime.Now,
                    IdPieza=idPieza
                };
                registracionOk = InsertRows<Capture>(newRow);
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return registracionOk;
        }


        /**************************************************************************************************
         * Metodo:		DeleteCaptura
         * Descripcion: Borra el registro de captura indicado el id de pieza 
         *              
         * Parametro:	string idPieza
         * Retorna:     Retorna tru si la eliminacion fue ok.
        ***************************************************************************************************/
        public static async Task<bool> DeleteCaptura(string idPieza)
        {
            return await Task.Run(() =>
            {
                lock (collisionLock)
                {
                    bool deleteOk = false;
                    try
                    {
                        deleteOk = _sqlconnection.Table<Capture>().Delete(x => x.IdPieza == idPieza) >= 1;
                    }
                    catch (SQLiteException sqliteex)
                    {
                        throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                    }
                    return deleteOk;
                }
            });
        }

        /***************************************************************************************
        Metodo:		ExistCaptura
                    Verifica si una pieza ya se encuentra colectada en la tabla Captura
        Parametros:	string idPieza 
        Retorna:    bool true si existe. 
        *****************************************************************************************/
        public static async Task<bool> ExistCaptura(string idPieza)
        {
            return await Task.Run(()=>
            {
                lock (collisionLock)
                {
                    bool exist = false;
                    try
                    {
                        string strQuery = String.Format("Select * From Capture Where idPieza = '{0}' ", idPieza);
                        exist = _sqlconnection.Query<Capture>(strQuery).Count > 0;
                    }
                    catch (SQLiteException sqliteex)
                    {
                        throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                    }
                    return exist;
                }
            });
        }
        /**************************************************************************************************
         * Metodo:		GetTotales
         * Descripcion: Obtiene de la tabla Captura el total de piezas colectadas y el total de un destino
         *              indicado. 
         *              
         * Parametro:	int idDestino
         * Retorna:     Retorna una clase Acumulados con los resultados.
        ***************************************************************************************************/
        public static async Task<Acumulados> GetTotales()
        {
            return await Task.Run(() =>
            {
                lock (collisionLock)
                {
                    
                    Acumulados resultAcum = new Acumulados();
                    try
                    {
                        resultAcum.TotalUnidades = _sqlconnection.Table<Capture>().Count();
                    }
                    catch (SQLiteException sqliteex)
                    {
                        throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                    }
                    return resultAcum;
                }
            });
        }

        public static List<Operador> GetOperadores()
        {
            var sqlQuery = String.Format(" SELECT Id, Nombre, Password, Tipo FROM Operador ");
            var listOperadoress = new List<Operador>();
            try
            {
                listOperadoress = _sqlconnection.Query<Operador>(sqlQuery);
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return listOperadoress;
        }

        /***************************************************************************************
           Metodo:		GetOperadoresAsync
                       Crea una Lista de Operadores que se encuentran en la tabla
                       Operador en la base de datos Local.
           Parametros:	 
           Retorna:    Task<List<Operador>> con los operadores. 
       *****************************************************************************************/
        public static async Task<List<Operador>> GetOperadoresAsync()
        {
            return await Task.Run(() =>
            {
                List<Operador> listOperadores = new List<Operador>();

                string sqlQuery = String.Format(
                                " SELECT Id, Nombre, Password, Tipo FROM Operador ");
                lock (collisionLock)
                {
                    try
                    {
                        listOperadores = _sqlconnection.Query<Operador>(sqlQuery);
                    }
                    catch (SQLiteException sqliteex)
                    {
                        throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                    }
                    return listOperadores;
                }
            });
        }

        /***************************************************************************************
       Metodo:		GetColectoresAsync
                   Crea una Lista de Colectores que se encuentran en la tabla
                   Colector en la base de datos Local.
       Parametros:	 
       Retorna:    Task<List<Colector>> con los colectores. 
   *****************************************************************************************/
        public static async Task<List<Acopiador>> GetAcopiadoresAsync()
        {
            return await Task.Run(() =>
            {
                List<Acopiador> listAcopiadores = new List<Acopiador>();

                string sqlQuery = String.Format(
                                " SELECT Id, Nombre FROM Acopiador ");
                lock (collisionLock)
                {
                    try
                    {
                        listAcopiadores = _sqlconnection.Query<Acopiador>(sqlQuery);
                    }
                    catch (SQLiteException sqliteex)
                    {
                        throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                    }
                    return listAcopiadores;
                }
            });
        }

        /***************************************************************************************
           Metodo:		GetEventos
                       Crea una Lista de Eventos que se encuentran en la tabla
                       Evento en la base de datos Local.
           Parametros:	 
           Retorna:    List<Captura> con las capturas. 
       *****************************************************************************************/
        public static List<Evento> GetEventos()
        {
            var sqlQuery = String.Format(" SELECT * FROM Evento ");
            var listEventos = new List<Evento>();
            try
            {
                listEventos = _sqlconnection.Query<Evento>(sqlQuery);
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return listEventos;
        }


        /***************************************************************************************
       Metodo:		GetEventosAsync
                   Crea una Lista de eventos que se encuentran en la tabla
                   Evento en la base de datos Local.
       Parametros:	 
       Retorna:    Task<List<Evento>> con los eventos. 
   *****************************************************************************************/
        public static async Task<List<Evento>> GetEventosAsync()
        {
            return await Task.Run(() =>
            {
                List<Evento> listEventos = new List<Evento>();

                string sqlQuery = String.Format(
                                " SELECT * FROM Evento ");
                lock (collisionLock)
                {
                    try
                    {
                        listEventos = _sqlconnection.Query<Evento>(sqlQuery);
                    }
                    catch (SQLiteException sqliteex)
                    {
                        throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                    }
                    return listEventos;
                }
            });
        }

        public static List<PedidoAsignado> GetPedidosAsignados()
        {
            var sqlQuery = String.Format(" SELECT * FROM PedidoAsignado ");
            var listPedidosAsignados = new List<PedidoAsignado>();
            try
            {
                listPedidosAsignados = _sqlconnection.Query<PedidoAsignado>(sqlQuery);
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return listPedidosAsignados;
        }



        /***************************************************************************************
       Metodo:		GetPedidosAsignadosAsync
                   Crea una Lista de pedidos asignados que se encuentran en la tabla
                   PedidoAsignado en la base de datos Local.
       Parametros:	 
       Retorna:    Task<List<PedidoAsignado>> con los pedidos asignados. 
   *****************************************************************************************/
        public static async Task<List<PedidoAsignado>> GetPedidosAsignadosAsync()
        {
            return await Task.Run(() =>
            {
                List<PedidoAsignado> listPedidosAsignados = new List<PedidoAsignado>();

                string sqlQuery = String.Format(
                                " SELECT * FROM PedidoAsignado ");
                lock (collisionLock)
                {
                    try
                    {
                        listPedidosAsignados = _sqlconnection.Query<PedidoAsignado>(sqlQuery);
                    }
                    catch (SQLiteException sqliteex)
                    {
                        throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                    }
                    return listPedidosAsignados;
                }
            });
        }

        /***************************************************************************************
      Metodo:		GetColectasAsync: crea una lista con las colectas registradas en la 
        tabla local Colecta
      Parametros:	 
      Retorna:    Task<List<Colecta>> con las capturas registradas. 
  *****************************************************************************************/
        public static async Task<List<Colecta>> GetColectasAsync()
        {
            return await Task.Run(() =>
            {
                List<Colecta> listColectas = new List<Colecta>();

                string sqlQuery = String.Format(
                                " SELECT * FROM Colecta ");
                lock (collisionLock)
                {
                    try
                    {
                        listColectas = _sqlconnection.Query<Colecta>(sqlQuery);
                    }
                    catch (SQLiteException sqliteex)
                    {
                        throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                    }
                    return listColectas;
                }
            });
        }

        /***************************************************************************************
    Metodo:		GetColectas crea una lista con las colectas registradas en la 
      tabla local Colecta
    Parametros:	 
    Retorna:    List<Colecta> con las capturas registradas. 
*****************************************************************************************/
        public static List<Colecta> GetColectas()
        {
            List<Colecta> listColectas = new List<Colecta>();

            string sqlQuery = String.Format(
                            " SELECT * FROM Colecta ");
            try
            {
                listColectas = _sqlconnection.Query<Colecta>(sqlQuery);
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return listColectas;
        }


        public static List<PedidoAsignado> GetArticulosARecolectar(string PrepTipo, int PrepSucursal, decimal PrepNumero, string PedTipo, int PedSucursal, decimal PedNumero)
        {
            var sqlQuery = String.Format(" SELECT * FROM PedidoAsignado WHERE PreparacionTipo='{0}' AND PreparacionSucursal='{1}' AND PreparacionNumero='{2}' AND PedidoTipo= '{3}' AND PedidoSucursal= '{4}' AND PedidoNumero= '{5}'",
                PrepTipo, PrepSucursal, PrepNumero, PedTipo, PedSucursal, PedNumero);
           
            var articulosARecolectar = new List<PedidoAsignado>();
            try
            {
                articulosARecolectar = _sqlconnection.Query<PedidoAsignado>(sqlQuery);
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return articulosARecolectar;
        }

        /***************************************************************************************
     Metodo:		GetPedidoAsignadoAsync
               Devuelve un pedido asignado 
     Parametros:	 
     Retorna:     Task<PedidoAsignado> con un pedido asignado 
 *****************************************************************************************/
        public static async Task <List<PedidoAsignado>> GetArticulosARecolectarAsync(string PrepTipo, int PrepSucursal, decimal PrepNumero, string PedTipo, int PedSucursal, decimal PedNumero)
        {
            return await Task.Run(() =>
            {
                List<PedidoAsignado> articulosARecolectar = new List<PedidoAsignado>();

                string sqlQuery = String.Format(
                                " SELECT * FROM PedidoAsignado WHERE PreparacionTipo='{0}' AND PreparacionSucursal='{1}' AND PreparacionNumero='{2}' AND PedidoTipo= '{3}' AND PedidoSucursal= '{4}' AND PedidoNumero= '{5}' AND  ", PrepTipo, PrepSucursal, PrepNumero, PedTipo, PedSucursal, PedNumero);
                lock (collisionLock)
                {
                    try
                    {
                        articulosARecolectar = _sqlconnection.Query<PedidoAsignado>(sqlQuery);
                    }
                    catch (SQLiteException sqliteex)
                    {
                        throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                    }
                    return articulosARecolectar;
                }
            });
        }

        /******************************************************************************************
            Metodo:		GetPedidosPrepracionesAsignadosTodos
             Crea una Lista con todos los pedido-preparación asignadas al colector 
             Parametros:	 
            Retorna:   List<PedidoPreparacion> con los pedidos-preparaciones asignados. 
*****************************************************************************************/
        public static List<PedidoPreparacion> GetPedidosPrepracionesAsignadosTodos()
        {
            List<PedidoPreparacion> listPedidosPreparacionesAsignados = new List<PedidoPreparacion>();

            string sqlQuery = String.Format(
                            "SELECT DISTINCT PreparacionNumero, PedidoNumero, PreparacionTipo, PreparacionSucursal," +
                            "PedidoTipo, PedidoSucursal, PedidoFecha, ClienteNombre, PreparacionClaveUnica, PedidoClaveUnica FROM PedidoAsignado ORDER BY PedidoOrdenAcopio");

            try
            {
                listPedidosPreparacionesAsignados = _sqlconnection.Query<PedidoPreparacion>(sqlQuery);
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return listPedidosPreparacionesAsignados;
        }

        /***************************************************************************************
        GetPedidosPrepracionesAsignadosAsync()
        Metodo:		Crea una Lista con cada pedido-preparación asignadas al colector que no hayan sido ya
               procesados sin nada de stok y que no hayan sido exportados.
    Parametros:	 
    Retorna:   Task<List<PedidoPreparacion>> con los pedidos-preparaciones asignados. 
*****************************************************************************************/
        public static async Task<List<PedidoPreparacion>> GetPedidosPrepracionesAsignadosAsync()
        {
            return await Task.Run(() =>
            {
                List<PedidoPreparacion> listPedidosPreparacionesAsignados = new List<PedidoPreparacion>();

                string sqlQuery = String.Format(
                                "SELECT DISTINCT PreparacionNumero, PedidoNumero, PreparacionTipo, PreparacionSucursal," +
                                "PedidoTipo, PedidoSucursal, PedidoFecha, ClienteNombre, PreparacionClaveUnica, PedidoClaveUnica FROM PedidoAsignado WHERE NOT(Cantidad = 0 AND Finalizado = 1 AND Gestionado = 1) AND (Gestionado = 0 AND RegistroNoExportado = FALSE) ORDER BY PedidoOrdenAcopio");
                lock (collisionLock)
                {
                    try
                    {
                        listPedidosPreparacionesAsignados = _sqlconnection.Query<PedidoPreparacion>(sqlQuery);
                    }
                    catch (SQLiteException sqliteex)
                    {
                        throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                    }
                    return listPedidosPreparacionesAsignados;
                }
            });
        }

        /******************************************************************************************
  Metodo:		GetPedidosPrepracionesAsignados
              Crea una Lista con cada pedido-preparación asignadas al colector que no hayan sido ya
               procesados sin nada de stok y que no hayan sido exportados.
  Parametros:	 
  Retorna:   List<PedidoPreparacion> con los pedidos-preparaciones asignados. 
*****************************************************************************************/
        public static List<PedidoPreparacion> GetPedidosPrepracionesAsignados()
        {
            List<PedidoPreparacion> listPedidosPreparacionesAsignados = new List<PedidoPreparacion>();

            string sqlQuery = String.Format(
                            "SELECT DISTINCT PreparacionNumero, PedidoNumero, PreparacionTipo, PreparacionSucursal," +
                            "PedidoTipo, PedidoSucursal, PedidoFecha, ClienteNombre, PreparacionClaveUnica, PedidoClaveUnica FROM PedidoAsignado WHERE NOT(Cantidad = 0 AND Finalizado = 1 AND Gestionado = 1) AND (Gestionado = 0 AND RegistroNoExportado = FALSE) ORDER BY PedidoOrdenAcopio");

            try
            {
                listPedidosPreparacionesAsignados = _sqlconnection.Query<PedidoPreparacion>(sqlQuery);
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return listPedidosPreparacionesAsignados;
        }

        /***************************************************************************************
  Metodo:		GetPedidosPrepracionesSinStock
              Crea una Lista con los pedidos-preparacion sin stock en ninguno de sus artículos
  Parametros:	 
  Retorna:   List<PedidoPreparacion>> con los pedidos-preparaciones asignados sin nada de stock. 
************************************************************************************************/
        public static List<PedidoPreparacion> GetPedidosPrepracionesSinStock()
        {
            List<PedidoPreparacion> listPedidosPreparacionesSinStock = new List<PedidoPreparacion>();

            string sqlQuery = String.Format(
                            "SELECT DISTINCT PreparacionNumero, PedidoNumero, PreparacionTipo, PreparacionSucursal," +
                            "PedidoTipo, PedidoSucursal, PedidoFecha, ClienteNombre, PreparacionClaveUnica, PedidoClaveUnica FROM PedidoAsignado WHERE PedidoPreparacionSinStock = TRUE ORDER BY PedidoOrdenAcopio");

            try
            {
                listPedidosPreparacionesSinStock = _sqlconnection.Query<PedidoPreparacion>(sqlQuery);
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return listPedidosPreparacionesSinStock;
        }

        /***************************************************************************************
Metodo:		GetPedidosPrepracionesGestionadosComppletos
           Crea una Lista con los pedidos-preparacion que se hayan gestionado en su totalidad.
Parametros:	 
Retorna:   List<PedidoPreparacion>> con los pedidos-preparaciones que tengan todos sus artículos
        gestionados. 
************************************************************************************************/
        public static List<PedidoPreparacion> GetPedidosPrepracionesGestionadosComppletos()
        {
            List<PedidoPreparacion> listPedidosPreparacionesGestionadosCompletos = new List<PedidoPreparacion>();

            string sqlQuery = String.Format(
                            "SELECT DISTINCT PreparacionNumero, PedidoNumero, PreparacionTipo, PreparacionSucursal," +
                            "PedidoTipo, PedidoSucursal, PedidoFecha, ClienteNombre, PreparacionClaveUnica, PedidoClaveUnica FROM PedidoAsignado WHERE PedidoPreparacionGestionadoCompleto = TRUE ORDER BY PedidoOrdenAcopio");

            try
            {
                listPedidosPreparacionesGestionadosCompletos = _sqlconnection.Query<PedidoPreparacion>(sqlQuery);
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return listPedidosPreparacionesGestionadosCompletos;
        }

        public static async Task<Operador> GetOperadorAsync(int id)
        {
            return await Task.Run(() =>
            {
                Operador operador = new Operador();

                string sqlQuery = String.Format(
                                "  SELECT Id, Nombre, Password, Tipo FROM Operador WHERE Id = {0}", id);
                lock (collisionLock)
                {
                    try
                    {
                        operador = _sqlconnection.Get<Operador>(sqlQuery);
                    }
                    catch (SQLiteException sqliteex)
                    {
                        throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                    }
                    return operador;
                }
            });
        }

        /**************************************************************************************************
      * Metodo:		UpdatePedidoAsignado
      * Descripcion: Actualizar los campos cantidad y finalizado
      *              en la tabla local de PedidoAsignado segun el nro de registro indicado.
      *             
      * Parametro:	int numRegistro, decimal cantidas, decimal envases, int finalizado
      * Retorna:     Retorna true si la registracion fue ok.
     ***************************************************************************************************/
        public static bool UpdatePedidoAsignado(int registro, decimal cantidad, TYPE_COLECTA finalizado, int estadoArticuloAsignado, int gestionado)
        {
            bool registracionOk = false;
            PedidoAsignado row = new PedidoAsignado();
            try
            {
                row = _sqlconnection.Table<PedidoAsignado>().Where(p => p.Registro == registro).FirstOrDefault();
                if (row != null)
                {
                    if(gestionado == 1)
                    {
                        //Se actualiza la preparación del artículo sumando las cantidades colectadas del mismo.
                        row.Cantidad = cantidad;
                        row.Finalizado = Convert.ToInt32(finalizado);
                        row.IdEstadoArticuloAsignado = estadoArticuloAsignado;//Cambia a estado "Artículo Procesado"
                        row.Gestionado = gestionado;
                        _sqlconnection.Update(row);
                        registracionOk = true;
                    } else
                    {
                        /*Se actualiza la preparación del artículo restando las cantidades colectadas del mismo.
                         * Este es el caso en el que se elimina una colecta realizada */
                        row.Cantidad = 0;
                        row.Finalizado = Convert.ToInt32(finalizado);
                        row.IdEstadoArticuloAsignado = estadoArticuloAsignado;//Vuelve al estado En Proceso"
                        row.Gestionado = gestionado;
                        _sqlconnection.Update(row);
                        registracionOk = true;
                    }                 
                }
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return registracionOk;
        }

        /**************************************************************************************************
        * Metodo:		DeletePedidoAsignado
        * Descripcion: Borra el registro de la tabla PedidoAsignado cuyo nro de registro coincidecon el del
        * objeto PedidoAsignado recibido como parámetro
        *              
        * Parametro:   int Registro
        * Retorna:     Retorna tru si la eliminacion fue ok.
       ***************************************************************************************************/
        public static async Task<bool> DeletePedidoAsignado(int registro)
        {
            return await Task.Run(() =>
            {
                lock (collisionLock)
                {
                    bool deleteOk = false;
                    try
                    {
                        deleteOk = _sqlconnection.Table<PedidoAsignado>().Delete(x => x.Registro == registro) >= 1;
                    }
                    catch (SQLiteException sqliteex)
                    {
                        throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
                    }
                    return deleteOk;
                }
            });
        }

        /**************************************************************************************************
     * Metodo:		SetRegistroNoExportado
     * Descripcion: Coloca en true el campo RegistroNoExportado de la tabla local PedidoAsignado
     *             
     * Parametro:	int Registro
     * Retorna:     Retorna true si la registracion fue ok.
    ***************************************************************************************************/
        public static bool SetRegistroNoExportado(int registro)
        {
            bool set = false;
            PedidoAsignado row = new PedidoAsignado();
            try
            {
                row = _sqlconnection.Table<PedidoAsignado>().Where(p => p.Registro == registro).FirstOrDefault();
                if(row != null)
                {
                    row.RegistroNoExportado = true;
                    _sqlconnection.Update(row);
                    set = true;
                }
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return set;
        }


        /**************************************************************************************************
    * Metodo:		SetPedidoPreparacionSinStock
    * Descripcion: Coloca en true el campo PedidoPreparacionSinStock de la tabla local PedidoAsignado. Sirve 
    * para indicar que todos los artículos del pedido-preparación fueron acopiados sin nada de stock, es decir
    * con cantidad = 0.            
    * Parametro:	int Registro
    * Retorna:     Retorna true si la registracion fue ok.
   ***************************************************************************************************/
        public static bool SetPedidoPreparacionSinStock(int registro, bool sinStock)
        {
            bool set = false;
            PedidoAsignado row = new PedidoAsignado();
            try
            {
                row = _sqlconnection.Table<PedidoAsignado>().Where(p => p.Registro == registro).FirstOrDefault();
                if (row != null)
                {
                    row.PedidoPreparacionSinStock = sinStock;
                    _sqlconnection.Update(row);
                    set = true;
                }
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return set;
        }

        /**************************************************************************************************
   * Metodo:		SetPedidoPreparacionGestionadoCompleto
   * Descripcion: Coloca en true el campo PedidoPreparacionGestionadoCompleto de la tabla local PedidoAsignado.
   * Sirve para indicar que todos los artículos del pedido-preparación fueron procesados, con o sin stock
   *             
   * Parametro:	int Registro
   * Retorna:     Retorna true si la registracion fue ok.
  ***************************************************************************************************/
        public static bool SetPedidoPreparacionGestionadoCompleto(int registro, bool gestionadoCompleto)
        {
            bool set = false;
            PedidoAsignado row = new PedidoAsignado();
            try
            {
                row = _sqlconnection.Table<PedidoAsignado>().Where(p => p.Registro == registro).FirstOrDefault();
                if (row != null)
                {
                    row.PedidoPreparacionGestionadoCompleto = gestionadoCompleto;
                    _sqlconnection.Update(row);
                    set = true;
                }
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return set;
        }

        /**************************************************************************************************
    * Metodo:		SetColectaEnPedidoSinNadaDeStock
    * Descripcion: Coloca en true el campo ColectaPertenecienteAUnPedidoSinNadaDeStock de la tabla local 
    * Colecta       
    * Parametro:	int Registro
    * Retorna:     Retorna true si la registracion fue ok.
   ***************************************************************************************************/
        public static bool SetColectaEnPedidoSinNadaDeStock(int registro, bool sinStock)
        {
            bool set = false;
            Colecta row = new Colecta();
            try
            {
                row = _sqlconnection.Table<Colecta>().Where(p => p.Registro == registro).FirstOrDefault();
                if (row != null)
                {
                    row.ColectaPertenecienteAUnPedidoSinNadaDeStock = sinStock;
                    _sqlconnection.Update(row);
                    set = true;
                }
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return set;
        }


        /**************************************************************************************************
       * Metodo:       GetPesoBolson
       * Descripcion: Devuelve el peso total del bolsòn, sumando todos los pesos colectados desde la Tabla
       *              Colecta
       * Parametro:	
       * Retorna:      La suma de los pesos de los artìculos del bolsón
       ***************************************************************************************************/
        public static decimal GetPesoBolson(int registro)
        {
            string sqlQuery = String.Format(
                               "SELECT * FROM Colecta");
            decimal pesoTotal = 0;
            List<Colecta> colecta = new List<Colecta>();
            try
            {
                colecta = _sqlconnection.Query<Colecta>(sqlQuery);
                foreach(var c in colecta)
                {
                    if(c.Registro != registro)
                        pesoTotal += c.PesoColectado;
                }
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return pesoTotal;
        }

        /**************************************************************************************************
        * Metodo:       RegistrarEvento
        * Descripcion:  Registra en la tabla local Evento un registro con los detalles del evento.
        * a un bolson.
        * Parametros:	 prepTipo, prepSucursal, prepNro, pedTipo, pedSucursal, pedNro, tipoEvento, codArt,
        *                art,
        * Retorna:      true si ok
        ***************************************************************************************************/
        public static bool RegistrarEvento(int registro, string prepTipo, int prepSucursal, decimal prepNro, string pedTipo, int pedSucursal, decimal pedNro, TYPE_EVENTO tipoEvento, string tipoEventoDetalle, string codArt, string articulo )
        {
            bool registracionOk = false;

            try
            {
                Evento evento = new Evento
                {
                    Registro = registro,
                    FechaHora = DateTime.Now,
                    IdTerminal = Convert.ToInt32(ConfigApp.IdTerminal),
                    IdAcopiador = Convert.ToInt32(ConfigApp.IdAcopiador),
                    IdOperador = ConfigApp.IdOperadorLogueado,
                    NumBulto = 0,
                    PreparacionTipo = prepTipo,
                    PreparacionSucursal = prepSucursal,
                    PreparacionNumero = prepNro,
                    PedidoTipo = pedTipo,
                    PedidoSucursal = pedSucursal,
                    PedidoNumero = pedNro,
                    Tipo = Convert.ToString(tipoEvento),
                    Detalle = tipoEventoDetalle
                };
                registracionOk = InsertRows<Evento>(evento);
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return registracionOk;
        }

        /**************************************************************************************************
       * Metodo:       DeleteEvento
       * Descripcion:  Elimina de la tabla local Evento el registro que contenga como nro de registro, el 
       * recibido como parámetro
       * Parametros:	 int registro
       * Retorna:      true si ok
       ***************************************************************************************************/
        public static bool DeleteEvento(int registro)
        {
            lock (collisionLock)
            {
                int result = _sqlconnection.Delete<Evento>(registro);
                return result == 1;
            }
        }

        /**************************************************************************************************
       * Metodo:       RegistrarColecta
       * Descripcion:  Registra en la tabla local Colecta un registro con la colecta realizada.
       * a un bolson.
       * Parametros:	 Colecta
       * Retorna:      true si ok
       ***************************************************************************************************/
        public static bool RegistrarColecta(Colecta colecta)
        {
            bool registracionOk = false;
            try
            {
                Colecta newColecta = new Colecta
                {
                    Registro = colecta.Registro,
                    ArticuloCodigo = colecta.ArticuloCodigo,
                    Articulo = colecta.Articulo,
                    CantidadColectada = colecta.CantidadColectada,
                    PesoColectado = colecta.PesoColectado,
                    ColectaPertenecienteAUnPedidoSinNadaDeStock = false
                };
                registracionOk = InsertRows<Colecta>(newColecta);
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return registracionOk;
        }

        /***************************************************************************************
      Metodo:		ExistColecta
                  Verifica si una colecta ya existe en la tabla Colecta
      Parametros:	int registro 
      Retorna:    bool true si existe. 
      *****************************************************************************************/
        public static bool ExistColecta(int registro)
        {
            bool exist = false;
            try
            {
                string strQuery = String.Format("Select * From Colecta Where Registro = '{0}' ", registro);
                exist = _sqlconnection.Query<Capture>(strQuery).Count > 0;
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return exist;
        }

        /**************************************************************************************************
     * Metodo:       UpdateColecta
     * Descripcion:  Actualiza los campos CantidadColectada y PesoColectado de la tabla local Colecta
     * con los datos de una nueva colecta realizada para el mismo artículo.
     * a un bolson.
     * Parametros:	 Colecta
     * Retorna:      true si ok
     ***************************************************************************************************/
        public static bool UpdateColecta(Colecta colecta)
        {
            bool upDate = false;
            Colecta row = new Colecta();
            try
            {
                row = _sqlconnection.Table<Colecta>().Where(c => c.Registro == colecta.Registro).FirstOrDefault();
                if (row != null)
                {
                    row.CantidadColectada = colecta.CantidadColectada;
                    row.PesoColectado = colecta.PesoColectado;
                    _sqlconnection.Update(row);
                    upDate = true;
                }
            }
            catch (SQLiteException sqliteex)
            {
                throw new DbLocalException("Error en Base de Datos Local: " + sqliteex.Message);
            }
            return upDate;
        }


        /**************************************************************************************************
      * Metodo:       DeleteColecta
      * Descripcion:  Elimina de la tabla Colecta el registro cuyo nro Registro coincida con el recibido
      * como parámetro. 
      * Parametros:	 int Registro
      * Retorna:      true si ok
      ***************************************************************************************************/
        public static bool DeleteColecta(int registro)
        {
            lock (collisionLock)
            {
                int result = _sqlconnection.Delete<Colecta>(registro);
                return result == 1;
            }
        }

        internal static void LoadTable<T>(object value)
        {
            throw new NotImplementedException();
        }

        #endregion
    }

    public class DbLocalException : Exception
    {
        public DbLocalException()
        {
        }

        public DbLocalException(string message)
            : base(message)
        {
        }

        public DbLocalException(string message, Exception inner)
            : base(message, inner)
        {
        }
    }
}
