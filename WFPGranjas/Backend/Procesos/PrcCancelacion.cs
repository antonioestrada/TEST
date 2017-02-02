using AccesoDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFPGranjas.Backend.Procesos
{
    class PrcCancelacion
    {

        #region consulta pagos
        public double consultaPago(DataGridView dgConsulta,int folio,Label txtMora,Label txtImporte, Label txtTotal)
        {
            //limpiamos el datagridview
            //Conexion.conectar();
            dgConsulta.Rows.Clear();
            double importeTotal = 0, moratorio=0, importeFolio=0;
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_Cancelacion_CFolio(" + folio + ")");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                //folio
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                //servicio
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();
                //mes
                dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2).ToString();
                //Cuota
                String importe = String.Format(CultureInfo.InvariantCulture,
                                 "{0:0,0.0}", reader.GetValue(3).ToString());
                dgConsulta.Rows[renglon].Cells[3].Value = "$ " + importe;

                //mora
                String mora = String.Format(CultureInfo.InvariantCulture,
                                 "{0:0,0.0}", reader.GetValue(4).ToString());

                dgConsulta.Rows[renglon].Cells[4].Value = "$ " + mora;

                dgConsulta.Rows[renglon].Cells[5].Value = reader.GetValue(5).ToString();

                moratorio += Double.Parse(reader.GetValue(4).ToString());
                importeFolio += Double.Parse(reader.GetValue(3).ToString());
                importeTotal += Double.Parse(reader.GetValue(3).ToString()) + Double.Parse(reader.GetValue(4).ToString());
            }
            Conexion.FinalizarSesion();
            txtMora.Text = String.Format(CultureInfo.InvariantCulture,
                                 "{0:0,0.00}", moratorio);
            txtImporte.Text = String.Format(CultureInfo.InvariantCulture,
                                "{0:0,0.00}", importeFolio);

            txtTotal.Text = String.Format(CultureInfo.InvariantCulture,
                                "{0:0,0.00}", importeTotal);

            return importeTotal;
        }
        #endregion

        #region registra cancelacion
        public int registroCancelacion(Object[] parames)
        {
            int resultado = 0;
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_Cancelacion_Pago", parames);
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

        #region valida pago
        public Boolean validaEstatusPago(Object[] parames)
        {

            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_Cancelacion_CEstatus", parames);

            //seteo 
            Boolean resultado = Convert.ToBoolean(resul.GetValue(0));
            Conexion.FinalizarSesion();

            return resultado;
        }
        #endregion

    }
}
