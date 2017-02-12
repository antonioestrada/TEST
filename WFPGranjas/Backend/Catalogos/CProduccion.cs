using AccesoDatos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WFPGranjas.Backend.Catalogos
{
    class CProduccion
    {
        public int  produccion(Object[] parames)
        {
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_CAdd_Produccion", parames);
            //seteo las variables de mi clase  ResultadoTrnx
            int resultado = 0;
            //seteo 
            resultado = Convert.ToInt32(resul.GetValue(0));
            Conexion.FinalizarSesion();
            return resultado;
        }

        #region borra produccion CBA DG
        public int borrarProduccionMensual(Object[] parames)
        {
            //llenamos nuestro reader con la consulta de nuestro SP
            System.Data.IDataReader reader = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_Del_Produccion", parames);
            //siclamos cada registro que contiene nuestro reader
            int resultado = 0;
            //seteo 
            resultado = Convert.ToInt32(reader.GetValue(0));

            Conexion.FinalizarSesion();
            return resultado;
        }
        #endregion

        public Boolean validaProduccion(Object[] parames)
        {
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_CalculaCBA_ValidaProd", parames);
            //seteo las variables de mi clase  ResultadoTrnx
            Boolean resultado = false;
            //seteo 
            resultado = Convert.ToBoolean(resul.GetValue(0));
            Conexion.FinalizarSesion();
            return resultado;
        }

    }
}
