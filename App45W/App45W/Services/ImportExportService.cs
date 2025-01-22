using App45W.Entities;
using App45W.Models;
using DbMySql;
using System;
using System.Collections.Generic;
using System.Text;
using System.Threading.Tasks;

namespace App45W.Services
{
    public static class ImportExportService
    {
       public static int SincronizarEventos()
        {
            int registrosInsertados = 0;
            List<Evento> listEventos = new List<Evento>();
            listEventos = DbLocal.GetEventos();

            foreach(Evento e in listEventos)
            {
                if(DbMySql.DbMySql.InsertEvento(e)) registrosInsertados++;
            }
            return registrosInsertados;
        }

        public static async Task<bool> ExtistPedidoPreparacion(PedidoAsignado pa)
        {
            return await DbMySql.DbMySql.ExtistPedidoPreparacion(pa);

        }

        public static async Task<bool> ExtistArticuloPendientePesar()
        {
            return await DbMySql.DbMySql.ExtistArticuloPendientePesar();

        }

        public static bool SincronizarPedidosDetalleAsignado(PedidoAsignado pa)
        {
            return DbMySql.DbMySql.UpDatePedidosDetalleAsignado(pa);
        }

        public static bool SetRegistroNoExportado(int registro)
        {
            return DbLocal.SetRegistroNoExportado(registro);
        }

    }
}
