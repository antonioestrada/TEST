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
    public partial class frmGeneraAvisos : Form
    {
        String periodo = null;
        int mesG = 0, anioG = 0;
        int tipo_mov = 0, id_medidor = 0, id_lote = 0;

        public frmGeneraAvisos()
        {
            InitializeComponent();
        }

        private void mSalirBanco_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmGeneraAvisos_Load(object sender, EventArgs e)
        {
            consultaPer();
            //carga combo del catalogo de  manzanas 
            var BeanCLotesMza = new Backend.Catalogos.CManzanaLotes();
            BeanCLotesMza.consultaMazaCombo(cmbManzana);
        }
        //|||||||||||||||inicio tonka-210117|||||||||||||||||
        #region Consulta Periodo para el registro / validaciones
        public void consultaPer()
        {
            // gbEstatus.Visible = false;
            var BeanCPeriodo = new Backend.Procesos.PrcCuotaMto();
            BeanCPeriodo.consultaPeriodos(cmbPeriodos, 3, 1);
            BeanCPeriodo.consultaPeriodos(cmbAnios, 2, 1);

        }

        public void changeGB()
        {
            if (rbTodos.Checked == true)
            {
                pXLote.Visible = false;
                lblAsoc.Visible = false;
                lblDir.Visible = false;
                btnEjecutar.Enabled = true;
            }
            else if (rbColono.Checked == true)
            {
                pXLote.Visible = true;
                lblAsoc.Visible = true;
                lblDir.Visible = true;
                btnEjecutar.Enabled = false;
            }
        }

        #region Busca por lote
        public void BuscaIdLote()
        {
            //Al momento de dar enter en el lote manda los parametros de consulta
            Object[] parames = {
                2,//opcion 2 busca por id de manzana y nombre de lote
                Convert.ToInt32(cmbManzana.SelectedValue.ToString()),//id manzana
                txtLote.Text,//nombre de lote
                "",
            };

            var BeanCBeanManzana = new Backend.Catalogos.CManzanaLotes();
            ResultadoTrnx resultado = new ResultadoTrnx();
            //ejecutamos el sp donde nos mostrara los siguientes datos como id del lote, nombre del colono, direccion, y superficie del lote
            resultado = BeanCBeanManzana.consultaLoteColonos(parames);
            //almacenamos el id del lote en la variable global local
            id_lote = resultado.idLoteDTO;
            lblAsoc.Text = resultado.conoloDTO;
            lblDir.Text = resultado.direccionDTO;
            lblAsoc.Visible = true;
            lblDir.Visible = true;
            if (lblAsoc.Text == "")
            {
                btnEjecutar.Enabled = false;
            }
            else
            {
                btnEjecutar.Enabled = true;
            }

        }
        #endregion

        //|||||||||||||||fin tonka-210117|||||||||||||||||
        #endregion

        private void rbTodos_CheckedChanged(object sender, EventArgs e)
        {
            changeGB();
        }

        private void btnEjecutar_Click(object sender, EventArgs e)
        {
            frmGeneraAvisosPDF browser = new frmGeneraAvisosPDF(cmbPeriodos.SelectedValue.ToString(), cmbAnios.SelectedValue.ToString());
            browser.Show();
            //MessageBox.Show("" + id_lote);
        }

        private void rbColono_CheckedChanged(object sender, EventArgs e)
        {
            changeGB();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            if (cmbManzana.Items.Count > 0)
                BuscaIdLote();
            else
                MessageBox.Show("No hay Registro de Lotes. Favor de registrar Colonos, Manzanas y Lotes antes de registrar Medidores.");
        }

        private void btnCapturaLec_Click(object sender, EventArgs e)
        {
            var BeanCPeriodoActual = new Backend.Procesos.PrcAnticipos();
            int periodoActual = BeanCPeriodoActual.obtienePeriodoActual();
            periodo = cmbPeriodos.SelectedValue.ToString();
            if (periodoActual != int.Parse(periodo))
            {
                object itemFirst = cmbPeriodos.SelectedItem;
                Dictionary<String, String> periodos = new Dictionary<String, String>();
                String mensajePeriodo = "Debe de realizar primero el cierre de mes, ";
                mensajePeriodo += Environment.NewLine;
                mensajePeriodo += "Antes del registro de lecturas del mes de " + cmbPeriodos.Text;
                MessageBox.Show(mensajePeriodo);
            }
            else
            {
                if (Convert.ToInt16(cmbPeriodos.SelectedValue.ToString().Length + cmbAnios.SelectedValue.ToString().Length) == 6)
                {
                    mesG = Int16.Parse(cmbPeriodos.SelectedValue.ToString());
                    anioG = Int16.Parse(cmbAnios.SelectedValue.ToString());
                    gbSeleccion.Enabled = true;
                }
                else
                {
                    MessageBox.Show("Ingresa correctamente la fecha.");
                    gbSeleccion.Enabled = true;
                }
            }
        }
    }
}
