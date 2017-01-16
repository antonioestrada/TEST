using AccesoDatos;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WFPGranjas.Backend.Procesos
{
    class Bitacora
    {

        #region registra  bitacora
        public Boolean registroBitacora(Object[] parames)
        {
            Boolean resultado = true;
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_bitacora_sistema", parames);
            resultado = Convert.ToBoolean(resul.GetValue(0));
            /*
            while (resul.Read())
            {
                //seteo 
                 resultado = Convert.ToBoolean(resul.GetValue(0));
            }*/
            Conexion.FinalizarSesion();

            return resultado;
        }
        #endregion
    }
}
