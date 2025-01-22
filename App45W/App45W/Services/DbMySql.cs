using System;
using System.Collections.Generic;
using System.Data;
using App45W.Entities;
using System.Threading.Tasks;
using MySqlConnector;
using App45W.Services;
using App45W.Models;

namespace DbMySql
{
    /// <summary>
    /// Clase Wrapper para conectividad para un motor de base de datos MySql.
    /// Provee motodo de conexion ,cierre , llamados a SP y consultas SQL
    /// </summary>
    public static class DbMySql
    {
        #region PROPIEDADES PRIVADAS
        static MySqlConnection m_dbConnection;
        static bool m_isOpen = false;
        public static string LastError { get; set; } = "";

        #endregion

        #region PROPIEDADES PUBLICAS
        public static MySqlConnection DbConnection { get => m_dbConnection; set => m_dbConnection = value; }
        public static bool IsOpen { get => m_isOpen; set => m_isOpen = value; }
        #endregion


        static DbMySql()
        {
            DbConnection = new MySqlConnection();
        }

        public static async Task<bool> ConnectAsync()
        {
            LastError = "";
            bool connectionOk = false;

            try
            {
                if (DbConnection.State == ConnectionState.Closed || DbConnection.State == ConnectionState.Broken)
                {
                    DbConnection.ConnectionString = String.Format("SERVER={0};DATABASE={1};UID={2};PASSWORD={3};",
                        ConfigApp.NombreServidorDB,
                        ConfigApp.NombreDB,
                        ConfigApp.UsuarioDB,
                        ConfigApp.PassWordDB);
                    DbConnection.Open();
                }
                connectionOk = true;
            }
            catch (MySqlException ex)
            {
                //When handling errors, you can your application's response based 
                //on the error number.
                //The two most common error numbers when connecting are as follows:
                //0: Cannot connect to server.
                //1045: Invalid user name and/or password.
                switch (ex.Number)
                {
                    case 0:
                        LastError = "Error estableciendo conexión con la Base de Datos: Cannot connect to server." + ex.Source + "--" + ex.Message;
                        break;
                    case 1045:
                        LastError = "Error estableciendo conexión con la Base de Datos: Invalid username/password." + ex.Source + "--" + ex.Message;
                        break;
                    default:
                        LastError = "Error estableciendo conexión con la Base de Datos: " + ex.Source + "--" + ex.Message;
                        break;
                }
            }
            catch (TypeInitializationException ex)
            {
                LastError = "Error estableciendo conexión con la Base de Datos: Cannot connect to server." + ex.Source + "--" + ex.Message;
            }
            return m_isOpen = connectionOk;
        }

        /********************************************************************
            Open Data Base
        **********************************************************************/
        public static bool Connect()
        {
            LastError = "";
            bool connectionOk = false;

            try
            {
                if (DbConnection.State == ConnectionState.Closed || DbConnection.State == ConnectionState.Broken)
                {
                    DbConnection.ConnectionString = String.Format("SERVER={0};DATABASE={1};UID={2};PASSWORD={3};",
                        ConfigApp.NombreServidorDB,
                        ConfigApp.NombreDB,
                        ConfigApp.UsuarioDB,
                        ConfigApp.PassWordDB);
                    DbConnection.Open();
                }
                connectionOk = true;
            }
            catch (MySqlException ex)
            {
                //When handling errors, you can your application's response based 
                //on the error number.
                //The two most common error numbers when connecting are as follows:
                //0: Cannot connect to server.
                //1045: Invalid user name and/or password.
                switch (ex.Number)
                {
                    case 0:
                        LastError = "Error estableciendo conexión con la Base de Datos: Cannot connect to server." + ex.Source + "--" + ex.Message;
                        break;
                    case 1045:
                        LastError = "Error estableciendo conexión con la Base de Datos: Invalid username/password." + ex.Source + "--" + ex.Message;
                        break;
                    default:
                        LastError = "Error estableciendo conexión con la Base de Datos: " + ex.Source + "--" + ex.Message;
                        break;
                }
            }
            catch (TypeInitializationException ex)
            {
                LastError = "Error estableciendo conexión con la Base de Datos: Cannot connect to server." + ex.Source + "--" + ex.Message;
            }
            return m_isOpen = connectionOk;
        }

        static bool Disconnect()
        {
            try
            {
                DbConnection.Close();
                m_isOpen = false;
            }
            catch (MySqlException ex)
            {
                //throw new DbMySqlException("Error cerrando la conexión con la Base de Datos: " + ex.Source + "--" + ex.Message);
            }
            return !m_isOpen;
        }

        public static bool isConnected()
        {
            return (DbConnection.State == ConnectionState.Open && m_isOpen);
        }
        /********************************************************************
        *  obtiene el ultimo texto que describe al error ocurrido con el acceso a la base de datos
        **********************************************************************/
        public static string GetDbError()
        {
            return LastError;
        }


        #region METODOS GENERALES PARA LA APLICACION

        /***************************************************************************************
       Metodo:		GetOperadores
                   Obtiene toda la tabla Operadores  
       *****************************************************************************************/
        public static async Task<List<Operador>> GetOperadoresAsync()
        {
            return await Task.Run(() =>
            {
                LastError = "";

                List<Operador> listOperadores = new List<Operador>();

                DataTable dt = new DataTable();

                try
                {
                    if (!isConnected())
                        DbConnection.Open();

                    if (DbMySql.Connect())
                    {
                        dt = DbMySql.LoadDataTable_FromQuery("select id as Id, nombre as Nombre, password as Password, tipo as Tipo FROM mcr_operadores");
                      
                        if (dt != null)
                        {
                            foreach (DataRow dr in dt.Rows)
                            {
                                listOperadores.Add(new Operador
                                {
                                    Id = Convert.ToInt32(dr["ID"]),
                                    Nombre = Convert.ToString(dr["NOMBRE"]),
                                    Password = Convert.ToString(dr["Password"]),
                                    Tipo = Convert.ToString(dr["Tipo"])
                                });
                            }
                        }
                    }

                }
                catch (Exception ex)
                {
                    LastError = ex.Source + "-" + ex.Message;
                }
                return listOperadores;
            });
        }

        /***************************************************************************************
  Metodo:		GetColectoresAdync
              Obtiene toda la tabla Colectores  
  *****************************************************************************************/

        public static async Task<List<Acopiador>> GetAcopiadoresAsync()
        {
            return await Task.Run(() =>
            {
                LastError = "";

                List<Acopiador> listAcopiador = new List<Acopiador>();
                DataTable dt = new DataTable();

                try
                {
                    if (!isConnected())
                        DbConnection.Open();

                    if (DbMySql.Connect())
                    {
                        string query = "SELECT * FROM mcr_acopiadores";

                        dt = DbMySql.LoadDataTable_FromQuery(query);

                        if (dt != null)
                        {
                            foreach (DataRow dr in dt.Rows)
                            {
                                listAcopiador.Add(new Acopiador
                                {
                                    Id = Convert.ToInt32(dr["Id"]),
                                    Nombre = Convert.ToString(dr["Nombre"]),
                                    IdTipo = Convert.ToString(dr["idTipo"])
                                });
                            }
                        }
                    }

                }
                catch (Exception ex)
                {
                    LastError = ex.Source + "-" + ex.Message;
                }
                return listAcopiador;
            });
        }

        /***************************************************************************************
   Metodo:		GetPedidosDetalleAsignados
               Obtiene toda la tabla mcr_pedidosdetalleasignados  
   *****************************************************************************************/
        public static async Task<List<PedidoAsignado>> GetPedidosAsync()
        {
            return await Task.Run(() =>
            {
                LastError = "";

                List<PedidoAsignado> listPedidos = new List<PedidoAsignado>();
                int estadoArticuloPendiente =  (int)TYPE_ESTADO_ARTICULO_ASIGNADO.Pendiente;
                int estadoAriculoEnProceso = (int)TYPE_ESTADO_ARTICULO_ASIGNADO.En_Proceso;
        
                DataTable dt = new DataTable();

                try
                {
                    if (!isConnected())
                        DbConnection.Open();

                    if (DbMySql.Connect())
                    {
                        string query = String.Format("SELECT * FROM mcr_pedidosdetalleasignado WHERE IdAcopiador = {0} AND idTerminal = {1} AND (IdEstadoArticuloAsignado = {2} OR IdEstadoArticuloAsignado = {3})", ConfigApp.IdAcopiador, ConfigApp.IdTerminal, estadoArticuloPendiente, estadoAriculoEnProceso);
                        dt = DbMySql.LoadDataTable_FromQuery(query);


                        if (dt != null)
                        {
                            foreach (DataRow dr in dt.Rows)
                            {
                                listPedidos.Add(new PedidoAsignado
                                {
                                   Registro = Convert.ToInt32(dr["Registro"]),
                                   IdTerminal = Convert.ToInt32(dr["IdTerminal"]),
                                   PreparacionTipo = Convert.ToString(dr["PreparacionTipo"]),
                                   PreparacionSucursal = Convert.ToInt32(dr["PreparacionSucursal"]),
                                   PreparacionNumero = Convert.ToDecimal(dr["PreparacionNumero"]),
                                   PreparacionFecha = Convert.ToDateTime(dr["PreparacionFecha"]),
                                   PedidoTipo = Convert.ToString(dr["PedidoTipo"]),
                                   PedidoSucursal = Convert.ToInt32(dr["PedidoSucursal"]),
                                   PedidoNumero = Convert.ToDecimal(dr["PedidoNumero"]),
                                   PedidoFecha = Convert.ToDateTime(dr["PedidoFecha"]),
                                   ClienteCodigo = Convert.ToDecimal(dr["ClienteCodigo"]),
                                   ClienteNombre = Convert.ToString(dr["ClienteNombre"]),
                                   ArticuloCodigo = Convert.ToString(dr["ArticuloCodigo"]),
                                   ArticuloCodigoDeBarras = Convert.ToString(dr["ArticuloCodigoDeBarras"]),
                                   ArticuloDescripcion = Convert.ToString(dr["ArticuloDescripcion"]),
                                   ArticuloUbicacionEnDeposito = Convert.ToString(dr["ArticuloUbicacionEnDeposito"]),
                                   ArticuloPesoEquivalenciaUnitario = Convert.ToDecimal(dr["ArticuloPesoEquivalenciaUnitario"]),
                                   ArticuloVolumenEquivalenciaUnitario = Convert.ToDecimal(dr["ArticuloVolumenEquivalenciaUnitario"]),
                                   ArticuloTipoDeEnvaseNombre = Convert.ToString(dr["ArticuloTipoDeEnvaseNombre"]),
                                   ArticuloUnidadesPorEnvase = Convert.ToInt32(dr["ArticuloUnidadesPorEnvase"]),
                                   ArticuloUnidadesPorBolson = Convert.ToInt32(dr["ArticuloUnidadesPorBolson"]),
                                   PesoMaximoBolson = Convert.ToDouble(dr["PesoMaximoBolson"]),
                                   PedidoCantidad = Convert.ToDecimal(dr["PedidoCantidad"]),
                                   CantidadPreparada = Convert.ToDecimal(dr["CantidadPreparada"]),
                                   PreparacionOrden = Convert.ToInt32(dr["PreparacionOrden"]),
                                   IdAcopiador = Convert.ToInt32(dr["IdAcopiador"]),
                                   Cantidad = dr["Cantidad"] != DBNull.Value ? Convert.ToDecimal(dr["Cantidad"]) : 0,
                                   Finalizado = dr["Finalizado"] != DBNull.Value ? Convert.ToInt32(dr["Finalizado"]) : 0,
                                   IdEstadoArticuloAsignado = estadoAriculoEnProceso,
                                   PedidoOrdenAcopio = dr["PedidoOrdenAcopio"] != DBNull.Value ? Convert.ToInt32(dr["PedidoOrdenAcopio"]) : 0,
                                   Gestionado = 0,
                                   RegistroNoExportado = false,
                                   PedidoPreparacionSinStock = false,
                                   PedidoPreparacionGestionadoCompleto = false
                                });
                            }
                        }
                    }

                }
                catch (Exception ex)
                {
                    LastError = ex.Source + "-" + ex.Message;
                }
                return listPedidos;
            });
        }

        /**************************************************************************************************
       * Metodo:		InsertEvento
       * Descripcion: Inserta un registro en la tabla Eventos de la base de datos remota.
       * Parametro:	Evento
       * Retorna:     Retorna tru si la registracion fue ok.
      ***************************************************************************************************/
        public static bool InsertEvento(Evento evento)
        {
            bool registracionOk = false;
        
            try
            {
                string strQuery = String.Format("INSERT INTO `mcr_eventos` (fechahora, idterminal, idAcopiador, idoperador, idBulto, numBulto, PreparacionTipo, PreparacionSucursal, PreparacionNumero," +
                    "PedidoTipo, PedidoSucursal, PedidoNumero, tipo, detalle ) VALUES({{ts '{0}'}}, '{1}', '{2}', '{3}', '{4}', '{5}', '{6}', '{7}', '{8}', '{9}', '{10}', '{11}', '{12}', '{13}');",
                  evento.FechaHora.ToString("yyyy-MM-dd HH:mm:ss"),
                  evento.IdTerminal,
                  evento.IdAcopiador,
                  evento.IdOperador,
                  evento.IdBulto,
                  evento.NumBulto,
                  evento.PreparacionTipo,
                  evento.PreparacionSucursal,
                  evento.PreparacionNumero,
                  evento.PedidoTipo,
                  evento.PedidoSucursal,
                  evento.PedidoNumero,
                  evento.Tipo,
                  evento.Detalle
                  );
                registracionOk = ExecuteCommand( strQuery ) == 1;
            } catch(Exception ex)
            {
                LastError = "Error en Base de Datos: " + ex.Source + "--" + ex.Message;
            }
            return registracionOk;
        }

        /***************************************************************************************
     Metodo:		ExtistPedidoPreparacion
                    Devuelve un PedidoAsignado que cumplac con todas las condiciones o null
                    si no encuenttra.
     *****************************************************************************************/
      public static async Task<bool> ExtistPedidoPreparacion(PedidoAsignado pedidoAsignado)
        {
            return await Task.Run(() => {
                bool exist = false;
                DataTable dt = new DataTable();
                while (!isConnected())
                {
                    DbConnection.Open();
                }
                try
                {
                    if (!isConnected())
                        DbConnection.Open();

                    if (DbMySql.Connect())
                    {
                        string query = String.Format("SELECT * FROM mcr_pedidosdetalleasignado WHERE PreparacionTipo = '{0}' AND PreparacionSucursal = {1} AND PreparacionNumero = {2} AND PedidoTipo = '{3}' AND PedidoSucursal = {4} AND PedidoNumero = {5} AND idAcopiador = {6} AND IdTerminal = {7} AND ArticuloCodigo = '{8}' AND IdEstadoArticuloAsignado = 2;",
                            pedidoAsignado.PreparacionTipo, pedidoAsignado.PreparacionSucursal, pedidoAsignado.PreparacionNumero, pedidoAsignado.PedidoTipo, pedidoAsignado.PedidoSucursal, pedidoAsignado.PedidoNumero, pedidoAsignado.IdAcopiador, pedidoAsignado.IdTerminal, pedidoAsignado.ArticuloCodigo);
                        dt = DbMySql.LoadDataTable_FromQuery(query);
                        exist = dt.Rows.Count == 1;
                    } 
                    
                }
                catch (Exception ex)
                {
                    LastError = ex.Source + "-" + ex.Message;
                }
                return exist;
            });           
        }

        /***********************************************************************************************************
   Metodo:		ExtistArticuloPendientePesar
                Devuelve true si en la BBDD encuentra algún artículo pendiente de pesar(estadoArticuloGestionado = 3
                para el id de Acopiador y Terminal Dependiente configurados. 
   *****************************************************************************************************************/
        public static async Task<bool> ExtistArticuloPendientePesar()
        {
            return await Task.Run(() => {
                bool exist = false;
                int estadoAriculoPendienteDePesar = (int)TYPE_ESTADO_ARTICULO_ASIGNADO.Procesado;
                DataTable dt = new DataTable();
                while (!isConnected())
                {
                    DbConnection.Open();
                }
                try
                {
                    if (!isConnected())
                        DbConnection.Open();

                    if (DbMySql.Connect())
                    {
                        string query = String.Format("SELECT * FROM mcr_pedidosdetalleasignado WHERE idAcopiador = {0} AND IdTerminal = {1} AND IdEstadoArticuloAsignado = {2};",
                            ConfigApp.IdAcopiador, ConfigApp.IdTerminal, estadoAriculoPendienteDePesar);
                        dt = DbMySql.LoadDataTable_FromQuery(query);
                        exist = dt.Rows.Count > 0;
                    }

                }
                catch (Exception ex)
                {
                    LastError = ex.Source + "-" + ex.Message;
                }
                return exist;
            });
        }

        /**************************************************************************************************
         * Metodo:		UpDatePedidosDetalleAsignado
         * Descripcion: Actualiza los campos Cantidad, Finalizado y IdEstadoArticuloAsignado de la tabla
         * mcr_pedidosdetalleasignado.
         * Parametro:	UpdatePedidoPreparacionModel
         * Retorna:     Retorna tru si la registracion fue ok.
        ***************************************************************************************************/
        public static bool UpDatePedidosDetalleAsignado(PedidoAsignado uppm)
        {
            bool updateOk = false;

            try
            {
                string query = String.Format("UPDATE mcr_pedidosdetalleasignado SET Cantidad = '{0}', Finalizado = '{1}', IdEstadoArticuloAsignado = '{2}'" +
                    "WHERE Registro = {3}", uppm.Cantidad, uppm.Finalizado, uppm.IdEstadoArticuloAsignado, uppm.Registro);
                
                updateOk = ExecuteCommand(query) == 1;
            } catch(Exception ex)
            {
                LastError = "Error en Base de Datos: " + ex.Source + "--" + ex.Message;
            }
            return updateOk;
        }


        #endregion

        #region METODOS GENERALES PARA QUERYS, COMMANDS , STOREPROCEDURE 
        /***************************************************************************************
        Metodo:		LoadDataTable_FromQuery
        *****************************************************************************************/
        public static DataTable LoadDataTable_FromQuery(string query)
        {
            LastError = "";
            DataTable ds = new DataTable();
            MySqlCommand command;
            try
            {
                command = new MySqlCommand(query, DbConnection);
                ds.Load(command.ExecuteReader(), LoadOption.OverwriteChanges);
            }
            catch (MySqlException ex)
            {
                LastError="Error en Base de Datos: " + ex.Source + "--" + ex.Message;
            }
            return ds;
        }

        /***************************************************************************************
        Metodo:		LoadDataTable_FromSP
        *****************************************************************************************/
        public static DataTable LoadDataTable_FromSP(string nameSP)
        {
            LastError = "";
            DataTable ds = new DataTable();
            MySqlCommand command;
            try
            {
                command = new MySqlCommand(nameSP, DbConnection);
                command.CommandType = CommandType.StoredProcedure;
                ds.Load(command.ExecuteReader(), LoadOption.OverwriteChanges);
            }
            catch (MySqlException ex)
            {
                LastError = "Error en Base de Datos: " + ex.Source + "--" + ex.Message;
            }
            return ds;
        }
        /***************************************************************************************
        Metodo:		LoadDataSet_FromQuery
        *****************************************************************************************/
        public static DataSet LoadDataSet_FromQuery(string query, string nameTableLoaded)
        {
            LastError = "";
            DataSet ds = new DataSet();
            MySqlCommand command;
            try
            {
                command = new MySqlCommand(query, DbConnection);
                ds.Load(command.ExecuteReader(), LoadOption.OverwriteChanges, nameTableLoaded);
            }
            catch (MySqlException ex)
            {
                LastError = "Error en Base de Datos: " + ex.Source + "--" + ex.Message;
            }
            return ds;
        }
        /***************************************************************************************
        Metodo:		LoadDataSet_FromSP
        *****************************************************************************************/
        public static DataSet LoadDataSet_FromSP(string nameSP, string nameTableLoaded)
        {
            LastError = "";
            DataSet ds = new DataSet();
            MySqlCommand command;
            try
            {
                command = new MySqlCommand(nameSP, DbConnection);
                command.CommandType = CommandType.StoredProcedure;
                ds.Load(command.ExecuteReader(), LoadOption.OverwriteChanges, nameTableLoaded);
            }
            catch (MySqlException ex)
            {
                LastError = "Error en Base de Datos: " + ex.Source + "--" + ex.Message;
            }
            return ds;
        }

        /***************************************************************************************
        Metodo:		ExecuteCommad
        *****************************************************************************************/
        public static int ExecuteCommand(string sqlCommand)
        {
            LastError = "";
            int rowsAfect = 0;
            MySqlCommand command;
            try
            {
                command = new MySqlCommand(sqlCommand, DbConnection);
                rowsAfect = command.ExecuteNonQuery();
            }
            catch (MySqlException ex)
            {
                LastError = "Error en Base de Datos: " + ex.Source + "--" + ex.Message;
            }
            return rowsAfect;
        }
        /***************************************************************************************
        Metodo:		ExecuteSP
        *****************************************************************************************/
        public static int ExecuteSP(string nameSP)
        {
            LastError = "";
            int rowsAfect = 0;
            MySqlCommand command;
            try
            {
                command = new MySqlCommand(nameSP, DbConnection);
                command.CommandType = CommandType.StoredProcedure;
                rowsAfect = command.ExecuteNonQuery();
            }
            catch (MySqlException ex)
            {
                LastError = "Error en Base de Datos: " + ex.Source + "--" + ex.Message;
            }
            return rowsAfect;
        }
        /***************************************************************************************
        Metodo:		ExecuteSP
        Recive una lista de parametros que requiera el SP , pueden ser de entrada o salida
        *****************************************************************************************/
        public static int ExecuteSP(string nameSP,List<MySqlParameter> parameters)
        {
            LastError = "";
            int rowsAfect = 0;
            MySqlCommand command;
            try
            {
                command = new MySqlCommand(nameSP, DbConnection);
                command.CommandType = CommandType.StoredProcedure;
                command.Parameters.AddRange(parameters.ToArray());
                rowsAfect = command.ExecuteNonQuery();
            }
            catch (MySqlException ex)
            {
                LastError = "Error en Base de Datos: " + ex.Source + "--" + ex.Message;
            }
            return rowsAfect;
        }

        /***************************************************************************************
         * Metodo:	    FindFieldTable
         *              Busca un valor en una columna de una tabla , si escuentra coincidencia
         *              retorna true.
         * Parametro:   (string) nombreTabla, (string) nombreCampo , (string) valor
         * Retorna:     (bool) true si existe
        *****************************************************************************************/
        public static bool FindFieldTable(string nombreTabla, string nombreCampo, string valor)
        {
            LastError = "";
            MySqlDataReader recordSet;
            bool existe = false;
            string strCmd = String.Format(" SELECT {0} FROM {1} WHERE {0} = {2} ", nombreCampo, nombreTabla, valor);
            try
            {
                MySqlCommand dbCommand = new MySqlCommand(strCmd, DbConnection);
                recordSet = dbCommand.ExecuteReader();
                if (recordSet.HasRows)
                {
                    existe = true;
                }
                recordSet.Close();
            }
            catch (MySqlException ex)
            {
                LastError = "Error en Base de Datos: " + ex.Source + "--" + ex.Message;
            }
            return existe;
        }
        /***************************************************************************************
         * Metodo:	    GetMaxValueFieldTable
         *              Busca en una columna de tipo int de una tabla el maximo valor que posee.
         * Parametro:   (string) nombreTabla, (string) nombreCampo
         * Retorna:     (int) maximo valor obtenido.
        *****************************************************************************************/
        public static int GetMaxValueFieldTable(string nombreTabla, string nombreCampo)
        {
            LastError = "";
            MySqlDataReader recordSet;
            int maxValue = 0;
            string strCmd = String.Format(" SELECT MAX({0})AS MAXVALUE FROM {1} ", nombreCampo, nombreTabla);
            try
            {
                MySqlCommand dbCommand = new MySqlCommand(strCmd, DbConnection);
                recordSet = dbCommand.ExecuteReader();
                if (recordSet.HasRows)
                {
                    recordSet.Read();
                    maxValue = GetCampoRecordset<int>(recordSet, "MAXVALUE");
                }
                recordSet.Close();
            }
            catch (MySqlException ex)
            {
                LastError = "Error en Base de Datos: " + ex.Source + "--" + ex.Message;
            }
            return maxValue;
        }
        #endregion

        #region FUNCIONES DE LECTURAS SEGURAS DE COLUMNAS DE UN RECORDSET
        /**************************************************************************************************
            Metodo:		GetCampoRecordset
                        Obtener el valor de una columna de tipo <T> desde un DataReader
            Parametros:	(MySqlDataReader) recordset:
                        (string) nombreCampo:
                        (T) valorDefault:
            Retorna:    Retorna el valor obtenido de tipo <T>. 
        ***************************************************************************************************/
        public static T GetCampoRecordset<T>(MySqlDataReader recordset, string nombreCampo, T valDefault = default(T))
        {
            LastError = "";
            T valor = valDefault;
            try
            {
                int idxColumna = recordset.GetOrdinal(nombreCampo);
                if (!recordset.IsDBNull(idxColumna))
                {
                    if (typeof(T) == typeof(bool))
                    {
                        valor = (T)Convert.ChangeType(recordset[nombreCampo], typeof(bool));
                    }
                    else
                    {
                        valor = recordset.GetFieldValue<T>(idxColumna);
                    }
                }
            }
            catch (MySqlException ex)
            {
                LastError = "Error en Base de Datos: " + ex.Source + "--" + ex.Message;
            }
            return valor;
        }
        #endregion

    }
   

}
