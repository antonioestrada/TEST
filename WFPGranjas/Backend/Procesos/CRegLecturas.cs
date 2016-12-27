using AccesoDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WFPGranjas.Backend.Catalogos;

namespace WFPGranjas.Backend.Procesos
{
    class CRegLecturas
    {

        #region alta tarifas de agua
        public ResultadoTrnx muestraLecturasAgua(Object[] parames)
        {
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_RegLecturas", parames);
            //seteo las variables de mi clase  ResultadoTrnx
            ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            resultado.periodoAnt = Convert.ToInt16(resul.GetValue(0));
            resultado.anioAnt = Convert.ToInt16(resul.GetValue(1));
            resultado.lectura = resul.GetValue(2).ToString();
            resultado.lecturaAnt = resul.GetValue(3).ToString();
            return resultado;
        }
        #endregion
        #region consulta catalogo manzanas/lotes
        public void consultaListadoMedidores(DataGridView dgConsulta,int op, int inIdMzana, string inLote, string inNombre)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();

            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql(" call gestion_granjas.sp_frm_RegLecturas_Listados(" + op + ","+inIdMzana+",'"+inLote+"','" + inNombre + "')");
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                //id_medidor
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                //id_mza
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();
                //nombre colono                
                dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2).ToString();
                //direccion
                dgConsulta.Rows[renglon].Cells[3].Value = reader.GetValue(3).ToString();
                //contrato
                dgConsulta.Rows[renglon].Cells[4].Value = reader.GetValue(4).ToString();
                //medidor
                dgConsulta.Rows[renglon].Cells[5].Value = reader.GetValue(5).ToString();
            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region validad la catidad de lecturas contra cantidad de medidores
        public int validaRegLecturas(int inPeriodo, int inAnio)
        {
            int resultado = 0;
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReaderSql("call sp_frm_RegLecturas_valida('" + inPeriodo + "','" + inAnio + "')");
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
    }
}
