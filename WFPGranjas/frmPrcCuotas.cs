using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFPGranjas
{
    public partial class frmPrcCuotas : Form
    {
        String periodo = null;
        String anio = null;
        public frmPrcCuotas()
        {
            InitializeComponent();
        }

        private void frmPrcCuotas_Load(object sender, EventArgs e)
        {
            actualizaDatos();

        }

        private void button1_Click(object sender, EventArgs e)
        {
            periodo = cmbPeriodos.SelectedValue.ToString();
            anio = cmbAnios.SelectedValue.ToString();

            lblInfo.Visible = true;
            progressBar1.Visible = true;
            lblInfoMsj.Visible = true;
            //Iniciamos el trabajo
            string message = "Deseas iniciar la Generacion de Cuotas de Mantenimiento?";
            string caption = "Confirmacion del Proceso ";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            DialogResult result;

            // Displays the MessageBox.

            result = MessageBox.Show(this, message, caption, buttons,
                MessageBoxIcon.Question, MessageBoxDefaultButton.Button1,
                 0, "mspaint.chm");

            if (result == DialogResult.Yes)
            {

                if (!bwProgress.IsBusy)
                {
                    bwProgress.RunWorkerAsync();
                    //   btnCancelar.Enabled = true;
                    btnGenCuotas.Enabled = false;
                }
            }
           

        }
        public void actualizaDatos() {

            var BeanCPeriodo = new Backend.Procesos.PrcCuotaMto();
            BeanCPeriodo.consultaPeriodos(cmbPeriodos, 1);
            BeanCPeriodo.consultaPeriodos(cmbAnios, 2);
        }
        public void generacionCuotas() {


            Boolean resultado = false;
            var BeanCPeriodo = new Backend.Procesos.PrcCuotaMto();
            Object[] parames = { periodo, anio, "system" };

            resultado = BeanCPeriodo.registroCuotas(parames);
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
                lblInfoMsj.Text = "Procesando Cuotas por Lote";
               
            }
            if (e.ProgressPercentage > 40 && e.ProgressPercentage < 70)
            {
                lblInfoMsj.Text = "Aplicando Anticipo por Lote";
     
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
            actualizaDatos();
        }
    }
}
