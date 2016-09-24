using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDatos;
using System.Windows.Forms;
using System.Data;

namespace WFPGranjas.Backend.Procesos
{
    class PrcConvenios
    {


        #region valida adeudo por lote
        public Boolean validacionAdeudos(Object[] parames)
        {

            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_Convenios_ValidaAdeudo", parames);

            //seteo 
            Boolean resultado = Convert.ToBoolean(resul.GetValue(0));
            Conexion.FinalizarSesion();

            return resultado;
        }
        #endregion


        #region consulta adeudos por concepto
        public void consultaAdeudosConcepto(DataGridView dgConsulta,int idLote, int pServicio)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();

            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_PagoMto_CAdeudos("+idLote + ","+pServicio+")");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                //concepto
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(5).ToString();
                //periodo
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(6).ToString();
                //importe
                dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2).ToString();
            }
            Conexion.FinalizarSesion();
        }
        #endregion
    }
}
