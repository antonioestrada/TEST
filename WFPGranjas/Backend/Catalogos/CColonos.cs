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
    class CColonos
    {
        public ResultadoTrnx altaColonos(Object[] parames)
        {
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_ABCColono", parames);
            //seteo las variables de mi clase  ResultadoTrnx
            ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            resultado.Cve_resultado = Convert.ToInt16(resul.GetValue(0));
            resultado.Mensaje = Convert.ToString(resul.GetValue(1));

            return resultado;
        }

        #region consulta catalogo colonos
        public void consultaColonos(DataGridView dgConsulta)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();

            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CColono(1,'0',0)");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                //id_colono
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                //nombre
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();
                //direccion
                dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2).ToString();
                //telefono
                dgConsulta.Rows[renglon].Cells[3].Value = reader.GetValue(3).ToString();
                //correo
                dgConsulta.Rows[renglon].Cells[4].Value = reader.GetValue(4).ToString();
            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region consulta catalogo colonos por nombre
        public void consultaColonosNombre(DataGridView dgConsulta, string nombreC)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();

            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CColono(2,'"+ nombreC + "',0)");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                //id_colono
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                //nombre
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();
                //direccion
                dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2).ToString();
                //telefono
                dgConsulta.Rows[renglon].Cells[3].Value = reader.GetValue(3).ToString();
                //correo
                dgConsulta.Rows[renglon].Cells[4].Value = reader.GetValue(4).ToString();
            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region Busca Colono
        public void buscaColono(DataGridView dgConsulta, string propietario)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();

            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CColonoNombre('"+ propietario + "')");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                //id_colono
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                //nombre
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();
                
               /* //direccion
                dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2).ToString();
                //manzana
                dgConsulta.Rows[renglon].Cells[3].Value = reader.GetValue(5).ToString();
                //lote
                dgConsulta.Rows[renglon].Cells[4].Value = reader.GetValue(6).ToString();*/
            }
            Conexion.FinalizarSesion();
        }
        #endregion


        #region Busca Colono Dir
        public void buscaColonoDir(DataGridView dgConsulta, string propietario)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();

            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CColonoNombre('" + propietario + "')");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                //id_colono
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString() ;
                //nombre
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString() + " - M " + reader.GetValue(8).ToString() + " L " + reader.GetValue(6).ToString();

                //direccion
                dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2).ToString();
                //manzana
                dgConsulta.Rows[renglon].Cells[3].Value = reader.GetValue(5).ToString();
                //lote
                dgConsulta.Rows[renglon].Cells[4].Value = reader.GetValue(6).ToString();
                dgConsulta.Rows[renglon].Cells[5].Value = reader.GetValue(7).ToString();
                dgConsulta.Rows[renglon].Cells[6].Value = reader.GetValue(8).ToString();
                dgConsulta.Rows[renglon].Cells[7].Value = reader.GetValue(1).ToString();
            }
            Conexion.FinalizarSesion();
        }
        #endregion
    }
}
