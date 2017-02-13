using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WFPGranjas.Backend.Catalogos;

namespace WFPGranjas
{
    public partial class frmPrcCuotas : Form
    {
        String periodo = null;
        String anio = null;
        int servicio = 0;
        string usuario = null;
        public frmPrcCuotas(int pServicio,string usuario)
        {
            InitializeComponent();
            this.servicio = pServicio;
            this.usuario = usuario;
        }

        private void frmPrcCuotas_Load(object sender, EventArgs e)
        {
            if (servicio == 2) {
                groupBox1.BackColor = Color.LightGreen;
                lblTitleCuota.Text = "GENERACION DE CUOTAS DE MANTENIMIENTO";
                pbAgua.Visible = false;
                pbManto.Visible = true;
                actualizaDatos();
            }

            if (servicio == 3)
            {
                groupBox1.BackColor = Color.LightSkyBlue;
                lblTitleCuota.Text = "GENERACION DE CUOTAS DE CONSUMO DE AGUA";
                pbAgua.Visible = true;
                pbManto.Visible = false;
                actualizaDatos();
            }


            if (servicio == 0)
            {
                groupBox1.BackColor = Color.DarkSalmon;
                lblTitleCuota.Text = "GENERACION DE CIERRE DE PERIODO";
                pbAgua.Visible = true;
                pbManto.Visible = false;
                btnGenCuotas.Text = "Generar cierre";
                var BeanCEstatus = new Backend.Catalogos.CManzanaLotes();
             
                 actualizaDatosCierre();
            }
           

        }

        private void button1_Click(object sender, EventArgs e)
        {
            periodo = cmbPeriodos.SelectedValue.ToString();
            anio = cmbAnios.SelectedValue.ToString();
            var BeanCPeriodo = new Backend.Procesos.PrcCuotaMto();

            //Iniciamos el trabajo
            string message = null;
            if (servicio==2)
                 message = "Deseas iniciar la Generacion de Cuotas de Mantenimiento?";
            if (servicio == 3)
                message = "Deseas iniciar la Generacion de Cuotas de Agua?";

            if (servicio == 0)
                message = "Deseas iniciar el cierre de mes?";


            string caption = "Confirmacion del Proceso ";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            DialogResult result;

            // Displays the MessageBox.

            result = MessageBox.Show(this, message, caption, buttons,
                MessageBoxIcon.Question, MessageBoxDefaultButton.Button1,
                 0, "mspaint.chm");

            if (result == DialogResult.Yes)
            {
                gbEstatus.Visible = true;
                if (!bwProgress.IsBusy)
                {
                    if (servicio == 2)
                    {
                        lblInfo.Visible = true;
                        progressBar1.Visible = true;
                        lblInfoMsj.Visible = true;

                        bwProgress.RunWorkerAsync();
                        //   btnCancelar.Enabled = true;
                        btnGenCuotas.Enabled = false;
                    
                    }
                    if (servicio == 3)
                    {
                        
                        Object[] parames = { periodo, anio };
                        Boolean validacion = BeanCPeriodo.validaLecturasAgua(parames);
                        Boolean pendienteCBA  = BeanCPeriodo.validaCBA();
                        Boolean pendienteCuotaMA = BeanCPeriodo.validaCuotaMA();

                        if (validacion && !pendienteCBA && !pendienteCuotaMA)
                        {
                            lblInfo.Visible = true;
                            progressBar1.Visible = true;
                            lblInfoMsj.Visible = true;
                            bwProgress.RunWorkerAsync();
                            //   btnCancelar.Enabled = true;
                            btnGenCuotas.Enabled = false;
                          
                        }
                        else {
                            if(!validacion)
                                 MessageBox.Show("No ha cargado las lecturas del periodo seleccionado");
                            if (pendienteCBA)
                                MessageBox.Show("No ha cargado las cuotas base de agua (CBA) ");
                            if (pendienteCuotaMA)
                                MessageBox.Show("No ha generado las cuotas de mantenimiento ");
                        }
                        // validacion = BeanCPeriodo.validaCBA();

                    }
                    if (servicio == 0)
                    {
                        Boolean pendienteCuotaMA = BeanCPeriodo.validaCuotaMA();
                        Boolean pendienteCuotaAgua = BeanCPeriodo.validaCuotaAgua();
                        if (!pendienteCuotaMA && !pendienteCuotaAgua)
                        {
                            lblInfo.Visible = true;
                            progressBar1.Visible = true;
                            lblInfoMsj.Visible = true;

                            bwProgress.RunWorkerAsync();
                            //   btnCancelar.Enabled = true;
                            btnGenCuotas.Enabled = false;
                          

                        }
                        else
                        {
                            if (pendienteCuotaAgua)
                                MessageBox.Show("No ha generado las cuotas de agua");


                            if (pendienteCuotaMA)
                                MessageBox.Show("No ha generado las cuotas de mantenimiento ");

                        }
                    }


                }
            }         

        }
        public void actualizaDatos() {
            gbEstatus.Visible = false;
            var BeanCPeriodo = new Backend.Procesos.PrcCuotaMto();
            BeanCPeriodo.consultaPeriodos(cmbPeriodos, 1, servicio);
            BeanCPeriodo.consultaPeriodos(cmbAnios, 2, servicio);
            var BeanCPeriodoActual = new Backend.Procesos.PrcAnticipos();
            int periodoActual = BeanCPeriodoActual.obtienePeriodoActual();
            periodo = cmbPeriodos.SelectedValue.ToString();
          
            if (periodoActual!=int.Parse(periodo))
            {
                object itemFirst = cmbPeriodos.SelectedItem;
                Dictionary<String, String> periodos = new Dictionary<String, String>();
              //  periodos.Add(cmbPeriodos.SelectedItem.ToString());
                btnGenCuotas.Enabled = false;
                lblValidaPeriodo.Visible = true;
                String mensajePeriodo = "   Debe de realizar el cierre de mes, ";
                mensajePeriodo+= Environment.NewLine;
                mensajePeriodo += " Antes de generar las cuotas de " + cmbPeriodos.Text;
                lblValidaPeriodo.Text = mensajePeriodo;
                lblValidaPeriodo.Font = new Font(lblValidaPeriodo.Font, FontStyle.Bold);
                lblValidaPeriodo.ForeColor = Color.DarkRed;
            }
        }
        #region Muestra estatus
        public void muestraEstatus()
        {
            var BeanCEstatus = new Backend.Catalogos.CManzanaLotes();
            ResultadoTrnx resultado = new ResultadoTrnx();
            //ejecutamos el sp donde nos mostrara los siguientes datos como id del lote, nombre del colono, direccion, y superficie del lote
            resultado = BeanCEstatus.consultaPeriodos();
            //almacenamos el id del lote en la variable global local
            MDIPrincipal status = new MDIPrincipal();
            //status.tsPeriodo.Text = resultado.periodoEstatus;
            foreach (ToolStripItem item in ((StatusStrip)((Form)status).Controls["statusStrip"]).Items)
            {
                MessageBox.Show(item.Name + "- "+resultado.periodoEstatus);
                item.Text = resultado.periodoEstatus;
            }
        }
        #endregion

        public void actualizaDatosCierre()
        {
            gbEstatus.Visible = false;
            var BeanCPeriodo = new Backend.Procesos.PrcCuotaMto();
            BeanCPeriodo.consultaPeriodos(cmbPeriodos, 1, servicio);
            BeanCPeriodo.consultaPeriodos(cmbAnios, 2, servicio);
            var BeanCPeriodoActual = new Backend.Procesos.PrcAnticipos();
            int periodoActual = BeanCPeriodoActual.obtienePeriodoActual();
            periodo = cmbPeriodos.SelectedValue.ToString();

            if (periodoActual != int.Parse(periodo))
            {
                object itemFirst = cmbPeriodos.SelectedItem;
                Dictionary<String, String> periodos = new Dictionary<String, String>();
                //  periodos.Add(cmbPeriodos.SelectedItem.ToString());
                btnGenCuotas.Enabled = true;
                lblValidaPeriodo.Visible = false;
               // String mensajePeriodo = "   Debe de realizar el cierre de mes, ";
               // mensajePeriodo += Environment.NewLine;
                //mensajePeriodo += " Antes de generar las cuotas de " + cmbPeriodos.Text;
                //lblValidaPeriodo.Text = mensajePeriodo;
                //lblValidaPeriodo.Font = new Font(lblValidaPeriodo.Font, FontStyle.Bold);
                //lblValidaPeriodo.ForeColor = Color.DarkRed;
            }
        }


        public void generacionCuotas() {


            Boolean resultado = false;
            var BeanCPeriodo = new Backend.Procesos.PrcCuotaMto();
            Object[] parames = { periodo, anio, usuario };
            if(servicio==2)
                resultado = BeanCPeriodo.registroCuotasMA(parames);
            if (servicio == 3)
                resultado = BeanCPeriodo.registroCuotasAgua(parames);
            if(servicio==0)
                resultado = BeanCPeriodo.registroCierreMes(parames);

            if (resultado)
            {

              //  MessageBox.Show("!Se registraron Correctamente las Cuotas¡");
            }
        }
        private void bwProgress_DoWork(object sender, DoWorkEventArgs e)
        {
            Random rnd = new Random();
            int init = rnd.Next(1, 100);

            for (int i = 1; i <= 100; i++)
            {
                //Realiza una tarea
                System.Threading.Thread.Sleep(100);
                if (i == init) 
                        generacionCuotas();

                bwProgress.ReportProgress(i);
                if (bwProgress.CancellationPending)
                    return;
            }
        }

        private void bwProgress_ProgressChanged(object sender, ProgressChangedEventArgs e)
        {
            //Notificar el progreso de la tarea
            progressBar1.Value = e.ProgressPercentage;
            lblInfo.Text = e.ProgressPercentage + "%";
            if (e.ProgressPercentage > 1 && e.ProgressPercentage<=40) {
                lblInfoMsj.Text = "Procesando Cuotas";
               
            }
            if (e.ProgressPercentage > 40 && e.ProgressPercentage < 70)
            {
                lblInfoMsj.Text = "Aplicando Anticipos";
     
            }
            if (e.ProgressPercentage >= 70 && e.ProgressPercentage < 99)
            {
                lblInfoMsj.Text = "      Validando Cuotas...";
     
            }
            
        }

        private void bwProgress_RunWorkerCompleted(object sender, RunWorkerCompletedEventArgs e)
        {
            //Realizamos las operaciones que haya que realizar al terminar el progreso
            lblInfoMsj.Text = "Finalizo la Generacion de Cuotas";
            //   btnCancelar.Enabled = false;
             btnGenCuotas.Enabled = true;

            progressBar1.Value = 0;

            var bitacora = new Backend.Procesos.Bitacora();
            string modulo = null;

            if (servicio == 2)
            {
                modulo = "Mantenimiento.Generacion Cuotas Mantenimiento";

            }
            if (servicio == 3)
            {
                modulo = "Cuotas Agua.Generacion Cuotas de Agua";
            }

            if (servicio == 0)
            {
                modulo = "Cierre.Generacion de cierre de mes";
                lblInfoMsj.Text = "Finalizo la generacion del cierre";
                muestraEstatus();



            }
            Object[] parames2 = { usuario, "Administracion." + modulo, "Generacion de cuotas del mes :" + cmbPeriodos.Text, "OK", "Satisfactorio" };
            bitacora.registroBitacora(parames2);
            btnGenCuotas.Visible = false;
        }

    
    }
}
