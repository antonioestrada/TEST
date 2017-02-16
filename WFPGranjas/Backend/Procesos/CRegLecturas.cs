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
            IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_RegLecturas", parames);
            //seteo las variables de mi clase  ResultadoTrnx
            ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            resultado.periodoAnt = Convert.ToInt16(resul.GetValue(0));
            resultado.anioAnt = Convert.ToInt16(resul.GetValue(1));
            resultado.lectura = resul.GetValue(2).ToString();
            resultado.lecturaAnt = resul.GetValue(3).ToString();
            Conexion.FinalizarSesion();
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
                //cba
                dgConsulta.Rows[renglon].Cells[6].Value = reader.GetValue(6).ToString();
            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region consulta catalogo manzanas/lotes
        public ResultadoTrnx consultaCBAMen(int op, Object[] parames)
        {
            ResultadoTrnx setDato = new ResultadoTrnx();
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_RegLecturas_Listados",parames);
            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //ene
                if (reader.GetValue(0).ToString()=="01")
                setDato.mes1 =double.Parse( reader.GetValue(2).ToString());
                if (reader.GetValue(0).ToString() == "02")
                    setDato.mes2 = double.Parse (reader.GetValue(2).ToString());
                if (reader.GetValue(0).ToString() == "03")
                    setDato.mes3 = double.Parse(reader.GetValue(2).ToString());
                if (reader.GetValue(0).ToString() == "04")
                    setDato.mes4 = double.Parse(reader.GetValue(2).ToString());
                if (reader.GetValue(0).ToString() == "05")
                    setDato.mes5 = double.Parse( reader.GetValue(2).ToString());
                if (reader.GetValue(0).ToString() == "06")
                    setDato.mes6 = double.Parse( reader.GetValue(2).ToString());
                if (reader.GetValue(0).ToString() == "07")
                    setDato.mes7 = double.Parse( reader.GetValue(2).ToString());
                if (reader.GetValue(0).ToString() == "08")
                    setDato.mes8 = double.Parse(reader.GetValue(2).ToString());
                if (reader.GetValue(0).ToString() == "09")
                    setDato.mes9 = double.Parse(reader.GetValue(2).ToString());
                if (reader.GetValue(0).ToString() == "10")
                    setDato.mes10 = double.Parse(reader.GetValue(2).ToString());
                if (reader.GetValue(0).ToString() == "11")
                    setDato.mes11 = double.Parse(reader.GetValue(2).ToString());
                if (reader.GetValue(0).ToString() == "12")
                    setDato.mes12 = double.Parse(reader.GetValue(2).ToString());
            }
            Conexion.FinalizarSesion();

            return setDato;
        }
        #endregion

        public ResultadoTrnx registroCuotasMensuales(Object[] parames)
        {
            ResultadoTrnx res = new ResultadoTrnx();
            IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_AsignaCBA", parames);
            //seteo 
            res.result = Convert.ToInt32(resul.GetValue(0));
            res.Mensaje = resul.GetValue(1).ToString();
            Conexion.FinalizarSesion();

            return res;
        }

        #region validad la catidad de lecturas contra cantidad de medidores
        public int validaRegLecturas(Object[] parames)
        {
            int resultado;
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_RegLecturas_valida", parames);
            //seteo las variables de mi clase  ResultadoTrnx
           // ResultadoTrnx resultado = new ResultadoTrnx();
            //seteo 
            resultado = Convert.ToInt16(resul.GetValue(0));
            Conexion.FinalizarSesion();
            return resultado;
        }
        #endregion
    }
}
