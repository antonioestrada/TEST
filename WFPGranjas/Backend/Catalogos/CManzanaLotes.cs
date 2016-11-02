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
    class CManzanaLotes
    {
        public ResultadoTrnx altaManzana(Object[] parames)
        {
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_ABCManzana", parames);
            //seteo las variables de mi clase  ResultadoTrnx
            ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            resultado.Cve_resultado = Convert.ToInt16(resul.GetValue(0));
            resultado.Mensaje = Convert.ToString(resul.GetValue(1));

            return resultado;
        }

        #region consulta catalogo manzanas
        public void consultaManzanas(DataGridView dgConsulta)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();
           
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CManzana()");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                //id_manzana
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                //manzana
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();
            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region Llena combo
        public void consultaMazaCombo(ComboBox combo)
        {
            //llenamos nuestro DataTable con la consulta de nuestro SP
            DataTable obtieneMza = Conexion.GDatos.TraerDataTable("gestion_granjas.sp_catalogo_CManzana");
            //definimos el list en arreglo
            List<ResultadoTrnx> arreglo = new List<ResultadoTrnx>();
            //recorremos el resultado de nuestro SP
            foreach (DataRow row in obtieneMza.Rows)
            {
                //seteamos nnuestro arreglo que contendra el id y manzana
                arreglo.Add(new ResultadoTrnx { id_mzaDTO = row[0].ToString(), mzaDTO = row[1].ToString() });
            }
            var ab = from a in arreglo
                     select a;
            //seteamos nuestro combro
            combo.DataSource = ab.ToList();
            combo.ValueMember = "id_mzaDTO";
            combo.DisplayMember = "mzaDTO";
            //cerramos conexion
            Conexion.FinalizarSesion();
        }
        #endregion

        #region Llena combo Reporte
        public void consultaMazaComboRPT(ComboBox combo)
        {
            //llenamos nuestro DataTable con la consulta de nuestro SP
            DataTable obtieneMza = Conexion.GDatos.TraerDataTable("gestion_granjas.sp_catalogo_CManzana");
            //definimos el list en arreglo
            List<ResultadoTrnx> arreglo = new List<ResultadoTrnx>();
            arreglo.Add(new ResultadoTrnx { id_mzaDTO = "0", mzaDTO = "Todos" });
            //recorremos el resultado de nuestro SP
            foreach (DataRow row in obtieneMza.Rows)
            {
                //seteamos nnuestro arreglo que contendra el id y manzana
                arreglo.Add(new ResultadoTrnx { id_mzaDTO = row[0].ToString(), mzaDTO = row[1].ToString() });
            }
            var ab = from a in arreglo
                     select a;
            //seteamos nuestro combro
            combo.DataSource = ab.ToList();
            combo.ValueMember = "id_mzaDTO";
            combo.DisplayMember = "mzaDTO";
            //cerramos conexion
            Conexion.FinalizarSesion();
        }
        #endregion

        public ResultadoTrnx altaLote(Object[] parames)
        {
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_ABCLote", parames);
            //seteo las variables de mi clase  ResultadoTrnx
            ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            resultado.Cve_resultado = Convert.ToInt16(resul.GetValue(0));
            resultado.Mensaje = Convert.ToString(resul.GetValue(1));

            return resultado;
        }

        #region consulta catalogo manzanas/lotes
        public void consultaManLotes(DataGridView dgConsulta, Object[] parames)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();

            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_CLote",parames);
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                //id_lote
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                //id_manzana
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();
                //manzana
                dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2).ToString();
                //lote
                dgConsulta.Rows[renglon].Cells[3].Value = reader.GetValue(3).ToString();
                //m2
                dgConsulta.Rows[renglon].Cells[4].Value =double.Parse( reader.GetValue(4).ToString());
                //propietario
                dgConsulta.Rows[renglon].Cells[5].Value = reader.GetValue(5).ToString();
                //id_colono
                dgConsulta.Rows[renglon].Cells[6].Value = reader.GetValue(6).ToString();
            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region consulta Lote y Arroja Info del Lote
        public ResultadoTrnx consultaLoteColonos(Object[] parames)
        {

            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_CLote", parames);
            ResultadoTrnx resultado = new ResultadoTrnx();
            //siclamos cada registro que contiene nuestro reader

            if (reader.Read())
            {
                //id-lote
               resultado.idLoteDTO= Convert.ToInt16(reader.GetValue(0).ToString());
                //Colono
               resultado.conoloDTO=  reader.GetValue(5).ToString();
                //direccion
                resultado.direccionDTO = "Manzana: " + reader.GetValue(2).ToString() + " Lote: " + reader.GetValue(3).ToString();
                //m2
                resultado.m2DTO = Convert.ToDouble(reader.GetValue(4).ToString());

            }
            else
            {
                resultado.idLoteDTO = 0;
                //Colono
                resultado.conoloDTO = "";
                //direccion
                resultado.direccionDTO = "";
                //m2
                resultado.m2DTO = 0;
            }            
            Conexion.FinalizarSesion();
            return resultado;
        }
        #endregion

        #region consulta periodos
        public ResultadoTrnx consultaPeriodos()
        {

            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("call gestion_granjas.sp_CPeriodo()");
            ResultadoTrnx resultado = new ResultadoTrnx();
            //siclamos cada registro que contiene nuestro reader

            if (reader.Read())
            {
                resultado.periodoEstatus = reader.GetValue(0).ToString();
            }
            else
            {
                resultado.periodoEstatus = "No hay periodo Activo";
            }
            Conexion.FinalizarSesion();
            return resultado;
        }
        #endregion


    }
}
