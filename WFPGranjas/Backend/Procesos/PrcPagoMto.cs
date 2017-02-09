
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
    class PrcPagoMto
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

        #region consulta cuotas con adeudo
        public Dictionary<int, Cuota> consultaAdeucoCuotas(ComboBox cmb, int id_lote,int servicio, Dictionary<int, String> cmbCuotas2)
        {
            Dictionary<int, Cuota> Cuotas = new Dictionary<int, Cuota>();

            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_PagoMto_CAdeudos(" + id_lote + ","+servicio+")");
            //siclamos cada registro que contiene nuestro reader
            //   Dictionary<int,String> arreglo = new Dictionary<int,String>();
            int i = 0;
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
               // ResultadoTrnx puesto = new ResultadoTrnx();
                int id = int.Parse(reader.GetValue(0).ToString());
                Cuota cuota = new Cuota();
                cuota.id = id;
                cuota.idServicio= int.Parse(reader.GetValue(1).ToString());
                double imp = Double.Parse(reader.GetValue(2).ToString());
                cuota.importe   = Double.Parse(reader.GetValue(2).ToString());
                cuota.estatus   = reader.GetValue(4).ToString();
                cuota.servicio  = reader.GetValue(5).ToString();
                cuota.periodo   = reader.GetValue(6).ToString();
                cuota.idPeriodo = reader.GetValue(7).ToString();
                cuota.tarifa    = reader.GetValue(8).ToString();
                cuota.anio      = reader.GetValue(9).ToString();
                cuota.moratorio = Double.Parse(reader.GetValue(10).ToString());
                if (servicio == 2)
                 cuota.cargoActualizacion = Double.Parse(reader.GetValue(11).ToString());
                //  arreglo.Cve_resultado = id;
                // puesto.Mensaje = reader.GetValue(3).ToString();
                if (servicio == 2  || servicio==5 || servicio==6)
                {
                    cmbCuotas2.Add(i, reader.GetValue(3).ToString());
                    
                }

                if (servicio == 3)
                {
                    cmbCuotas2.Add(i, reader.GetValue(3).ToString() + " " + imp);
                  
                }
                if (servicio == 4)
                {
                    cmbCuotas2.Add(i, reader.GetValue(3).ToString());

                }

                //  arreglo.Add(id, reader.GetValue(3).ToString());
                Cuotas.Add(i, cuota);
                i++;

            }
            var ab = from a in cmbCuotas2
                     orderby a.Key
                     select a;
            cmb.DataSource = ab.ToList();
            cmb.DisplayMember = "value";
            cmb.ValueMember = "Key";

            Conexion.FinalizarSesion();
        return Cuotas;
}
        #endregion

       
        #region registra  cuotas
        public int registroCuotas(Object[] parames)
        {
            int resultado = 0;
            System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_PagoMto_AddPago", parames);
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
                resultado.direccionDTO =  reader.GetValue(7).ToString();
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

        #region consulta cuotase de agua en Kardex 
        public void consultaCuotasAgua(List<int> cmb, int idLote,string periodo,string anio)
        {


            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_PagoMto_CFolioKardex(" + idLote + ",'"+periodo+"','"+anio+"')");
            //siclamos cada registro que contiene nuestro reader

            while (reader.Read())
            {
                cmb.Add(int.Parse(reader.GetValue(0).ToString()));

            }

            Conexion.FinalizarSesion();
        }
        #endregion
        #region consulta saldo de anticipos
        public double consultaSaldoAnticipo(int idColono)
        {

            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("gestion_granjas.sp_frm_PagoMto_CSaldoAnticipo("+ idColono + ")");
            double saldo = 0;
            //siclamos cada registro que contiene nuestro reader

            if (reader.Read())
            {
                //id-lote
                saldo = Convert.ToDouble(reader.GetValue(0).ToString());

            }
            else
            {
                saldo = 0;
              
            }
            Conexion.FinalizarSesion();
            return saldo;
        }
        #endregion
    }
}
