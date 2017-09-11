using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SDKCONTPAQNGLib; //el com de sdk de contabilidad y bancos
using System.Windows.Forms;


namespace WFPGranjas.Backend.SDK
{
    class polizaDiario
    {
        static int lResul = 0;
        //objeto poliza
        public static TSdkPoliza lsdkPoliza = new TSdkPoliza();
        //objeto mov poliza
        public static TSdkMovimientoPoliza lsdkMovimiento = new TSdkMovimientoPoliza();
        //inicio encabezado
        //PARAMETROS DE ENTRADA
        //FECHA: "2017-07-30"

        public void crearEncabezadoPoliza(string fechaP, string mzaP, string loteP, string servicioP, string ctaCargoP, string ctaAbonoP, string importeP)
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
            lsdkPoliza.Concepto = "CUOTAS POR COBRAR " + servicioP;
            MessageBox.Show("Se cargo el encabezado de la Poliza");

            //crear movimientos
           lResul  = crearMovPoliza(mzaP, loteP, ctaCargoP, ctaAbonoP, importeP);

            //creamos la poliza
            if (lResul > 0)
            {
                crearPoliza();
            }
            else
                MessageBox.Show("Error al crear la poliza");

        }//fin encabezado

        //movimientos de poliza
        int resul = 0;
        public int  crearMovPoliza(string inMZ, string inLT,string  inCtaCargo, string  inCtaAbono, string inImporteCA)
        {
            //|||||||OJO PROBAR DESPUES
            //lsdkMovimiento = new TSdkMovimientoPoliza();

            //pasar sesion
            lsdkMovimiento.setSesion(frmSDKContableVista.lsdkSesion);

            ///////////CARGO////////////////////////////
            //inicializamos el objeto
            //lo que hace es limpiar el objeto para iniciar en blanco y llenar las propiedades
            lsdkMovimiento.iniciarInfo();
           

            //llenar propiedades del movimiento
            lsdkMovimiento.NumMovto = 1;
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
                MessageBox.Show("Primer movimiento");
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
            lsdkMovimiento.NumMovto = 2;
            lsdkMovimiento.CodigoCuenta = inCtaAbono;
            lsdkMovimiento.TipoMovto = ETIPOIMPORTEMOVPOLIZA.MOVPOLIZA_ABONO;
            lsdkMovimiento.Importe = Decimal.Parse(inImporteCA); ;
            lsdkMovimiento.ImporteME = 0;
            lsdkMovimiento.Diario = 0;
            lsdkMovimiento.SegmentoNegocio = "0";
            lsdkMovimiento.Referencia= "MZA " + inMZ + " LOTE " + inLT;

            //agregamos movimientos a la poliza
            lResul = lsdkPoliza.agregaMovimiento(lsdkMovimiento);

            if (lResul > 0)
            {
                MessageBox.Show("Segundo movimiento");
                resul=1;             
            }
            else
            {
                MessageBox.Show("Error " + lsdkPoliza.getMensajeError());
                resul = 0;
            }
            return resul;

        }//fin movimientos de poliza

        public static void crearPoliza()
        {
            //crear poliza
            lResul = lsdkPoliza.crea();
            if (lResul > 0)
            {
                MessageBox.Show("Se registró la poliza correctamente");
            }
            else
            {
                MessageBox.Show("Error " + lsdkPoliza.getMensajeError());
            }
        }
    }
}
