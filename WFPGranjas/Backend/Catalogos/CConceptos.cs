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
    class CCConceptos
    {
        public ResultadoTrnx altaConceptos(Object[] parames)
        {
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_ABCConceptosCC", parames);
            //seteo las variables de mi clase  ResultadoTrnx
            ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            resultado.Cve_resultado = Convert.ToInt16(resul.GetValue(0));
            resultado.Mensaje = Convert.ToString(resul.GetValue(1));

            return resultado;
        }

        #region consulta catalogo Conceptos
        public void consultaConceptos(DataGridView dgConsulta)
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

        #region consulta catalogo colonos por busqueta text
        public void consultaColonosTXT(DataGridView dgConsulta, string nombreC)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();

            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CConcepto(2,'" + nombreC + "')");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                //id_concepto
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                //nombre
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();
                //importe
                dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2).ToString();
                // cuenta contable
                dgConsulta.Rows[renglon].Cells[3].Value = reader.GetValue(3).ToString();
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


        #region Busca Colono Dir
        public DatosColono buscaColonoFolio( int folio)
        {
            DatosColono datosColono = new DatosColono();
        

            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CColonoFolio(" + folio + ")");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //id_colono
                datosColono.idColono = int.Parse( reader.GetValue(0).ToString());
                //nombre
                datosColono .nombre= reader.GetValue(1).ToString() + " - M " + reader.GetValue(8).ToString() + " L " + reader.GetValue(6).ToString();

                //direccion
                datosColono.direccion = reader.GetValue(2).ToString();
                datosColono.correo = reader.GetValue(4).ToString();
                datosColono.idLote = int.Parse(reader.GetValue(5).ToString());
                datosColono.lote = reader.GetValue(6).ToString();
                datosColono.idManzana = int.Parse(reader.GetValue(7).ToString());
                datosColono.manzana = reader.GetValue(8).ToString();
                datosColono.folio = int.Parse(reader.GetValue(9).ToString());
                datosColono.fechaPago = reader.GetValue(10).ToString();
            }
            Conexion.FinalizarSesion();
            return datosColono;
        }
        #endregion
    }
}
