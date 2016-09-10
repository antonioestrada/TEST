using AccesoDatos;
using Backend;
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
    public partial class frmCColonos : Form
    {
        int tipo_mov = 0, id_colono = 0;
        Globales vGlobal = new Globales();
        public frmCColonos()
        {
            InitializeComponent();
            definicionDGColonos();
        }

        #region Definicion de Estructura de Columnas DataGridView definicionDG
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGColonos()
        {

            dgColonos.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgColonos, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgColonos.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id_colono",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "nombre",
                                                  Width = 350
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "direccion",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "telefono",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "correo",
                                                  Width = 150
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            dgColonos.Columns[0].Visible = false;
            //dgLotes.Columns[1].Visible = false;
            //dgLotes.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            //dgLotes.Columns[4].DefaultCellStyle.Format = "##,##0.0000";

        }
        #endregion

        #region comprueba si hay Colono a eliminar o modificar
        public int compruebaColono(DataGridView dGrid)
        {
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
                        id_colono = Convert.ToInt16(row.Cells[0].Value);
                        txtNombre.Text = row.Cells[1].Value.ToString();
                        txtDireccion.Text = row.Cells[2].Value.ToString();
                        txtTelefono.Text = row.Cells[3].Value.ToString();
                        txtCorreo.Text = row.Cells[4].Value.ToString();
                        //MessageBox.Show("id_manzana" + id_manzana);
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

        #region movimientos ABC
        public void abcColonos(int tipoMov, int idcolonoC, TextBox nombreC, TextBox direccionC, TextBox telefonoC, TextBox correoC)
        {
            var BeanColono = new Backend.Catalogos.CColonos();
            var BeanCColono = new Backend.Catalogos.CColonos();

            //definimos los parametros que pasaran al sp
            Object[] parames = {
                tipoMov,
                idcolonoC,
                nombreC.Text,//id_lote solo agregamos el parametro id_lote para continuar con la ejecucion del sp
                direccionC.Text,
                telefonoC.Text,
                correoC.Text,
            };
            //cachamos el valor que retorna nuestro sp
            //result=0 Alta, Baja o Cambio exitoso
            //result=1 el registro ya existe
            //result=2 el registro no existe
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            resultado = BeanColono.altaColonos(parames);
            pnlResult.Visible = true;
            lblMensaje.Text = resultado.Mensaje;

            if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlResult.BackColor = Color.DeepSkyBlue;
                lblMensaje.ForeColor = Color.White;
                limpiaF();
                //actualiza el dgrid
                BeanCColono.consultaColonos(dgColonos);
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

        #region opcion de formulario define colores y tamaño de formulario
        public void opForm(string encabezadoMov, Color colorT, string opcion, int mov, ToolStripMenuItem bloqueaA, ToolStripMenuItem bloqueaB, DataGridView dg)
        {
            this.Size = new Size(972, 470);
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
            this.Size = new Size(573, 470);
            pnlPrinBancos.BackColor = Color.Green;
            pnlResult.Visible = false;
            mNuevo.Enabled = true;
            mEditar.Enabled = true;
            mEliminar.Enabled = true;
            dgColonos.Enabled = true;
            txtColono.Text = "";
        }
        #endregion

        #region busca colono por nombre
        public void buscaColonoNombre()
        {
            var BeanCColono = new Backend.Catalogos.CColonos();
            BeanCColono.consultaColonosNombre(dgColonos, txtColono.Text);
        }
        #endregion

        private void frmCColonos_Load(object sender, EventArgs e)
        {
            buscaColonoNombre();
        }

        private void mNuevo_Click(object sender, EventArgs e)
        {
            txtNombre.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            txtCorreo.Text = "";
            txtNombre.Focus();
            opForm("Nuevo Lote", Color.LightGreen, "Registrar", 1, mEditar, mEliminar, dgColonos);
        }

        private void mEditar_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaColono(dgColonos);
            if (retornoB == 1)
                opForm("Modificar Lote", Color.Peru, "Guardar", 3, mNuevo, mEliminar, dgColonos);
        }

        private void mEliminar_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaColono(dgColonos);
            if (retornoB == 1)
                opForm("Eliminar Lote", Color.IndianRed, "Eliminar", 2, mNuevo, mEditar, dgColonos);
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            //1 para altas, 2 para bajas y 3 para cambios
            if (txtNombre.Text == "")
            {
                pnlResult.Visible = true;
                pnlResult.BackColor = Color.OrangeRed;
                lblMensaje.Text = "¡Ingresa los campos obligatorios!";
                lblMensaje.ForeColor = Color.White;
            }
            else
                abcColonos(tipo_mov, id_colono, txtNombre, txtDireccion, txtTelefono, txtCorreo);
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            limpiaF();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            
        }

        private void txtColono_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((int)e.KeyChar == (int)Keys.Enter)
            {
                buscaColonoNombre();

            }
        }

        private void mSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

    }
}
