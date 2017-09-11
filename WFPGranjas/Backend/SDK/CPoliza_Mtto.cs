using AccesoDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Windows.Forms;
using SDKCONTPAQNGLib; //el com de sdk de contabilidad y bancos

namespace WFPGranjas.Backend.SDK
{
    class CPoliza_Mtto
    {
        string resultadoCrearPoliza;
        static int lResul = 0;
        int resul = 0, resulPol=0;
        //objeto poliza
        public static TSdkPoliza lsdkPoliza = new TSdkPoliza();
        //objeto mov poliza
        public static TSdkMovimientoPoliza lsdkMovimiento = new TSdkMovimientoPoliza();


        public int crearEncabezadoPoliza(string fechaP, string servicioP, string manzanaP)
        {
            lsdkPoliza = new TSdkPoliza();
            //le pasamos la sesion activa
            lsdkPoliza.setSesion(frmSDKContableVista.lsdkSesion);
            //inicializamos el objeto
            //lo que hace es limpiar el objeto para iniciar en blanco y llenar las propiedades
            lsdkPoliza.iniciarInfo();


            //llenar las propiedades de nuestro encabezado
            lsdkPoliza.Tipo = ETIPOPOLIZA.TIPO_DIARIO;
            lsdkPoliza.Clase = ECLASEPOLIZA.CLASE_AFECTAR;
            lsdkPoliza.Impresa = 0;
            lsdkPoliza.Fecha = DateTime.Parse(fechaP);
            lsdkPoliza.SistOrigen = ESISTORIGEN.ORIG_ADMINPAQNG;
            lsdkPoliza.Ajuste = 0;
            lsdkPoliza.Concepto = "CUOTAS POR COBRAR " + servicioP +" MZ "+ manzanaP;
            return resul = 1;//retornar 1 da luz verde
        }//fin encabezado
        
        public int crearMovPoliza(string inMZ, string inLT, string inCtaCargo, string inCtaAbono, string inImporteCA, int inNumMov)
        {

            //pasar sesion
           // lsdkMovimiento.setSesion(frmSDKContableVista.lsdkSesion);

            ///////////CARGO////////////////////////////
            //inicializamos el objeto
            //lo que hace es limpiar el objeto para iniciar en blanco y llenar las propiedades
            lsdkMovimiento.iniciarInfo();


            //llenar propiedades del movimiento
            lsdkMovimiento.NumMovto = inNumMov;
            lsdkMovimiento.CodigoCuenta = inCtaCargo;
            lsdkMovimiento.TipoMovto = ETIPOIMPORTEMOVPOLIZA.MOVPOLIZA_CARGO;
            lsdkMovimiento.Importe = Decimal.Parse(inImporteCA);
            lsdkMovimiento.ImporteME = 0;
            lsdkMovimiento.Diario = 0;
            lsdkMovimiento.SegmentoNegocio = "0";
            lsdkMovimiento.Referencia = "MZ " + inMZ + " LT " + inLT;

            //agregamos movimientos a la poliza
            lResul = lsdkPoliza.agregaMovimiento(lsdkMovimiento);

            if (lResul > 0)
            {
               // MessageBox.Show("Primer movimiento");
                resul = 1;

            }
            else
            {
                MessageBox.Show("Error " + lsdkPoliza.getMensajeError());
                resul = 0;
            }

            ///////////ABONO////////////////////////////
            //inicializamos el objeto
            //lo que hace es limpiar el objeto para iniciar en blanco y llenar las propiedades
            lsdkMovimiento.iniciarInfo();
            //lsdkMovimiento = new TSdkMovimientoPoliza();

            //llenar propiedades del movimiento
            inNumMov++;
            lsdkMovimiento.NumMovto = inNumMov;
            lsdkMovimiento.CodigoCuenta = inCtaAbono;
            lsdkMovimiento.TipoMovto = ETIPOIMPORTEMOVPOLIZA.MOVPOLIZA_ABONO;
            lsdkMovimiento.Importe = Decimal.Parse(inImporteCA); ;
            lsdkMovimiento.ImporteME = 0;
            lsdkMovimiento.Diario = 0;
            lsdkMovimiento.SegmentoNegocio = "0";
            lsdkMovimiento.Referencia = "MZ " + inMZ + " LT " + inLT;

            //agregamos movimientos a la poliza
            lResul = lsdkPoliza.agregaMovimiento(lsdkMovimiento);

            if (lResul > 0)
            {
               // MessageBox.Show("Segundo movimiento");
                resul = 1;
            }
            else
            {
                MessageBox.Show("Error " + lsdkPoliza.getMensajeError());
                resul = 0;
            }
            return resul;

        }//fin movimientos de poliza ABONOS
        string resulCreaPol;
        public string  crearPoliza(string mzIN)
        {
            //crear poliza
            lResul = lsdkPoliza.crea();
            if (lResul > 0)
            {
                resulCreaPol = "Se generó correctamente la poliza de la manzana: "+ mzIN;
               // MessageBox.Show("Se registró la poliza correctamente");
            }
            else
            {
                MessageBox.Show("Error " + lsdkPoliza.getMensajeError());
                resulCreaPol = lsdkPoliza.getMensajeError();
            }
            return resulCreaPol;
        }


        #region consulta cuotas Generadas Activas MATTO
        public void consultaCuotas(DataGridView dgConsulta, string inMes, string inAnio, int inOp)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();
            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_SDK_Contable('" + inMes + "','" + inAnio + "'," + inOp + ")");
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

        #region consulta cuotas Generadas Activas AGUA
        public void consultaCuotasAgua(DataGridView dgConsulta, string inMes, string inAnio, int inOp)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();
            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_SDK_Contable('" + inMes + "','" + inAnio + "'," + inOp + ")");
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
                dgConsulta.Rows[renglon].Cells[8].Value = reader.GetValue(10).ToString();


            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region consulta Manzanas Generadas Activas
        public void consultaPolMZ(DataGridView dgConsulta, string inMes, string inAnio, int inOp, string inServicio, string inCtaCargo, string inCtaAbono)
        {
           
           
            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_SDK_Contable('" + inMes + "','" + inAnio + "'," + inOp + ")");
            int movimiento=0;          
            
        
            //siclamos cada registro que contiene nuestro reader
            //continiene el numero d manzanas y recorremos el listado
            while (reader.Read())
            {
                resultadoCrearPoliza += Environment.NewLine+"Creando Poliza "+ inServicio + " de la manzana: " + reader.GetValue(3).ToString();
                resulPol=crearEncabezadoPoliza(""+ inAnio+" - "+ inMes + " - 05", inServicio, reader.GetValue(3).ToString());
                if (resulPol > 0)
                {
                    //pasamos la seson una unica vez solo es prueba
                    lsdkMovimiento.setSesion(frmSDKContableVista.lsdkSesion);
                    foreach (DataGridViewRow row in dgConsulta.Rows)
                    {

                        if (int.Parse(reader.GetValue(2).ToString()) == Convert.ToInt32(row.Cells[2].Value))
                        {
                            movimiento++;
                            resulPol=crearMovPoliza(row.Cells[3].Value.ToString(), row.Cells[4].Value.ToString(),inCtaAbono, inCtaAbono , row.Cells[7].Value.ToString(), movimiento);
                            //MessageBox.Show("Movimiento " + movimiento + ": Lote-" + Convert.ToInt32(row.Cells[0].Value));
                            movimiento++;
                        }
                    }
                    movimiento = 0;
                    if (resulPol > 0)
                    {
                        resultadoCrearPoliza+= Environment.NewLine + "Resul: " +crearPoliza(reader.GetValue(3).ToString());
                    }else
                        MessageBox.Show("Se generó encabezado de poliza, pero algunos movimientos generarón error. Vuelva a intentarlo.");
                }
                else
                    MessageBox.Show("Se generó error al generar el encabezado de la poliza. Volver a ejecutar proceso.");
            }
            MessageBox.Show(resultadoCrearPoliza);
            Conexion.FinalizarSesion();
        }
        #endregion


        // funcion para redondear usada para cobranza en el modulo
        public decimal TruncateToDecimalPlace(decimal numberToTruncate, int decimalPlaces)
        {
            decimal power = (decimal)(Math.Pow(10.0, (double)decimalPlaces));

            return Math.Truncate((power * numberToTruncate)) / power;
        }

       

  
    }



}
