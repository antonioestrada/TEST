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
    class CBancos
    {
        public ResultadoTrnx altaBanco(Object[] parames)
        {
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_ABCBanco", parames);
           //seteo las variables de mi clase  ResultadoTrnx
            ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            resultado.Cve_resultado = Convert.ToInt16(resul.GetValue(0));
            resultado.Mensaje = Convert.ToString(resul.GetValue(1));

            return resultado;
        }

        #region consulta catalogo bancos
        public void consultaBancos(DataGridView dgConsulta)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();
            //iniciamos la conexion con el servidor
           // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CBanco()");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();
                dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2).ToString();
                dgConsulta.Rows[renglon].Cells[3].Value = reader.GetValue(3).ToString();

            }
            Conexion.FinalizarSesion();
        }
        #endregion


        #region consulta cuotas Generadas Activas
        public void consultaCuotas(DataGridView dgConsulta, string inMes, string inAnio, int inOp)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();
            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_SDK_Contable('"+ inMes + "','"+inAnio+ "'," + inOp + ")");
            decimal importe;
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
                importe = decimal.Parse(reader.GetValue(7).ToString());
                decimal calcular = TruncateToDecimalPlace((decimal)importe, 2);
                dgConsulta.Rows[renglon].Cells[7].Value = calcular;
                dgConsulta.Rows[renglon].Cells[8].Value = reader.GetValue(8).ToString();


            }
            Conexion.FinalizarSesion();
        }
        #endregion

        public decimal TruncateToDecimalPlace(decimal numberToTruncate, int decimalPlaces)
        {
            decimal power = (decimal)(Math.Pow(10.0, (double)decimalPlaces));

            return Math.Truncate((power * numberToTruncate)) / power;
        }

        #region consulta cuotas Generadas Activas
        public void consultaConsumosCBA(DataGridView dgConsulta,string mes, string anio, int op)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();
            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_Reporte_Consumos('"+ mes + "','" + anio + "',"+op+")");
            decimal importe;
            //siclamos cada registro que contiene nuestro reader
            if (op == 1)
            {
                while (reader.Read())
                {
                    //lenamos nuestro grid con nuestro reader.
                    int renglon = dgConsulta.Rows.Add();
                    dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                    dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();
                    dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2).ToString();
                    importe = decimal.Parse(reader.GetValue(3).ToString());
                    dgConsulta.Rows[renglon].Cells[3].Value = importe;
                    dgConsulta.Rows[renglon].Cells[4].Value = reader.GetValue(4).ToString();
                }
            }
            else if(op == 2)
            {
                while (reader.Read())
                {
                    //lenamos nuestro grid con nuestro reader.
                    int renglon = dgConsulta.Rows.Add();
                    dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                    dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();
                    dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2).ToString();
                    importe = decimal.Parse(reader.GetValue(3).ToString());
                    dgConsulta.Rows[renglon].Cells[3].Value = importe;
                }
            }
            Conexion.FinalizarSesion();
        }
        #endregion



    }
}
