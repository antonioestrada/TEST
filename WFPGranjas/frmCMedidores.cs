using AccesoDatos;
using Backend;
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
    public partial class frmCMedidores : Form
    {
        int tipo_mov = 0, id_medidor=0, id_lote = 0;
        double m2=0;
        public frmCMedidores()
        {
            InitializeComponent();
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
            txtColono.Text = resultado.conoloDTO;
            txtDireccion.Text = resultado.direccionDTO;
            m2 = resultado.m2DTO;

            var BeanCBeanMedidor = new Backend.Catalogos.CMedidores();
            //la ejecucion de este sp nos mostrara los contratos asignas a este lote
            //nos trae en el value del combo el id del medidor, en el display el numero del contrato
            BeanCBeanMedidor.consultaContratos(cmbContratos,2,id_lote);
            cmbContratos.Visible = true;
            lblContrato.Visible = true;
            btnVer.Visible = true;
        }
        #endregion

        #region Busca por medidor
        public void buscaMedidor()
        {
            var BeanCMedidor = new Backend.Catalogos.CMedidores();
            ResultadoTrnx resultado2 = new ResultadoTrnx();
            resultado2 = BeanCMedidor.consultaConInfo(Convert.ToInt32(cmbContratos.SelectedValue.ToString()));
            id_medidor =Convert.ToInt32( resultado2.idMedidorDTO);
            txtContrato.Text = resultado2.contratoDTO;
            txtMedidor.Text = resultado2.medidorDTO;
            txtM2.Text =Convert.ToString(m2);
            txtBaseCNA.Text = Convert.ToString(resultado2.cnaDTO);
        }
        #endregion

        #region medidores ABC
        public void abcMedidores(int tipoMov, int idMedidor, int idLote, TextBox contrato, TextBox medidor, TextBox cna)
        {
            var BeanMedidor = new Backend.Catalogos.CMedidores();
            var BeanCMedidor = new Backend.Catalogos.CMedidores();

            //definimos los parametros que pasaran al sp
            Object[] parames = {
                tipoMov,
                idMedidor,//id_manzana solo agregamos el parametro id_manzana para continuar con la ejecucion del sp
                idLote,
                contrato.Text,
                medidor.Text,
                cna.Text
            };
            //cachamos el valor que retorna nuestro sp
            //result=0 Alta, Baja o Cambio exitoso
            //result=2 el registro ya existe
            //result=2 el registro no existe
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            resultado = BeanMedidor.abcMedidor(parames);
            pnlResult.Visible = true;
            lblMensaje.Text = resultado.Mensaje;

            if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlResult.BackColor = Color.DeepSkyBlue;
                lblMensaje.ForeColor = Color.White;
                limpiaF();
            }
            else if (resultado.Cve_resultado == 1)
            {
                pnlResult.BackColor = Color.Orange;
                lblMensaje.ForeColor = Color.White;
            }
            else if (resultado.Cve_resultado == 2)
            {
                pnlResult.BackColor = Color.OrangeRed;
                lblMensaje.ForeColor = Color.White;

            }else if(resultado.Cve_resultado == 4)
            {
                //si es para consulta del contrato
                pnlResult.Visible = false;
                this.Size = new Size(560, 220);
                txtContrato.Text = "";
                txtMedidor.Text = "";
                txtBaseCNA.Text = "";
                txtM2.Text = "";
                cmbContratos.Enabled = true;
                mNuevo.Enabled = true;

            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region Limpia formulario
        public void limpiaF()
        {
            Backend.Utilerias limpia = new Backend.Utilerias();
            limpia.limpiarTextboxGroupBox(gbGenerales);
            this.Size = new Size(560, 220);
            pnlPrinBancos.BackColor = Color.Green;
            pnlResult.Visible = false;
            mNuevo.Enabled = true;
            mEditar.Enabled = true;
            mEliminar.Enabled = true;
            txtLote.Enabled = true;
            cmbContratos.Enabled=true;
            cmbContratos.DataSource = null;
            cmbContratos.Items.Clear();
            txtLote.Text = "";
            cmbContratos.Visible = false;
            lblContrato.Visible = false;
            btnVer.Visible = false;
        }
        #endregion

        #region opcion de formulario define colores y tamaño de formulario
        public void opForm(string encabezadoMov, Color colorT, string opcion, int mov, ToolStripMenuItem bloqueaA, ToolStripMenuItem bloqueaB)
        {
            this.Size = new Size(560, 460);
            lblEncabezado.Text = encabezadoMov;
            pnlPrinBancos.BackColor = colorT;
            pnlEncabezado.BackColor = colorT;
            btnGuardar.Text = opcion;
            bloqueaA.Enabled = false;
            bloqueaB.Enabled = false;
            txtLote.Enabled = false;
            cmbContratos.Enabled = false;
            tipo_mov = mov;
        }
        #endregion

        private void mNuevo_Click(object sender, EventArgs e)
        {
            // btnAdd.Visible = true;
            if (id_lote != 0)
            {
                txtContrato.ReadOnly = false;
                txtMedidor.ReadOnly = false;
                txtM2.Text = Convert.ToString(m2);
                Globales vGlobal = new Globales();
                double baseCNAF = 0;
                baseCNAF = Math.Round(((Convert.ToDouble(txtM2.Text) * (vGlobal.cna_param1) * (vGlobal.cna_param2)) / 1000) + (vGlobal.cna_param3), 2);
                txtBaseCNA.Text = Convert.ToString(baseCNAF);
                opForm("Nuevo Medidor", Color.LightGreen, "Registrar", 1, mEditar, mEliminar);
            }
        }

        private void mEditar_Click(object sender, EventArgs e)
        {
            if (cmbContratos.Items.Count > 0)
            {
                buscaMedidor();
                txtContrato.ReadOnly = false;
                txtMedidor.ReadOnly = false;
                opForm("Modificar Datos del Medidor", Color.Peru, "Guardar", 3, mNuevo, mEliminar);
            }
        }

        private void mEliminar_Click(object sender, EventArgs e)
        {
            if (cmbContratos.Items.Count > 0)
            {
                buscaMedidor();
                opForm("Eliminar Medidor", Color.IndianRed, "Eliminar", 2, mNuevo, mEditar);
                txtContrato.ReadOnly = true;
                txtMedidor.ReadOnly = true;
            }
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (txtContrato.Text == "" || txtMedidor.Text=="")
            {
                pnlResult.Visible = true;
                pnlResult.BackColor = Color.OrangeRed;
                lblMensaje.Text = "¡Ingresa los campos obligatorios!";
                lblMensaje.ForeColor = Color.White;
            }
            else
                abcMedidores(tipo_mov, id_medidor,id_lote,txtContrato,txtMedidor,txtBaseCNA);
        }

        private void btnVer_Click(object sender, EventArgs e)
        {
            if (cmbContratos.Items.Count > 0)
            {
                buscaMedidor();
                opForm("Consultar Contrato", Color.SteelBlue, "OK", 4, mNuevo, mNuevo);
                txtContrato.ReadOnly = true;
                txtMedidor.ReadOnly = true;
               // btnGuardar.Enabled = false;
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            limpiaF();
            id_lote = 0;
        }

        private void mSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            if (cmbManzana.Items.Count > 0)
                BuscaIdLote();
            else
                MessageBox.Show("No hay Registro de Lotes. Favor de registrar Colonos, Manzanas y Lotes antes de registrar Medidores.");
        }

        private void btnBuscar_Click_1(object sender, EventArgs e)
        {
            if (cmbManzana.Items.Count > 0)
                BuscaIdLote();
            else
                MessageBox.Show("No hay Registro de Lotes. Favor de registrar Colonos, Manzanas y Lotes antes de registrar Medidores.");
        }

        private void frmCMedidores_Load(object sender, EventArgs e)
        {
            var BeanCLotesMza = new Backend.Catalogos.CManzanaLotes();
            BeanCLotesMza.consultaMazaCombo(cmbManzana);
        }

        private void txtLote_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((int)e.KeyChar == (int)Keys.Enter)
            {
                //aqui codigo
                BuscaIdLote();
                
            }
        }
    }
}
