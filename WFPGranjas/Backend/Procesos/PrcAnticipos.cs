
using AccesoDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WFPGranjas.Backend.Catalogos;

namespace WFPGranjas.Backend.Procesos
{
    class PrcAnticipos
    {
       
        #region genera  cuotas
        public double generaCuotas(DataGridView dgConsulta, int idColono, int idManzana, int idLote, string listadoMeses)
        {
            //limpiamos el datagridview
            //Conexion.conectar();
            dgConsulta.Rows.Clear();
            double importeTotal = 0;
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_Antp_CalculaPartidas(" + idColono + "," + idManzana + "," + idLote + ",'" + listadoMeses + "')");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                //Servicio
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                //Fecha
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();
                //Cuota
                String importe = String.Format(CultureInfo.InvariantCulture,
                                 "{0:0,0.0}", reader.GetValue(2).ToString());
                dgConsulta.Rows[renglon].Cells[2].Value = "$ " + importe;

                importeTotal += Double.Parse(reader.GetValue(2).ToString());
            }
            Conexion.FinalizarSesion();
            return importeTotal;
        }
        #endregion

        #region consulta catalogo bancos
        public void consultaBancos(ComboBox cmb)
        {


            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CBanco()");
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

        #region consulta cuotas pagadas Mantenimiento
        public void consultaCuotasPagadas(List<int> cmb,int idLote)
        {


            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_Antp_CAnticipos("+idLote+")");
            //siclamos cada registro que contiene nuestro reader
           
            while (reader.Read())
            {
                 cmb.Add(int.Parse(reader.GetValue(0).ToString()));

            }
          
            Conexion.FinalizarSesion();
        }
        #endregion


        #region obitene  periodo actual
        public int obtienePeriodoActual()
        {
            int resultado = 0;
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_Antp_CPeriodo");
            resultado = Convert.ToInt16(resul.GetValue(0));
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

        #region registra  cuotas
        public Boolean registroCuotas(Object[] parames,int servicio)
        {
            System.Data.IDataReader resul = null;

            if (servicio == 2)
            {
                resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_Antp_AddAnticipo", parames);
            }
            if (servicio == 3)
            {
                resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_Antp_AddAnticipoAgua", parames);
            }
            if (servicio == 5)
            {
                resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_Antp_AddCasaClub", parames);
            }
            //seteo 
            Boolean resultado = Convert.ToBoolean(resul.GetValue(0));
            Conexion.FinalizarSesion();

            return resultado;
        }
        #endregion

        #region valida adeudo por lote
        public Boolean validacionAdeudo(Object[] parames)
        {

            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_Antp_ValidaAdeudo", parames);

            //seteo 
            Boolean resultado = Convert.ToBoolean(resul.GetValue(0));
            Conexion.FinalizarSesion();

            return resultado;
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
                resultado.idLoteDTO = Convert.ToInt16(reader.GetValue(0).ToString());
               
                //Colono
                resultado.conoloDTO = reader.GetValue(5).ToString();
                //manzana
               
                resultado.id_mzaDTO = reader.GetValue(1).ToString();

                //direccion
                resultado.direccionDTO = "Manzana: "+ reader.GetValue(2).ToString()+ " Lote: "+ reader.GetValue(3).ToString();
                //idColono
                resultado.idConoloDTO = Convert.ToInt16(reader.GetValue(6).ToString());

            }
            else
            {
                resultado.idLoteDTO = 0;
                //Colono
                resultado.conoloDTO = "";
                //direccion
                resultado.direccionDTO = "";
                //m2
                resultado.idConoloDTO = 0;
            }
            Conexion.FinalizarSesion();
            return resultado;
        }
        #endregion


    }
}
