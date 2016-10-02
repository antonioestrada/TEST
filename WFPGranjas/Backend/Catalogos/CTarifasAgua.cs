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
    class CTarifasAgua
    {
        #region alta tarifas de agua
        public ResultadoTrnx altaTarifasAgua(Object[] parames)
        {
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_CTarifasAgua_ABC", parames);
            //seteo las variables de mi clase  ResultadoTrnx
            ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            resultado.Cve_resultado = Convert.ToInt16(resul.GetValue(0));
            resultado.Mensaje = Convert.ToString(resul.GetValue(1));

            return resultado;
        }
        #endregion


        #region consulta catalogo tarifas de agua
        public void consultaTarifasAgua(DataGridView dgConsulta,int op, int tarifa)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();

            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CTarifasAgua("+op+","+tarifa+")");
            if (tarifa == 1)
            {
                while (reader.Read())
                {
                    //lenamos nuestro grid con nuestro reader.
                    int renglon = dgConsulta.Rows.Add();
                    //id
                    dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                    //de
                    dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1);
                    //a
                    dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2);
                    //costo
                    dgConsulta.Rows[renglon].Cells[3].Value = double.Parse(reader.GetValue(3).ToString());
                    //tarifa
                    dgConsulta.Rows[renglon].Cells[4].Value = reader.GetValue(4).ToString();
                }
            }
            else
            {
                //siclamos cada registro que contiene nuestro reader
                while (reader.Read())
                {
                    //lenamos nuestro grid con nuestro reader.
                    int renglon = dgConsulta.Rows.Add();
                    //id
                    dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                    //de
                    dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1);
                    //importe
                    dgConsulta.Rows[renglon].Cells[2].Value =double.Parse( reader.GetValue(3).ToString());
                    //tarifa
                    dgConsulta.Rows[renglon].Cells[3].Value = reader.GetValue(4).ToString();
                }
            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region consulta datos siguiente renglon tarifas Agua
        public ResultadoTrnx consultaSigRenglon(int in_op, int in_tarifa)
        {

            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("call gestion_granjas.sp_catalogo_CTarifasAgua("+ in_op + ","+ in_tarifa + ")");
            ResultadoTrnx resultado = new ResultadoTrnx();
            //siclamos cada registro que contiene nuestro reader
            if (reader.Read())
            { 
                if (String.IsNullOrEmpty(reader.GetValue(0).ToString()))
                {
                    resultado.siguienteRenglon = 1;
                   // MessageBox.Show("es nullo");
                }
                else
                {
                    resultado.siguienteRenglon = Convert.ToInt32(reader.GetValue(0).ToString());
                    //MessageBox.Show("toma renglon de consulta"+ resultado.siguienteRenglon);
                }
            }
       
            else
            {
                resultado.siguienteRenglon = 0;
                //MessageBox.Show("toma renglon de consulta" + resultado.siguienteRenglon);

            }
            Conexion.FinalizarSesion();
            return resultado;
        }
        #endregion
    }
}
