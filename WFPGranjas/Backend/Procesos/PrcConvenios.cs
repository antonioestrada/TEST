using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using AccesoDatos;
using System.Windows.Forms;
using System.Data;
using System.Globalization;

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


        #region valida convenios por lote
        public Boolean validacionConvenios(Object[] parames)
        {

            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_Convenios_ValidaConvenio", parames);

            //seteo 
            Boolean resultado = Convert.ToBoolean(resul.GetValue(0));
            Conexion.FinalizarSesion();

            return resultado;
        }
        #endregion



        #region consulta adeudos por concepto
        public double consultaAdeudosConcepto(DataGridView dgConsulta,int idLote, int pServicio)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();
            double total = 0;
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
               
                double importe = double.Parse(reader.GetValue(2).ToString());

               
                double mora = double.Parse(reader.GetValue(10).ToString());
                double multa = 0;
                if (pServicio == 2) {
                     multa = double.Parse(reader.GetValue(11).ToString());
                }
                //importe
                String importeS = String.Format(CultureInfo.InvariantCulture,
                               "{0:0,0.0}", importe+ multa);

                total += importe  + multa;
                dgConsulta.Rows[renglon].Cells[2].Value = "$ "+ importeS;

            }
            Conexion.FinalizarSesion();
            return total;
        }
        #endregion


        #region Genera Convenio
        public double generaConvenio(DataGridView dgConsulta, int idLote, double impTotal,double impConvenio,double pagoMenual,int diaLimite,Boolean bandera)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();
            double total = 0;
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_Convenios_GeneraPagos(" + idLote + "," + impTotal + ","+ impConvenio + ","+ pagoMenual + ","+ diaLimite + ","+ bandera + ")");
            //siclamos cada registro que contiene nuestro reader
            if (!bandera)
            {
                while (reader.Read())
                {
                    //lenamos nuestro grid con nuestro reader.
                    int renglon = dgConsulta.Rows.Add();
                    //concepto
                    dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                    //numPgo
                    dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(3).ToString();
                    //periodo
                    dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(4).ToString();
                    //importe
                    String importeS = String.Format(CultureInfo.InvariantCulture,
                                   "{0:0,0.0}", reader.GetValue(5).ToString());
                    double importe = double.Parse(reader.GetValue(5).ToString());
                    total += importe;
                    dgConsulta.Rows[renglon].Cells[3].Value = "$ " + importeS;

                }
            }
            Conexion.FinalizarSesion();
            return total;
        }

        #endregion


        #region Registra Convenio
        public Boolean registroConvenio( int idLote, double impTotal, double impConvenio, double pagoMenual, int diaLimite, Boolean bandera)
        {
            //limpiamos el datagridview
            Boolean resultado = false;
            double total = 0;
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_Convenios_GeneraPagos(" + idLote + "," + impTotal + "," + impConvenio + "," + pagoMenual + "," + diaLimite + "," + bandera + ")");
            //siclamos cada registro que contiene nuestro reader
           //resultado = Boolean.Parse(reader.GetValue(0).ToString());
            resultado = true;
            Conexion.FinalizarSesion();
            return resultado;
        }

        #endregion
    }
}
