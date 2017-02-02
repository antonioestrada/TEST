using AccesoDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFPGranjas.Backend.Catalogos
{
    class CTarifas
    {
        #region ABC Tarifas
        public ResultadoTrnx abcTarifas(Object[] parames)
        {
            ResultadoTrnx resultado = new ResultadoTrnx();
           
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_tarifas_ABCMantenimiento", parames);
            //seteo las variables de mi clase  ResultadoTrnx

            //seteo 
            resultado.Cve_resultado = Convert.ToInt16(resul.GetValue(0));
            resultado.Mensaje = Convert.ToString(resul.GetValue(1));

            return resultado;
        }
        #endregion

        #region AltaBajaCambio Tarifas Manto
        public ResultadoTrnx altaTarifaManto(Object[] parames)
        {
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_ABCTMantenimiento", parames);
            //seteo las variables de mi clase  ResultadoTrnx
            ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            resultado.Cve_resultado = Convert.ToInt16(resul.GetValue(0));
            resultado.Mensaje = Convert.ToString(resul.GetValue(1));

            return resultado;
        }
        #endregion

        #region consulta Tarifa Mantenimiento DG
        public void consultaTarifas(DataGridView dgConsulta)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();
            string estatus;
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_tarifas_CMantenimiento(1,0)");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                //id_tarifa
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                //descripcion
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();
                //valor
                dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2).ToString();
                //fecha_apl
                dgConsulta.Rows[renglon].Cells[3].Value = reader.GetValue(3).ToString();
                //estatus
                estatus = reader.GetValue(4).ToString();
                dgConsulta.Rows[renglon].Cells[4].Value = estatus;
                if (estatus == "I")
                {
                    dgConsulta.Rows[renglon].DefaultCellStyle.BackColor = Color.LightGray;
                }
                else if (estatus == "A")
                {
                    dgConsulta.Rows[renglon].DefaultCellStyle.BackColor = Color.LightGreen;
                    dgConsulta.Rows[renglon].Selected = true;
                    dgConsulta.FirstDisplayedScrollingRowIndex = dgConsulta.RowCount - 1;
                }
                //valor
                dgConsulta.Rows[renglon].Cells[5].Value = reader.GetValue(5).ToString();

            }

            Conexion.FinalizarSesion();
        }
        #endregion

        #region consulta Tarifa Mantenimiento Id
        public ResultadoTrnx consultaTarifasId(int idTar)
        {
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader resul = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_tarifas_CMantenimiento(2,"+idTar+")");

            ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            resultado.tariID = resul.GetValue(0).ToString();
            resultado.tariTipo = resul.GetValue(1).ToString();
            resultado.tariValor= resul.GetValue(3).ToString();
            resultado.tariFechaAplica= resul.GetValue(4).ToString();
            resultado.tariEstatus= resul.GetValue(5).ToString();            
            Conexion.FinalizarSesion();

            return resultado;
        }
        #endregion

        #region consulta Tarifa Mantenimiento Vigente
        public ResultadoTrnx consultaTarifasVigente()
        {
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader resul = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_tarifas_CMantenimiento(3,0)");

            ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            if (resul.Read())
            {
                resultado.tariID = resul.GetValue(0).ToString();
                resultado.tariTipo = resul.GetValue(1).ToString();
                resultado.tariValor = resul.GetValue(3).ToString();
                resultado.tariFechaAplica = resul.GetValue(4).ToString();
                resultado.tariEstatus = resul.GetValue(5).ToString();
            }
            
            Conexion.FinalizarSesion();
            return resultado;
        }
        #endregion

        #region consulta Cuotas CBA DG
        public void consultaCBAMensual(DataGridView dgConsulta, int inOp, string inAnio, int idMedidor)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_CalculaCBA_Mensual(" + inOp+",0,"+inAnio+","+idMedidor+")");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                //id_tarifa
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(1).ToString();
                //descripcion
                dgConsulta.Rows[renglon].Cells[1].Value =reader.GetValue(2).ToString();
                //valor
                dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(3).ToString();
                //fecha_apl
                dgConsulta.Rows[renglon].Cells[3].Value = reader.GetValue(4).ToString();
                //descripcion
                dgConsulta.Rows[renglon].Cells[4].Value =reader.GetValue(5).ToString();
                //valor
                dgConsulta.Rows[renglon].Cells[5].Value = reader.GetValue(6).ToString();
                //fecha_apl
                dgConsulta.Rows[renglon].Cells[6].Value = reader.GetValue(7).ToString();


            }

            Conexion.FinalizarSesion();
        }
        #endregion
    }
}
