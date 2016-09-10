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
    class CUsuarios
    {
        public ResultadoTrnx altaBUsuarios(Object[] parames)
        {
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_ABCUsuario", parames);
           //seteo las variables de mi clase  ResultadoTrnx
            ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            resultado.Cve_resultado = Convert.ToInt16(resul.GetValue(0));
            resultado.Mensaje = Convert.ToString(resul.GetValue(1));

            return resultado;
        }

        #region consulta catalogo usuarios
        public void consultaUsuarios(DataGridView dgConsulta, int op)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();
            //iniciamos la conexion con el servidor
           // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CUsuario("+op+")");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();
                dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2).ToString();
                dgConsulta.Rows[renglon].Cells[3].Value = reader.GetValue(3).ToString();
                dgConsulta.Rows[renglon].Cells[4].Value = reader.GetValue(4).ToString();
                dgConsulta.Rows[renglon].Cells[5].Value = reader.GetValue(5).ToString();
                dgConsulta.Rows[renglon].Cells[6].Value = reader.GetValue(6).ToString();
                dgConsulta.Rows[renglon].Cells[7].Value = reader.GetValue(7).ToString();
                dgConsulta.Rows[renglon].Cells[8].Value = reader.GetValue(8).ToString();


            }
            Conexion.FinalizarSesion();
        }
        #endregion



        #region consulta catalogo puestos
        public void consultaPuestos(ComboBox cmb ,int op)
        {
      
           
            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CUsuario("+op+")");
            //siclamos cada registro que contiene nuestro reader
            List<ResultadoTrnx> arreglo = new List<ResultadoTrnx>();
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                ResultadoTrnx puesto=new ResultadoTrnx();
                puesto.Cve_resultado = int.Parse(reader.GetValue(0).ToString());
                puesto.Mensaje = reader.GetValue(1).ToString();

                arreglo.Add(puesto);


            }
            var ab = from a in arreglo
                     orderby a.Cve_resultado
                     select a;
            cmb.DataSource = ab.ToList();
            cmb.DisplayMember = "Mensaje";
            cmb.ValueMember = "Cve_resultado";

            Conexion.FinalizarSesion();
        }
        #endregion

        #region consulta catalogo perfiles
        public void consultaPerfiles(ComboBox cmb, int op)
        {


            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CUsuario(" + op + ")");
            //siclamos cada registro que contiene nuestro reader
            List<ResultadoTrnx> arreglo = new List<ResultadoTrnx>();
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                ResultadoTrnx puesto = new ResultadoTrnx();
                puesto.Cve_resultado = int.Parse(reader.GetValue(0).ToString());
                puesto.Mensaje = reader.GetValue(1).ToString();

                arreglo.Add(puesto);


            }
            var ab = from a in arreglo
                     orderby a.Cve_resultado
                     select a;
            cmb.DataSource = ab.ToList();
            cmb.DisplayMember = "Mensaje";
            cmb.ValueMember = "Cve_resultado";

            Conexion.FinalizarSesion();
        }
        #endregion
    }
}
