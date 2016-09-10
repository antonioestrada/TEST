using AccesoDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFPGranjas.Backend.Catalogos
{
    class CPerfiles
    {
        public ResultadoTrnx altaBPerfil(Object[] parames)
        {
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_ABCPerfil", parames);
           //seteo las variables de mi clase  ResultadoTrnx
            ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            resultado.Cve_resultado = Convert.ToInt16(resul.GetValue(0));
            resultado.Mensaje = Convert.ToString(resul.GetValue(1));

            return resultado;
        }



        #region consulta catalogo perfiles
        public void consultaPerfiles(DataGridView dgConsulta, int op)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();
            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CUsuario(" + op + ")");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();
               


            }
            Conexion.FinalizarSesion();
        }
        #endregion

    }
}
