using AccesoDatos;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFPGranjas
{
    public partial class frmCConceptosCC : Form
    {
        int tipo_mov = 0, id_concepto = 0;
        
        public frmCConceptosCC()
        {
            InitializeComponent();
            definicionDGconceptos();
        }

        #region Definicion de Estructura de Columnas DataGridView definicionDG
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGconceptos()
        {

            dgCoconceptos.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgCoconceptos, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgCoconceptos.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id_concepto",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Concepto",
                                                  Width = 290
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Decimal),
                                                  HeaderText = "Importe",
                                                  Width = 120
                                              }
                                              ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "cuenta_contable",
                                                  Width = 120
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            dgCoconceptos.Columns[0].Visible = false;
            dgCoconceptos.Columns[3].Visible = false;
            //dgLotes.Columns[1].Visible = false;
            dgCoconceptos.Columns[2].DefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            dgCoconceptos.Columns[2].DefaultCellStyle.Format = "##,##0.0000";

        }
        #endregion

        #region comprueba si hay Concepto a eliminar o modificar
        public int compruebaGridConcepto(DataGridView dGrid)
        {
            //varible de retorno si es 0 no hay concepto a eliminar o modificar
            //varible de retorno si es 1 hay concepto a eliminar o modificar y continuamos
            int retorno = 0;
            DataGridViewRow row = dGrid.CurrentRow;
            if (dGrid.RowCount > 0)
            {
                try
                {
                    // Obtenemos el valor de la columna
                    Object value = row.Cells[0].Value;

                    // Establecemos el valor en el correspondiente control Label
                    if (value != null)
                    {
                        id_concepto = Convert.ToInt16(row.Cells[0].Value);
                        txtNombre.Text = row.Cells[1].Value.ToString();
                        txtImporte.Text = row.Cells[2].Value.ToString();
                        txtCuentaConta.Text = row.Cells[3].Value.ToString();
                    }

                }
                catch (Exception ext)
                {
                    MessageBox.Show("frmComprasMain || Error :" + ext);
                }
                retorno = 1;
            }
            return retorno;
        }
        #endregion

        #region opcion de formulario define colores y tamaño de formulario
        public void opForm(string encabezadoMov, Color colorT, string opcion, int mov, ToolStripMenuItem bloqueaA, ToolStripMenuItem bloqueaB, DataGridView dg)
        {
            this.Size = new Size(906, 367);
            lblEncabezado.Text = encabezadoMov;
            pnlPrinBancos.BackColor = colorT;
            pnlEncabezado.BackColor = colorT;
            btnGuardar.Text = opcion;
            bloqueaA.Enabled = false;
            bloqueaB.Enabled = false;
            dg.Enabled = false;
            tipo_mov = mov;
        }
        #endregion

        #region Limpia formulario
        public void limpiaF()
        {
            Backend.Utilerias limpia = new Backend.Utilerias();
            limpia.limpiarTextboxGroupBox(groupBoxForm);
            this.Size = new Size(506, 367);
            pnlPrinBancos.BackColor = Color.Green;
            pnlResult.Visible = false;
            mNuevo.Enabled = true;
            mEditar.Enabled = true;
            mEliminar.Enabled = true;
            dgCoconceptos.Enabled = true;
            // txtColono.Text = "";
        }
        #endregion

        #region movimientos ABC
        public void abcConceptos(int tipoMov, int idcolonoC, TextBox nombreC, TextBox cuentaC, TextBox importeC)
        {
            var BeanConcepto = new Backend.Catalogos.CCConceptos();
           // var BeanCConcepto = new Backend.Catalogos.CCConceptos();

            //definimos los parametros que pasaran al sp
            Object[] parames = {
                tipoMov,
                idcolonoC,//id_concepto solo agregamos el parametro id_lote para continuar con la ejecucion del sp
                nombreC.Text,
                cuentaC.Text,
                importeC.Text,
            };
            //cachamos el valor que retorna nuestro sp
            //result=0 Alta, Baja o Cambio exitoso
            //result=1 el registro ya existe
            //result=2 el registro no existe
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            resultado = BeanConcepto.altaConceptos(parames);
            pnlResult.Visible = true;
            lblMensaje.Text = resultado.Mensaje;

            if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlResult.BackColor = Color.DeepSkyBlue;
                lblMensaje.ForeColor = Color.White;
                limpiaF();
                //actualiza el dgrid
                //BeanCColono.consultaColonos(dgColonos);
                buscaConceptosNombre();
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

            }
            Conexion.FinalizarSesion();
        }
        #endregion

        private void mSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmCConceptosCC_Load(object sender, EventArgs e)
        {
            buscaConceptosNombre();
        }

        #region busca conceptos
        public void buscaConceptosNombre()
        {
            var BeanCConceptos = new Backend.Catalogos.CCConceptos();
            BeanCConceptos.consultaColonosTXT(dgCoconceptos, txtConcepto.Text);
        }
        #endregion

        private void txtConcepto_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((int)e.KeyChar == (int)Keys.Enter)
            {
                buscaConceptosNombre();
            }
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            buscaConceptosNombre();
        }

        private void mNuevo_Click(object sender, EventArgs e)
        {
            txtNombre.Text = "";
            txtImporte.Text = "";
            opForm("Nuevo Concepto", Color.LightGreen, "Registrar", 1, mEditar, mEliminar, dgCoconceptos);
        }

        private void mEditar_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaGridConcepto(dgCoconceptos);
            if (retornoB == 1)
            {
                opForm("Modificar Concepto", Color.Peru, "Guardar", 3, mNuevo, mEliminar, dgCoconceptos);
                dgCoconceptos.Enabled = true;
            }
        }

        private void mEliminar_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaGridConcepto(dgCoconceptos);
            if (retornoB == 1)
            {
                opForm("Eliminar Concepto", Color.IndianRed, "Eliminar", 2, mNuevo, mEditar, dgCoconceptos);
                dgCoconceptos.Enabled = true;
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            limpiaF();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            //tipo_mov: 1 para altas, 2 para bajas y 3 para cambios
            if (txtNombre.Text == "" || txtCuentaConta.Text=="")
            {
                pnlResult.Visible = true;
                pnlResult.BackColor = Color.OrangeRed;
                lblMensaje.Text = "¡Ingresa los campos obligatorios!";
                lblMensaje.ForeColor = Color.White;
            }
            else
                abcConceptos(tipo_mov, id_concepto, txtNombre,txtCuentaConta, txtImporte);
        }

        private void dgCoconceptos_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            int retornoB = compruebaGridConcepto(dgCoconceptos);
        }
    }
}
