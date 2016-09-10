using AccesoDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Windows.Forms;

namespace WFPGranjas.Backend.Catalogos
{
    class CMedidores
    {
        #region ABC Medidor
        public ResultadoTrnx abcMedidor(Object[] parames)
        {
            ResultadoTrnx resultado = new ResultadoTrnx();
            if (Convert.ToInt16(parames[0]) != 4)
            {
                System.Data.IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_ABCMedidor", parames);
                //seteo las variables de mi clase  ResultadoTrnx

                //seteo 
                resultado.Cve_resultado = Convert.ToInt16(resul.GetValue(0));
                resultado.Mensaje = Convert.ToString(resul.GetValue(1));

            }
            else
            {
                resultado.Cve_resultado = 4;
                resultado.Mensaje = "";
            }
            return resultado;
        }
        #endregion

        #region Llena combo Contratos
        public void consultaContratos(ComboBox combo, int op, int idlote)
        {
            //llenamos nuestro DataTable con la consulta de nuestro SP
            IDataReader obtieneContrato = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CMedidor(" + op + "," + idlote + ",0)");

            //definimos el list en arreglo
            List<ResultadoTrnx> arreglo = new List<ResultadoTrnx>();
            // MessageBox.Show("idMedidor: ");
            //recorremos el resultado de nuestro SP
            while (obtieneContrato.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                //int renglon = obtieneContrato.Rows.Add();
                arreglo.Add(new ResultadoTrnx { idMedidorDTO = obtieneContrato.GetValue(0).ToString(), contratoDTO = obtieneContrato.GetValue(1).ToString() });
            }

            var ab = from a in arreglo
                     select a;
            //seteamos nuestro combro
            combo.DataSource = ab.ToList();
            combo.ValueMember = "idMedidorDTO";
            combo.DisplayMember = "contratoDTO";
            //cerramos conexion
            Conexion.FinalizarSesion();
        }
        #endregion

        #region consulta Contrato y Arroja Info del medidor
        public ResultadoTrnx consultaConInfo(int id_Med)
        {
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CMedidor(3,0,"+ id_Med + ")");
            ResultadoTrnx resultado = new ResultadoTrnx();
            //siclamos cada registro que contiene nuestro reader
            if (reader.Read())
            {
                //id-medidor
                resultado.idMedidorDTO = reader.GetValue(0).ToString();
                //Contrato
                resultado.contratoDTO = reader.GetValue(1).ToString();
                //medidor
                resultado.medidorDTO = reader.GetValue(2).ToString();
                //base CNA
                resultado.cnaDTO = Convert.ToDouble(reader.GetValue(3).ToString());
                //MessageBox.Show("id medidor: "+ resultado.idMedidorDTO, "contarto: " + resultado.contratoDTO);

            }
            else
            {
                //id-medidor
                resultado.idMedidorDTO = "";
                //Contrato
                resultado.contratoDTO = "";
                //medidor
                resultado.medidorDTO = "";
                //base CNA
                resultado.cnaDTO = 0;
            }
            Conexion.FinalizarSesion();
            return resultado;
        }
        #endregion
    }
}
