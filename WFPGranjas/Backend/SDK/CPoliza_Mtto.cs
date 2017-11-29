using AccesoDatos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Windows.Forms;
using SDKCONTPAQNGLib; //el com de sdk de contabilidad y bancos
using WFPGranjas.Backend.Catalogos;

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
        string noRecINGlob;
        #region CREAR POLIZA CUOTAS POR COBRAR
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
            lsdkPoliza.Concepto = "CUOTAS POR COBRAR " + servicioP + " MZ " + manzanaP;
            return resul = 1;//retornar 1 da luz verde
        }//fin encabezado

        public int crearMovPoliza(string inMZ, string inLT, string inCtaCargo, string inCtaAbonoCuota, string inCtaAbonoMora, string inImporteCA, string inImporteCuota, string inImporteMora, int inNumMov)
        {

            //pasar sesion
             lsdkMovimiento.setSesion(frmSDKContableVista.lsdkSesion);

            ///////////CARGO////////////////////////////
            //inicializamos el objeto
            //lo que hace es limpiar el objeto para iniciar en blanco y llenar las propiedades
            lsdkMovimiento.iniciarInfo();


            //llenar propiedades del movimiento CUENTAS X COBRAR EFECTIVO
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
            //probar
            lsdkMovimiento = new TSdkMovimientoPoliza();
            ///////////ABONO////////////////////////////
            //inicializamos el objeto
            //lo que hace es limpiar el objeto para iniciar en blanco y llenar las propiedades
            lsdkMovimiento.iniciarInfo();
            //lsdkMovimiento = new TSdkMovimientoPoliza();

            //llenar propiedades del movimiento CUOTA
            if (Decimal.Parse(inImporteCuota) > 0)
            {
                lsdkMovimiento.setSesion(frmSDKContableVista.lsdkSesion);
                inNumMov++;
                lsdkMovimiento.NumMovto = inNumMov;
                lsdkMovimiento.CodigoCuenta = inCtaAbonoCuota;
                lsdkMovimiento.TipoMovto = ETIPOIMPORTEMOVPOLIZA.MOVPOLIZA_ABONO;
                lsdkMovimiento.Importe = Decimal.Parse(inImporteCuota);
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
                //probar
                lsdkMovimiento = new TSdkMovimientoPoliza();
            }
            if (Decimal.Parse(inImporteMora) > 0)
            {
                lsdkMovimiento.setSesion(frmSDKContableVista.lsdkSesion);
                inNumMov++;
                lsdkMovimiento.NumMovto = inNumMov;
                lsdkMovimiento.CodigoCuenta = inCtaAbonoMora;
                lsdkMovimiento.TipoMovto = ETIPOIMPORTEMOVPOLIZA.MOVPOLIZA_ABONO;
                lsdkMovimiento.Importe = Decimal.Parse(inImporteMora);
                lsdkMovimiento.ImporteME = 0;
                lsdkMovimiento.Diario = 0;
                lsdkMovimiento.SegmentoNegocio = "0";
                lsdkMovimiento.Referencia = "Extemporaneo";
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
                //probar
                lsdkMovimiento = new TSdkMovimientoPoliza();
            }
            
            
            return inNumMov;

        }//fin movimientos de poliza ABONOS
        string resulCreaPol;
        public string crearPoliza(string mzIN)
        {
            //crear poliza
            lResul = lsdkPoliza.crea();
            if (lResul > 0)
            {
                resulCreaPol = "Se generó correctamente la poliza de la manzana: " + mzIN;
                // MessageBox.Show("Se registró la poliza correctamente");
            }
            else
            {
                MessageBox.Show("Error " + lsdkPoliza.getMensajeError());
                resulCreaPol = lsdkPoliza.getMensajeError();
            }
            return resulCreaPol;
        }
        #endregion

        #region CREAR POLIZA INGRESOS
        public int crearEncabezadoPolizaIngreso(string fechaP, string servicioP, string noReciboP, int inOp)
        {
            lsdkPoliza = new TSdkPoliza();
            //le pasamos la sesion activa
            lsdkPoliza.setSesion(frmSDKContableVista.lsdkSesion);
            //inicializamos el objeto
            //lo que hace es limpiar el objeto para iniciar en blanco y llenar las propiedades
            lsdkPoliza.iniciarInfo();


            //llenar las propiedades de nuestro encabezado
            lsdkPoliza.Tipo = ETIPOPOLIZA.TIPO_INGRESOS;
            lsdkPoliza.Clase = ECLASEPOLIZA.CLASE_AFECTAR;
            lsdkPoliza.Impresa = 0;
            lsdkPoliza.Fecha = DateTime.Parse(fechaP);
            lsdkPoliza.SistOrigen = ESISTORIGEN.ORIG_ADMINPAQNG;
            lsdkPoliza.Ajuste = 0;
            if(inOp==1)
                lsdkPoliza.Concepto = "CUOTAS POR COBRAR";
            if (inOp==2)
                lsdkPoliza.Concepto = "INGRESOS " + servicioP + " " + noReciboP;

                return resul = 1;//retornar 1 da luz verde
        }//fin encabezado

        public int crearMovPolizaIngreso(int opCA, string inMZ, string inLT,string inPeriodo, string inCtaCargo, string inCtaAbono, string inImporteCA, int inNumMov, int   inICC)
        {

            //pasar sesion
             lsdkMovimiento.setSesion(frmSDKContableVista.lsdkSesion);
            
            ///////////CARGO////////////////////////////
            if (opCA == 1)
            {
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
                if (inICC == 1)
                    lsdkMovimiento.Referencia = "";
                else
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
            }
            ///////////ABONO////////////////////////////
            if (opCA == 2)
            {
                //inicializamos el objeto
                //lo que hace es limpiar el objeto para iniciar en blanco y llenar las propiedades
                lsdkMovimiento.iniciarInfo();
                //lsdkMovimiento = new TSdkMovimientoPoliza();

                //llenar propiedades del movimiento
                //inNumMov++;
                lsdkMovimiento.NumMovto = inNumMov;
                lsdkMovimiento.CodigoCuenta = inCtaAbono;
                lsdkMovimiento.TipoMovto = ETIPOIMPORTEMOVPOLIZA.MOVPOLIZA_ABONO;
                lsdkMovimiento.Importe = Decimal.Parse(inImporteCA); ;
                lsdkMovimiento.ImporteME = 0;
                lsdkMovimiento.Diario = 0;
                lsdkMovimiento.SegmentoNegocio = "0";
                if(inICC==1)
                    lsdkMovimiento.Referencia = inPeriodo;
                else
                    lsdkMovimiento.Referencia = inMZ + inLT + inPeriodo;

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
            }
            lsdkMovimiento = new TSdkMovimientoPoliza();
            return resul;

        }//fin movimientos de poliza ABONOS
       
         string resulCreaPolIngreso;
        public string crearPolizaIngreso(string recibo)
        {
            //crear poliza
            lResul = lsdkPoliza.crea();
            if (lResul > 0)
            {
                resulCreaPolIngreso = "Se generó correctamente la poliza del Recibo: " + recibo;
                // MessageBox.Show("Se registró la poliza correctamente");
            }
            else
            {
                MessageBox.Show("Error " + lsdkPoliza.getMensajeError());
                resulCreaPolIngreso = lsdkPoliza.getMensajeError();
            }
            return resulCreaPolIngreso;
        }
        #endregion


        //|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
        //CARGA CONSULTAS DE DATAGRIDVIEWS DE CADA CASO (CUOTAS DE MTTO, AGUA, INGRESOS DIARIOS, CASA CLUB)
        //|||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
        #region consulta cuotas Generadas Activas MATTO
        public void consultaCuotas(DataGridView dgConsulta, string inMes, string inAnio, int inOp)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();
            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_SDK_Contable('" + inMes + "','" + inAnio + "'," + inOp + ")");
            decimal importe,mora;

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
                mora = decimal.Parse(reader.GetValue(8).ToString());
                decimal calcular = TruncateToDecimalPlace((decimal)importe, 2);
                decimal calcularMORA = TruncateToDecimalPlace((decimal)mora, 2);
                dgConsulta.Rows[renglon].Cells[7].Value = calcular;
                dgConsulta.Rows[renglon].Cells[8].Value = calcularMORA;
                dgConsulta.Rows[renglon].Cells[9].Value = reader.GetValue(9).ToString();


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
            decimal importe,mora;

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
                mora = decimal.Parse(reader.GetValue(8).ToString());
                decimal calcular = TruncateToDecimalPlace((decimal)importe, 2);
                decimal calcularMORA = TruncateToDecimalPlace((decimal)mora, 2);
                dgConsulta.Rows[renglon].Cells[7].Value = calcular;
                dgConsulta.Rows[renglon].Cells[8].Value = calcularMORA;
                dgConsulta.Rows[renglon].Cells[9].Value = reader.GetValue(11).ToString();
            }
            Conexion.FinalizarSesion();
        }
        #endregion
        
        #region consulta Ingresos diarios
        public void consultaIngresosDiarios(DataGridView dgConsulta, string inMes, string inAnio, int inOp)
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
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();//folio_pago
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(2).ToString();//no_recibo
                dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(3).ToString();//Fecha Pago
                dgConsulta.Rows[renglon].Cells[3].Value = reader.GetValue(4).ToString();//Folio Movimiento
                dgConsulta.Rows[renglon].Cells[4].Value = reader.GetValue(7).ToString();//Manzana
                dgConsulta.Rows[renglon].Cells[5].Value = reader.GetValue(8).ToString();//Lote
                dgConsulta.Rows[renglon].Cells[6].Value = reader.GetValue(9).ToString();//Periodo
                dgConsulta.Rows[renglon].Cells[7].Value = reader.GetValue(10).ToString();//anio
                dgConsulta.Rows[renglon].Cells[8].Value = decimal.Parse(reader.GetValue(11).ToString());//total del recibo
                dgConsulta.Rows[renglon].Cells[9].Value = decimal.Parse(reader.GetValue(12).ToString());//multa actualizacion
                //conversion decimales de cuotas pagadas
                importe = decimal.Parse(reader.GetValue(13).ToString());
                decimal calcular = TruncateToDecimalPlace((decimal)importe, 2);
                dgConsulta.Rows[renglon].Cells[10].Value = calcular;//cuota pagada
                dgConsulta.Rows[renglon].Cells[11].Value = reader.GetValue(14).ToString();//"Tipo Pago"
                dgConsulta.Rows[renglon].Cells[12].Value = reader.GetValue(15).ToString();// estatus,
                dgConsulta.Rows[renglon].Cells[13].Value = reader.GetValue(16).ToString();// estatus,


            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region consulta Poliza Cuotas Mensuales
        public void consultaPolCuotasMensuales(DataGridView dgConsulta, string inMes, string inAnio, int inOp)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();
            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_SDK_Contable_vr2('" + inAnio + "','" + inMes + "','05'," + inOp + ")");

            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();//cuenta_cargo
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();//cuenta_abono
                dgConsulta.Rows[renglon].Cells[2].Value = decimal.Parse(reader.GetValue(2).ToString());//importe
            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region consulta Poliza Ingresos por dia
        public void consultaPolIngrDiarios(DataGridView dgConsulta, string inDia, string inMes, string inAnio, int inOp)
        {
            //limpiamos el datagridview
            dgConsulta.Rows.Clear();
            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_SDK_Contable_vr2('" + inAnio + "','" + inMes + "','" + inDia + "'," + inOp + ")");

            //siclamos cada registro que contiene nuestro reader
            while (reader.Read())
            {
                //lenamos nuestro grid con nuestro reader.
                int renglon = dgConsulta.Rows.Add();
                dgConsulta.Rows[renglon].Cells[0].Value = reader.GetValue(0).ToString();
                dgConsulta.Rows[renglon].Cells[1].Value = reader.GetValue(1).ToString();//cargo_abono
                dgConsulta.Rows[renglon].Cells[2].Value = reader.GetValue(2).ToString();//cargo
                dgConsulta.Rows[renglon].Cells[3].Value = reader.GetValue(3).ToString();//abono
                dgConsulta.Rows[renglon].Cells[4].Value = reader.GetValue(4).ToString();//descripcion
                dgConsulta.Rows[renglon].Cells[5].Value = decimal.Parse(reader.GetValue(5).ToString());//importe cargo
                dgConsulta.Rows[renglon].Cells[6].Value = decimal.Parse(reader.GetValue(6).ToString());//importe abono
            }
            Conexion.FinalizarSesion();
        }
        #endregion
        //|||||||||||||||||||||||FIN CARGA CONSULTAS DE DATAGRIDVIEWS|||||||||||||||||||||




        #region consulta Manzanas Generadas Activas para generar Polizas
        public void consultaPolMZ(DataGridView dgConsulta, string inMes, string inAnio, int inOp, string inServicio, string inCtaCargo, string inCtaAbonoCuota, string inCtaAbonoMora)
        {
           
           
            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_SDK_Contable('" + inMes + "','" + inAnio + "'," + inOp + ")");
            int movimiento=1;          
            
        
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
                            // movimiento++;
                            //determina si ya se cargo total efectivo
                            decimal importeTotal = decimal.Parse(row.Cells[7].Value.ToString()) + decimal.Parse(row.Cells[8].Value.ToString());
                            decimal cuota = decimal.Parse(row.Cells[7].Value.ToString()) ;
                            decimal mora = decimal.Parse(row.Cells[8].Value.ToString()) ;
                            resulPol =crearMovPoliza(row.Cells[3].Value.ToString(), row.Cells[4].Value.ToString(),inCtaCargo, inCtaAbonoCuota , inCtaAbonoMora, importeTotal.ToString(), cuota.ToString(),mora.ToString(), movimiento);
                            //MessageBox.Show("Movimiento " + movimiento + ": Lote-" + Convert.ToInt32(row.Cells[0].Value));
                            movimiento = resulPol;
                            movimiento++;
                        }
                    }
                    movimiento = 1;
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

        #region consulta por No.Recivo para generar Polizas
        public void consultaPolNoRecibo(DataGridView dgConsulta, string inMes, string inAnio, int inOp, string inServicio, string inCtaCargo,string inCtaMulta, string inCtaAbono, string inCtaAnualidades, string inCtaMoratorios)
        {
            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_SDK_Contable('" + inMes + "','" + inAnio + "'," + inOp + ")");
            int movimiento = 1, efeDep=0, multa=0, inCC = 0;
            string periodo;
            string ctaEfeDep="", ctaMulta="",ctaCuota="",ctaAnticipo="", ctaMora="";


            //siclamos cada registro que contiene nuestro reader
            //continiene el numero d manzanas y recorremos el listado
            while (reader.Read())
            {
                //||||||||||||||DEFINIMOS CUENTAS||||||||||||||||||||||||
                if(reader.GetValue(4).ToString() == "AGUA")
                {
                    // CUENTA EFECTIVO A DEPOSITAR
                    ctaEfeDep = "110201";
                    //CUENTA PARA MULTAS
                    ctaMulta = "40102000";
                    //CUENTA PARA ABONO POR CUOTAS
                    ctaCuota = "110502";
                    //CUENTA PARA ANTICIPOS (ANUALIDADES MANTENIMIENTO)
                    ctaAnticipo = "220502";
                    //CUENTA PARA MORATORIOS
                    ctaMora = "410202";
                }
                else if(reader.GetValue(4).ToString() == "MANTENIMIENTO")
                {
                    // CUENTA EFECTIVO A DEPOSITAR
                    ctaEfeDep = "110201";
                    //CUENTA PARA MULTAS
                    ctaMulta = "410102";
                    //CUENTA PARA ABONO POR CUOTAS
                    ctaCuota = "110501";
                    //CUENTA PARA ANTICIPOS (ANUALIDADES MANTENIMIENTO)
                    ctaAnticipo = "220501";
                    //CUENTA PARA MORATORIOS
                    ctaMora = "410102";
                }
                else if (reader.GetValue(4).ToString() == "CASA CLUB")
                {
                    // CUENTA EFECTIVO A DEPOSITAR
                    ctaEfeDep = "110201";
                    inCC =1;
                    // LAS SIGUIENTES CUENTAS NO SERAN DE UTILIDAD PARA INGRESOS CASA CLUB
                    //CUENTA PARA MULTAS
                    ctaMulta = "40102000";
                    //CUENTA PARA ABONO POR CUOTAS
                    ctaCuota = "10601000";
                    //CUENTA PARA ANTICIPOS (ANUALIDADES MANTENIMIENTO)
                    ctaAnticipo = "20501000";
                    //CUENTA PARA MORATORIOS
                    ctaMora = "40101000";
                }



                resultadoCrearPoliza += Environment.NewLine + "Creando Poliza " + inServicio + " del RECIBO: " + reader.GetValue(1).ToString();
                //ingresa fecha del recibo que sera fecha de poliza
                //ingresa servicio (mtto,agua,icc)
                //ingresa no. recibo para referencia de la poliza creada
                resulPol = crearEncabezadoPolizaIngreso(reader.GetValue(2).ToString(), reader.GetValue(4).ToString(), reader.GetValue(1).ToString(),2);
                

                if (resulPol > 0)
                {
                    //pasamos la seson una unica vez solo es prueba
                    lsdkMovimiento.setSesion(frmSDKContableVista.lsdkSesion);
                    foreach (DataGridViewRow row in dgConsulta.Rows)
                    {
                        
                        if (Convert.ToString(reader.GetValue(1).ToString()) ==Convert.ToString( row.Cells[1].Value))
                        {
                            periodo = row.Cells[6].Value.ToString() + "/" + row.Cells[7].Value.ToString();
                            // movimiento++;
                            //cargar poliza de cargo para total a depositar en efectivo
                            if (efeDep==0)
                            {
                                resulPol = crearMovPolizaIngreso(1,row.Cells[4].Value.ToString(), row.Cells[5].Value.ToString(), "", ctaEfeDep, inCtaAbono, row.Cells[8].Value.ToString(), movimiento, inCC);
                                efeDep = 1;
                                movimiento++;
                            }
                            //comprobamos si son ingresos casa club
                            if (inCC == 1)
                            {
                                resulPol = crearMovPolizaIngreso(2, "", "", row.Cells[4].Value.ToString(), inCtaCargo, row.Cells[5].Value.ToString(), row.Cells[8].Value.ToString(), movimiento, inCC);
                               // MessageBox.Show ("");
                            }
                            else
                            {
                                //cargar poliza de abono para multa
                                //comprobamos que el recibo tenga multa
                                if (Convert.ToDecimal(row.Cells[9].Value) > 0)
                                {
                                    if (multa == 0)
                                    {
                                        resulPol = crearMovPolizaIngreso(2, "", "", "C. Actualizacion", inCtaCargo, ctaMulta, row.Cells[9].Value.ToString(), movimiento, inCC);
                                        multa = 1;
                                        movimiento++;
                                    }
                                }

                                //SI ES ANTICIPO
                                if (Convert.ToInt32(row.Cells[11].Value) == 3)
                                {
                                    //comprueba si la cuota anticipada proviene de agua
                                    if (Convert.ToString(row.Cells[13].Value) == "AGUA")
                                        resulPol = crearMovPolizaIngreso(2, row.Cells[4].Value.ToString()+"-", row.Cells[5].Value.ToString(), " "+periodo, inCtaCargo, ctaAnticipo, row.Cells[8].Value.ToString(), movimiento, inCC);//para abonar total del recibo
                                    else
                                        resulPol = crearMovPolizaIngreso(2, row.Cells[4].Value.ToString()+"-", row.Cells[5].Value.ToString(), " "+periodo, inCtaCargo, ctaAnticipo, row.Cells[10].Value.ToString(), movimiento, inCC);
                                }
                                else if (Convert.ToInt32(row.Cells[11].Value) == 9)
                                {
                                    resulPol = crearMovPolizaIngreso(2, "Extemp.", " ", " "+periodo, inCtaCargo, ctaMora, row.Cells[10].Value.ToString(), movimiento, inCC);
                                }
                                else
                                {
                                    resulPol = crearMovPolizaIngreso(2, row.Cells[4].Value.ToString()+"-", row.Cells[5].Value.ToString(), " "+periodo, inCtaCargo, ctaCuota, row.Cells[10].Value.ToString(), movimiento, inCC);
                                    //MessageBox.Show("Movimiento " + movimiento + ": Lote-" + Convert.ToInt32(row.Cells[0].Value));
                                }
                            }
                            movimiento++;
                        }
                    }
                    //inicializamos valores
                    movimiento = 1;
                    efeDep = 0;
                    multa = 0;
                    inCC = 0;
                    //fin inicializamos valores
                    if (resulPol > 0)
                    {
                        resultadoCrearPoliza += Environment.NewLine + "Resul: " + crearPolizaIngreso(reader.GetValue(1).ToString());
                    }
                    else
                        MessageBox.Show("Se generó encabezado de poliza, pero algunos movimientos generarón error. Vuelva a intentarlo.");
                }
                else
                    MessageBox.Show("Se generó error al generar el encabezado de la poliza. Volver a ejecutar proceso.");
            }
            MessageBox.Show(resultadoCrearPoliza);
            Conexion.FinalizarSesion();
        }
        #endregion

        //DataTable tablaRec;
        public DataTable tablaRecibosN (string inMes, string inAnio, int inOp)
        {
            DataTable tablaRec = new DataTable();
            // Here we create a DataTable with four columns.
            tablaRec.Columns.Add("cva_folio", typeof(string));
            tablaRec.Columns.Add("fecha_pago", typeof(string));
            tablaRec.Columns.Add("no_mov", typeof(string));
            //obtiene los no. de recibos
            IDataReader readerRecibo = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_SDK_Contable('" + inMes + "','" + inAnio + "'," + inOp + ")");
            while (readerRecibo.Read())
            {
                // Here we add five DataRows.
                tablaRec.Rows.Add(readerRecibo.GetValue(2).ToString(), readerRecibo.GetValue(3).ToString(), readerRecibo.GetValue(4).ToString());

            }
            Conexion.FinalizarSesion();
            return tablaRec;
            
        }

        #region consulta por FECHA POR DIA DE Recibo para generar Polizas
        public void consultaPolFechaRecibo(DataGridView dgConsulta, string inMes, string inAnio, int inOp, string inServicio, string inCtaCargo, string inCtaMulta, string inCtaAbono, string inCtaAnualidades, string inCtaMoratorios)
        {
            ResultadoTrnx resulDTO = new ResultadoTrnx();
            //obtenemos tabla de recibos
            DataTable dataNoRecibo = new DataTable();
            dataNoRecibo = tablaRecibosN(inMes, inAnio, 11);
            //iniciamos la conexion con el servidor
            // Backend.Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            //llenamos nuestro reader con la consulta de nuestro SP
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_SDK_Contable('" + inMes + "','" + inAnio + "'," + inOp + ")");
           

            int movimiento = 1, efeDep = 0, multa = 0, inCC = 0;
            string periodo, noRecibo="", fechaRec, noMov, fechaRecIN, noMovIN;
            string ctaEfeDep = "", ctaMulta = "", ctaCuota = "", ctaAnticipo = "", ctaMora = "";

           
            //siclamos cada registro que contiene nuestro reader
            //continiene el numero d manzanas y recorremos el listado
            while (reader.Read())
            {
                resultadoCrearPoliza += Environment.NewLine + "Creando Poliza " + inServicio + " del RECIBO: " + reader.GetValue(1).ToString();
                //ingresa fecha del recibo que sera fecha de poliza
                //ingresa servicio (mtto,agua,icc)
                //ingresa no. recibo para referencia de la poliza creada
                resulPol = crearEncabezadoPolizaIngreso(reader.GetValue(2).ToString(), "Ingresos Diarios", "",2);


                if (resulPol > 0)
                {
                    //pasamos la seson una unica vez solo es prueba
                    lsdkMovimiento.setSesion(frmSDKContableVista.lsdkSesion);
                    foreach (DataGridViewRow row in dgConsulta.Rows)
                    {
                       
                        //--> AQUI COMENZAMOS A COMPRAR EL VALOR PARA EL ENCABEZADO DE LAS POLIZAS
                        if (Convert.ToString(reader.GetValue(2).ToString()) == Convert.ToString(row.Cells[2].Value))
                        {
                            //||||||||||||||DEFINIMOS CUENTAS||||||||||||||||||||||||
                            #region definir cuentas contables dependiendo el servicio
                            //if (reader.GetValue(4).ToString() == "AGUA")
                            if (Convert.ToString(row.Cells[13].Value) == "AGUA")
                            {
                                // CUENTA EFECTIVO A DEPOSITAR
                                ctaEfeDep = "110201";
                                inCC = 0;
                                //CUENTA PARA MULTAS
                                ctaMulta = "40102000";
                                //CUENTA PARA ABONO POR CUOTAS
                                ctaCuota = "110502";
                                //CUENTA PARA ANTICIPOS (ANUALIDADES MANTENIMIENTO)
                                ctaAnticipo = "220502";
                                //CUENTA PARA MORATORIOS
                                ctaMora = "410202";
                            }
                            //  else if (reader.GetValue(4).ToString() == "MANTENIMIENTO")
                            else if (Convert.ToString(row.Cells[13].Value) == "MANTENIMIENTO")
                            {
                                // CUENTA EFECTIVO A DEPOSITAR
                                ctaEfeDep = "110201";
                                inCC = 0;
                                //CUENTA PARA MULTAS
                                ctaMulta = "410102";
                                //CUENTA PARA ABONO POR CUOTAS
                                ctaCuota = "110501";
                                //CUENTA PARA ANTICIPOS (ANUALIDADES MANTENIMIENTO)
                                ctaAnticipo = "220501";
                                //CUENTA PARA MORATORIOS
                                ctaMora = "410102";
                            }
                            //else if (reader.GetValue(4).ToString() == "CASA CLUB")
                            else if (Convert.ToString(row.Cells[13].Value) == "CASA CLUB")
                            {
                                // CUENTA EFECTIVO A DEPOSITAR
                                ctaEfeDep = "110201";
                                inCC = 1;
                                // LAS SIGUIENTES CUENTAS NO SERAN DE UTILIDAD PARA INGRESOS CASA CLUB
                                //CUENTA PARA MULTAS
                                ctaMulta = "40102000";
                                //CUENTA PARA ABONO POR CUOTAS
                                ctaCuota = "10601000";
                                //CUENTA PARA ANTICIPOS (ANUALIDADES MANTENIMIENTO)
                                ctaAnticipo = "20501000";
                                //CUENTA PARA MORATORIOS
                                ctaMora = "40101000";
                            }
                            #endregion
                            //|||||||||||||| FIN DEFINIMOS CUENTAS||||||||||||||||||||||||
                            periodo = row.Cells[6].Value.ToString() + "/" + row.Cells[7].Value.ToString();

                            //||||||||||||SIMPLIFICANDO CODIGO
                            /*if (noRecibo == "")
                                efeDep = 0;
                            else if (noRecibo == Convert.ToString(row.Cells[1].Value))
                                efeDep = 1;
                            else
                                efeDep = 0;
                                */
                            if (noRecibo != Convert.ToString(row.Cells[1].Value))
                            {
                                efeDep = 0;
                                multa = 0;
                            }
                            noRecibo = Convert.ToString(row.Cells[1].Value);
                            //|||||FIN SIMPLIFICANDO CODIGO

                            // movimiento++;
                            //cargar poliza de cargo para total a depositar en efectivo
                            if (efeDep == 0)
                                    {
                                        resulPol = crearMovPolizaIngreso(1, row.Cells[4].Value.ToString(), row.Cells[5].Value.ToString(), "", ctaEfeDep, inCtaAbono, row.Cells[8].Value.ToString(), movimiento, inCC);
                                        efeDep = 1;
                                        movimiento++;
                                    }
                            /* noRecibo = Convert.ToString(row.Cells[1].Value);
                                                    fechaRec = Convert.ToString(row.Cells[2].Value);
                                                    noMov = Convert.ToString(row.Cells[3].Value);
                                                        foreach (DataRow rowNoRecibo in dataNoRecibo.Rows)
                                                        {
                                                            noRecINGlob = rowNoRecibo.Field<string>(0);
                                                            fechaRecIN = rowNoRecibo.Field<string>(1);
                                                            noMovIN = rowNoRecibo.Field<string>(2);
                                                            // ... Write value of first field as integer.

                                                            if (noRecINGlob == noRecibo && fechaRecIN == fechaRec && noMovIN == noMov)
                                                            {
                                                                efeDep = 0;
                                                            }
                                                        }
                                                        */
                            //comprobamos si son ingresos casa club
                            if (inCC == 1)
                            {
                                resulPol = crearMovPolizaIngreso(2, "", "", row.Cells[4].Value.ToString(), inCtaCargo, row.Cells[5].Value.ToString(), row.Cells[8].Value.ToString(), movimiento, inCC);
                                // MessageBox.Show ("");
                            }
                            else
                            {
                                //cargar poliza de abono para multa
                                //comprobamos que el recibo tenga multa
                                if (Convert.ToDecimal(row.Cells[9].Value) > 0)
                                {
                                    if (multa == 0)
                                    {
                                        resulPol = crearMovPolizaIngreso(2, "", "", "C. Actualizacion", inCtaCargo, ctaMulta, row.Cells[9].Value.ToString(), movimiento, inCC);
                                        multa = 1;
                                        movimiento++;
                                    }
                                }

                                //SI ES ANTICIPO
                                if (Convert.ToInt32(row.Cells[11].Value) == 3)
                                {
                                    //comprueba si la cuota anticipada proviene de agua
                                    if (Convert.ToString(row.Cells[13].Value) == "AGUA")
                                        resulPol = crearMovPolizaIngreso(2, row.Cells[4].Value.ToString() + "-", row.Cells[5].Value.ToString(), " " + periodo, inCtaCargo, ctaAnticipo, row.Cells[8].Value.ToString(), movimiento, inCC);//para abonar total del recibo
                                    else
                                        resulPol = crearMovPolizaIngreso(2, row.Cells[4].Value.ToString() + "-", row.Cells[5].Value.ToString(), " " + periodo, inCtaCargo, ctaAnticipo, row.Cells[10].Value.ToString(), movimiento, inCC);
                                }
                                else if (Convert.ToInt32(row.Cells[11].Value) == 9)
                                {
                                    resulPol = crearMovPolizaIngreso(2, "Extemp.", " ", " " + periodo, inCtaCargo, ctaMora, row.Cells[10].Value.ToString(), movimiento, inCC);
                                }
                                else
                                {
                                    //crea poliza
                                    resulPol = crearMovPolizaIngreso(2, row.Cells[4].Value.ToString() + "-", row.Cells[5].Value.ToString(), " " + periodo, inCtaCargo, ctaCuota, row.Cells[10].Value.ToString(), movimiento, inCC);
                                    //MessageBox.Show("Movimiento " + movimiento + ": Lote-" + Convert.ToInt32(row.Cells[0].Value));
                                }
                            }
                            movimiento++;
                            //aqui                            
                            //efeDep = 0;
                        }
                    }
                    //inicializamos valores
                    movimiento = 1;
                    //efeDep = 0;
                    multa = 0;
                    inCC = 0;
                    //fin inicializamos valores
                    if (resulPol > 0)
                    {
                        resultadoCrearPoliza += Environment.NewLine + "Resul: " + crearPolizaIngreso(reader.GetValue(1).ToString());
                    }
                    else
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
        //||||||||||||||||NUEVO CODIGO SDK||||||||||||||
        public int crearEncaPolizasDr(string fechaP, string referenciaP, int tipoP)
        {
            lsdkPoliza = new TSdkPoliza();
            //le pasamos la sesion activa
            lsdkPoliza.setSesion(frmSDKContableVista.lsdkSesion);
            //inicializamos el objeto
            //lo que hace es limpiar el objeto para iniciar en blanco y llenar las propiedades
            lsdkPoliza.iniciarInfo();


            //llenar las propiedades de nuestro encabezado
            if(tipoP==1)
                lsdkPoliza.Tipo = ETIPOPOLIZA.TIPO_DIARIO;
            else if(tipoP==2)
                lsdkPoliza.Tipo = ETIPOPOLIZA.TIPO_INGRESOS;
            lsdkPoliza.Clase = ECLASEPOLIZA.CLASE_AFECTAR;
            lsdkPoliza.Impresa = 0;
            lsdkPoliza.Fecha = DateTime.Parse(fechaP);
            lsdkPoliza.SistOrigen = ESISTORIGEN.ORIG_ADMINPAQNG;
            lsdkPoliza.Ajuste = 0;
            lsdkPoliza.Concepto = referenciaP;

            return resul = 1;//retornar 1 da luz verde
        }//fin encabezado
        public int crearMovPolizas(int opCA, string inCuenta, string inImporteCA, string inRef, int inNumMov)
        {

            //pasar sesion
            lsdkMovimiento.setSesion(frmSDKContableVista.lsdkSesion);

            ///////////CARGO////////////////////////////
            if (opCA == 1)
            {
                //inicializamos el objeto
                //lo que hace es limpiar el objeto para iniciar en blanco y llenar las propiedades
                lsdkMovimiento.iniciarInfo();

                //llenar propiedades del movimiento
                lsdkMovimiento.NumMovto = inNumMov;
                lsdkMovimiento.CodigoCuenta = inCuenta;
                lsdkMovimiento.TipoMovto = ETIPOIMPORTEMOVPOLIZA.MOVPOLIZA_CARGO;
                lsdkMovimiento.Importe = Decimal.Parse(inImporteCA);
                lsdkMovimiento.ImporteME = 0;
                lsdkMovimiento.Diario = 0;
                lsdkMovimiento.SegmentoNegocio = "0";
                lsdkMovimiento.Referencia = inRef;
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
            }
            ///////////ABONO////////////////////////////
            if (opCA == 2)
            {
                //inicializamos el objeto
                //lo que hace es limpiar el objeto para iniciar en blanco y llenar las propiedades
                lsdkMovimiento.iniciarInfo();
                //lsdkMovimiento = new TSdkMovimientoPoliza();

                //llenar propiedades del movimiento
                //inNumMov++;
                lsdkMovimiento.NumMovto = inNumMov;
                lsdkMovimiento.CodigoCuenta = inCuenta;
                lsdkMovimiento.TipoMovto = ETIPOIMPORTEMOVPOLIZA.MOVPOLIZA_ABONO;
                lsdkMovimiento.Importe = Decimal.Parse(inImporteCA); ;
                lsdkMovimiento.ImporteME = 0;
                lsdkMovimiento.Diario = 0;
                lsdkMovimiento.SegmentoNegocio = "0";
                lsdkMovimiento.Referencia = inRef;
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
            }
            lsdkMovimiento = new TSdkMovimientoPoliza();
            return resul;

        }//fin movimientos de poliza ABONOS

        public string crearPolizas(string periodoIN)
        {
            //crear poliza
            lResul = lsdkPoliza.crea();
            if (lResul > 0)
            {
                resulCreaPolIngreso = "Se generó correctamente la poliza: " + periodoIN;
                // MessageBox.Show("Se registró la poliza correctamente");
            }
            else
            {
                MessageBox.Show("Error " + lsdkPoliza.getMensajeError());
                resulCreaPolIngreso = lsdkPoliza.getMensajeError();
            }
            return resulCreaPolIngreso;
        }


        //CREA POLIZAS DE CUOTAS MENSUALES
        public void prcPolizaCuotas(DataGridView dgConsulta, string inMes, string inAnio)
        {
            resultadoCrearPoliza += Environment.NewLine + "Creando Poliza Cuotas Mensuales " + inMes + "-" + inAnio;
            //ingresa fecha del recibo que sera fecha de poliza
            //ingresa servicio (mtto,agua,icc)
            //ingresa no. recibo para referencia de la poliza creada
            //opcion del tipo de encabezado 1 para cuotas por cobrar y 2 para ingresos
            resulPol = crearEncaPolizasDr(inAnio + "-" + inMes + "-05", "CUOTAS POR COBRAR",1);
            int mov = 1;
            if (resulPol > 0)
            {
                //comenzamos a recorrer el datagrid para los movimientos
                foreach (DataGridViewRow row in dgConsulta.Rows)
                {
                    // if (mov <= 2)
                    //{
                    //--> AQUI COMENZAMOS A COMPRAR EL VALOR PARA EL ENCABEZADO DE LAS POLIZAS
                    if (decimal.Parse(row.Cells[2].Value.ToString()) > 0)
                    {
                        resulPol = crearMovPolizas(1, row.Cells[0].Value.ToString().Replace("-", ""), row.Cells[2].Value.ToString(), "", mov);
                        mov++;
                        resulPol = crearMovPolizas(2, row.Cells[1].Value.ToString().Replace("-", ""), row.Cells[2].Value.ToString(), "", mov);
                        mov++;
                    }
                    //}
                }
                mov = 1;
                if (resulPol > 0)
                {
                    resultadoCrearPoliza += Environment.NewLine + "Resul: " + crearPolizas("Periodo: " + inMes + "-" + inAnio);
                }
                else
                    MessageBox.Show("Se generó encabezado de poliza, pero algunos movimientos generarón error. Vuelva a intentarlo.");
            }
            else
                MessageBox.Show("Se generó error al generar el encabezado de la poliza. Volver a ejecutar proceso.");

            MessageBox.Show(resultadoCrearPoliza);
        }

        //CREA POLIZAS DE INGRESOS DIARIOS
        //CREA POLIZAS DE CUOTAS MENSUALES
        public void prcPolizaIngresos(DataGridView dgConsulta, string inMes, string inAnio)
        {
            string diaPol = "";
            int efeDep = 0, mov = 1 ;
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_frm_SDK_Contable('" + inMes + "','" + inAnio + "',12)");
            //ciclamos cada registro que contiene nuestro reader
            //continiene el dia y recorremos el listado
            while (reader.Read())
            {
                //definimos fecha en la que esta el cursor
                diaPol = reader.GetValue(2).ToString();
                resultadoCrearPoliza += Environment.NewLine + "Creando Poliza Cuotas Diarias " + diaPol;
                resulPol = crearEncaPolizasDr(diaPol, "INGRESOS DIARIOS",2);
                if (resulPol > 0)
                {
                    lsdkMovimiento.setSesion(frmSDKContableVista.lsdkSesion);
                    //comenzamos a recorrer el datagrid para los movimientos
                    foreach (DataGridViewRow row in dgConsulta.Rows)
                    {
                        if (reader.GetValue(2).ToString() == row.Cells[0].Value.ToString())
                        {
                            if(efeDep==0)
                            {
                                resulPol = crearMovPolizas(1, row.Cells[1].Value.ToString().Replace("-", ""), row.Cells[5].Value.ToString(), "", mov);
                                mov++;
                                efeDep = 1;
                            }
                            //aqui ya cargo efectivo ahora comenzara con resto de movs
                            else
                            {
                                //verificamos que las cuentas no esten vacias, en caso de esar vacias se omite el cargo o abono
                                if (row.Cells[1].Value.ToString() != "")
                                {
                                    if (decimal.Parse(row.Cells[6].Value.ToString()) > 0)
                                    {
                                        resulPol = crearMovPolizas(2, row.Cells[1].Value.ToString().Replace("-", ""), row.Cells[6].Value.ToString(), "", mov);
                                        mov++;
                                    }
                                }
                                if (row.Cells[2].Value.ToString() != "")
                                {
                                    if (decimal.Parse(row.Cells[6].Value.ToString()) > 0)
                                    {
                                        resulPol = crearMovPolizas(1, row.Cells[2].Value.ToString().Replace("-", ""), row.Cells[6].Value.ToString(), "", mov);
                                        mov++;
                                    }
                                }
                                if (row.Cells[3].Value.ToString() != "")
                                {
                                    if (decimal.Parse(row.Cells[6].Value.ToString()) > 0)
                                    {
                                        resulPol = crearMovPolizas(2, row.Cells[3].Value.ToString().Replace("-", ""), row.Cells[6].Value.ToString(), "", mov);
                                        mov++;
                                    }
                                }
                            }
                        } 
                    }
                    mov = 1;
                    efeDep = 0;
                    if (resulPol > 0)
                    {
                        resultadoCrearPoliza += Environment.NewLine + "Resul: " + crearPolizas("Fecha: " + diaPol);
                    }
                    else
                        MessageBox.Show("Se generó encabezado de poliza, pero algunos movimientos generarón error. Vuelva a intentarlo.");
                }
                else
                    MessageBox.Show("Se generó error al generar el encabezado de la poliza. Volver a ejecutar proceso.");
            }
            MessageBox.Show(resultadoCrearPoliza);
            Conexion.FinalizarSesion();
        }
    }
}
