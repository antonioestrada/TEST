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
    public partial class frmCManzanas : Form
    {
        int tipo_mov = 0, id_manzana = 0;
        Globales vGlobal = new Globales();

        public frmCManzanas()
        {
            InitializeComponent();
            definicionDGManzanas();
        }


        #region Definicion de Estructura de Columnas DataGridView definicionDG
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGManzanas()
        {

            dgManzanas.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgManzanas, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgManzanas.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id_manzana",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Manzana",
                                                  Width = 150
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            dgManzanas.Columns[0].Visible = false;
            //dgBancos.Columns[5].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            //dgBancos.Columns[5].DefaultCellStyle.Format = "##,##0.0000";

        }
        #endregion

        #region seleccionado de manzana
        private void detalleManzana(DataGridView dGrid)
        {
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
                        id_manzana = Convert.ToInt16(row.Cells[0].Value);
                        txtManzana.Text = row.Cells[1].Value.ToString();
                        MessageBox.Show("id: " + id_manzana);
                    }

                }
                catch (Exception ext)
                {
                    MessageBox.Show("frmComprasMain || Error :" + ext);
                }
            }
        }
        #endregion

        #region comprueba si hay bancos a eliminar o modificar
        public int compruebaManzana(DataGridView dGrid)
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
                        id_manzana = Convert.ToInt16(row.Cells[0].Value);
                        txtManzana.Text = row.Cells[1].Value.ToString();
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
        public void abcManzana(int tipoMov, int idManzana, TextBox nombreManzana, string fechaMza)
        {
            var BeanManzana = new Backend.Catalogos.CManzanaLotes();
            var BeanCBeanManzana = new Backend.Catalogos.CManzanaLotes();

            //definimos los parametros que pasaran al sp
            Object[] parames = {
                tipoMov,
                idManzana,//id_manzana solo agregamos el parametro id_manzana para continuar con la ejecucion del sp
                nombreManzana.Text,
                fechaMza
            };

            //cachamos el valor que retorna nuestro sp
            //result=0 Alta, Baja o Cambio exitoso
            //result=2 el registro ya existe
            //result=2 el registro no existe
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            resultado = BeanManzana.altaManzana(parames);
            pnlResult.Visible = true;
            lblMensaje.Text = resultado.Mensaje;

            if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlResult.BackColor = Color.DeepSkyBlue;
                lblMensaje.ForeColor = Color.White;
                limpiaF();
                //actualiza el dgrid
                BeanCBeanManzana.consultaManzanas(dgManzanas);
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
        public void opForm(string encabezadoMov, Color colorT, string opcion, int mov, ToolStripMenuItem bloqueaA, ToolStripMenuItem bloqueaB)
        {
            this.Size = new Size(897, 365);
            lblEncabezado.Text = encabezadoMov;
            pnlPrinBancos.BackColor = colorT;
            pnlEncabezado.BackColor = colorT;
            btnGuardar.Text = opcion;
            bloqueaA.Enabled = false;
            bloqueaB.Enabled = false;
            dgManzanas.Enabled = false;
            tipo_mov = mov;
        }
        #endregion

        #region Limpia formulario
        public void limpiaF()
        {
            Backend.Utilerias limpia = new Backend.Utilerias();
            limpia.limpiarTextboxGroupBox(groupBoxForm);
            this.Size = new Size(543, 365);
            pnlPrinBancos.BackColor = Color.Green;
            pnlResult.Visible = false;
            mNuevo.Enabled = true;
            mEditar.Enabled = true;
            mEliminar.Enabled = true;
            dgManzanas.Enabled = true;
        }
        #endregion

        private void mNuevo_Click(object sender, EventArgs e)
        {
            txtManzana.Text = "";
            txtManzana.Focus();
            opForm("Nueva Manzana", Color.LightGreen, "Registrar", 1, mEditar, mEliminar);
        }

        private void dgManzanas_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            compruebaManzana(dgManzanas);
        }

        private void mEditar_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaManzana(dgManzanas);
            if (retornoB == 1)
                opForm("Modificar Manzana", Color.Peru, "Guardar", 3, mNuevo, mEliminar);
        }

        private void mEliminar_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaManzana(dgManzanas);
            if (retornoB == 1)
                opForm("Eliminar Manzana", Color.IndianRed, "Eliminar", 2, mNuevo, mEditar);
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            DateTime today = DateTime.Today;
            Backend.Utilerias util = new Backend.Utilerias();
            String fechaFormato = util.formatoFecha(today.ToString("d"));
            //1 para altas, 2 para bajas y 3 para cambios
            if(txtManzana.Text=="")
            {
                pnlResult.Visible = true;
                pnlResult.BackColor = Color.OrangeRed;
                lblMensaje.Text = "¡Ingresa los campos obligatorios!";
                lblMensaje.ForeColor = Color.White;
            }else
            abcManzana(tipo_mov, id_manzana, txtManzana, fechaFormato);
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            limpiaF();
        }

        private void mSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmCManzanas_Load(object sender, EventArgs e)
        {
            var BeanCBanco = new Backend.Catalogos.CManzanaLotes();
            BeanCBanco.consultaManzanas(dgManzanas);
        }
    }
}
