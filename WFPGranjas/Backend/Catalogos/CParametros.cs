using AccesoDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WFPGranjas.Backend.Catalogos
{
    class CParametros
    {
        public ResultadoTrnx altaParametros(Object[] parames)
        {
            IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_ABCParametros", parames);
            //seteo las variables de mi clase  ResultadoTrnx
            ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            resultado.Cve_resultado = Convert.ToInt16(resul.GetValue(0));
            resultado.Mensaje = Convert.ToString(resul.GetValue(1));

            return resultado;
        }

        public ResultadoTrnx editaParametros(Object[] parames)
        {
            IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_EditParametros", parames);
            //seteo las variables de mi clase  ResultadoTrnx
            ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            resultado.Cve_resultado = Convert.ToInt16(resul.GetValue(0));
            resultado.Mensaje = Convert.ToString(resul.GetValue(1));

            return resultado;
        }

        #region consulta Parametros
        public ResultadoTrnx consultaParam(string inParam)
        {
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CParametros(1,'"+ inParam + "')");
            ResultadoTrnx resultado = new ResultadoTrnx();
            //siclamos cada registro que contiene nuestro reader
            if (reader.Read())
            {
                //code_param
                resultado.Pcode_param = reader.GetValue(0).ToString();
                //valor
                resultado.Pvalor = reader.GetValue(1).ToString();
            }
            else
            {
                //code_param
                resultado.Pcode_param = "";
                //valor
                resultado.Pvalor = "";
            }
            Conexion.FinalizarSesion();
            return resultado;
        }
        #endregion
    }
}
