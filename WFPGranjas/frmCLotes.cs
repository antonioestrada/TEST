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
    public partial class frmCLotes : Form
    {
        int tipo_mov = 0, id_lote = 0, id_manzana=0, id_colono=0;
        Globales vGlobal = new Globales();

        public frmCLotes()
        {
            InitializeComponent();
            definicionDGLotes();
            definicionDGBuscaColono();
        }

        #region Definicion de Estructura de Columnas DataGridView definicionDG
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGLotes()
        {

            dgLotes.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgLotes, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgLotes.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id_lote",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id_manzana",
                                                  Width = 80
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Manzana",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Lote",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (double),
                                                  HeaderText = "M2",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Propietario",
                                                  Width = 250
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "id_colono",
                                                  Width = 200
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            dgLotes.Columns[0].Visible = false;
            dgLotes.Columns[1].Visible = false;
            dgLotes.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            dgLotes.Columns[4].DefaultCellStyle.Format = "##,##0.00";
            dgLotes.Columns[6].Visible = false;

        }
        #endregion

        #region Definicion de Estructura de Columnas DataGridView PROPIETARIOS
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGBuscaColono()
        {

            dgPropietario.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgPropietario, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgPropietario.Columns.AddRange(new DataGridViewColumn[]
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
                                                  Width = 315
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            dgPropietario.Columns[0].Visible = false;
            //dgLotes.Columns[1].Visible = false;
            //dgLotes.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            //dgLotes.Columns[4].DefaultCellStyle.Format = "##,##0.0000";

        }
        #endregion

        #region comprueba si hay lotes a eliminar o modificar
        public int compruebaLote(DataGridView dGrid)
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
                        id_lote = Convert.ToInt16(row.Cells[0].Value);
                        id_manzana= Convert.ToInt16(row.Cells[1].Value);
                        cmbManzana.SelectedIndex = Convert.ToInt16(row.Cells[1].Value.ToString())-1;
                        txtLote.Text = row.Cells[3].Value.ToString();
                        txtM2.Text = row.Cells[4].Value.ToString();
                        txtPropietario.Text = row.Cells[5].Value.ToString();
                        if (row.Cells[6].Value.ToString()=="")
                            id_colono = 0;
                        else
                        id_colono = Convert.ToInt16(row.Cells[6].Value);
                        //MessageBox.Show("id_manzana"+ );
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

        #region comprueba si hay Propietarios
        public int compruebaPropietario(DataGridView dGrid)
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
                        lblPropietario.Text = row.Cells[1].Value.ToString();
                        txtPropietario.Text = row.Cells[1].Value.ToString();
                        
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
        public void abcLote(int tipoMov, int idLote, TextBox nombreLote, int idManzana,int idColono, TextBox m2)
        {
            var BeanManzana = new Backend.Catalogos.CManzanaLotes();
            var BeanCBeanManzana = new Backend.Catalogos.CManzanaLotes();

            //definimos los parametros que pasaran al sp
            Object[] parames = {
                tipoMov,
                idLote,//id_lote solo agregamos el parametro id_lote para continuar con la ejecucion del sp
                nombreLote.Text,
                idManzana,
                id_colono,
                Double.Parse( m2.Text)
            };
            Object[] parames2 = { 1, 0,"","" };
            //cachamos el valor que retorna nuestro sp
            //result=0 Alta, Baja o Cambio exitoso
            //result=1 el registro ya existe
            //result=2 el registro no existe
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            resultado = BeanManzana.altaLote(parames);
            pnlResult.Visible = true;
            lblMensaje.Text = resultado.Mensaje;

            if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlResult.BackColor = Color.DeepSkyBlue;
                lblMensaje.ForeColor = Color.White;
                limpiaF();
                //actualiza el dgrid                
                BeanCBeanManzana.consultaManLotes(dgLotes,parames2);
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
            this.Size = new Size(898, 425);
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
            this.Size = new Size(543, 425);
            pnlPrinBancos.BackColor = Color.Green;
            pnlResult.Visible = false;
            mNuevo.Enabled = true;
            mEditar.Enabled = true;
            mEliminar.Enabled = true;
            dgLotes.Enabled = true;
            dgPropietario.Visible = false;
            lblPropietario.Visible = false;
        }
        #endregion

        private void frmCLotes_Load(object sender, EventArgs e)
        {
            Object[] parames = {1,0,"",""};

            var BeanCLotesMza = new Backend.Catalogos.CManzanaLotes();
            BeanCLotesMza.consultaManLotes(dgLotes,parames);
            BeanCLotesMza.consultaMazaCombo(cmbManzana);
            BeanCLotesMza.consultaMazaCombo(cmbFiltroMza);
            var BeanCProp = new Backend.Catalogos.CColonos();
            BeanCProp.buscaColono(dgPropietario,txtPropietario.Text.ToString());
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            id_manzana =int.Parse(cmbManzana.SelectedValue.ToString());
            //MessageBox.Show(""+ Convert.ToInt32(cmbManzana.SelectedValue.ToString()));
           
            //1 para altas, 2 para bajas y 3 para cambios
            if (txtLote.Text == "" || txtM2.Text=="" || txtPropietario.Text=="")
            {
                pnlResult.Visible = true;
                pnlResult.BackColor = Color.OrangeRed;
                lblMensaje.Text = "¡Ingresa los campos obligatorios!";
                lblMensaje.ForeColor = Color.White;
            }
            else
                abcLote(tipo_mov,id_lote,txtLote, id_manzana,id_colono, txtM2);
        }
        Backend.Utilerias util = new Backend.Utilerias();

        private void mNuevo_Click(object sender, EventArgs e)
        {
            txtLote.Text = "";
            txtM2.Text = "";
            cmbManzana.Focus();
            opForm("Nuevo Lote", Color.LightGreen, "Registrar", 1, mEditar, mEliminar,dgLotes);
        }

        private void mEditar_Click(object sender, EventArgs e)
        {
            id_manzana = int.Parse(cmbManzana.SelectedValue.ToString());
            int retornoB = compruebaLote(dgLotes);
            if (retornoB == 1)
            {
                opForm("Modificar Lote", Color.Peru, "Guardar", 3, mNuevo, mEliminar, dgLotes);
                dgLotes.Enabled = true;
            }
            dgPropietario.Visible = false;
        }

        private void mEliminar_Click(object sender, EventArgs e)
        {
            id_manzana = int.Parse(cmbManzana.SelectedValue.ToString());
            int retornoB = compruebaLote(dgLotes);
            if (retornoB == 1)
            {
                opForm("Eliminar Lote", Color.IndianRed, "Eliminar", 2, mNuevo, mEditar, dgLotes);
                dgLotes.Enabled = true;
            }
            dgPropietario.Visible = false;
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            limpiaF();
        }

        private void dgLotes_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            compruebaLote(dgLotes);
            dgPropietario.Visible = false;
        }

        private void txtPropietario_TextChanged(object sender, EventArgs e)
        {
            var BeanCProp = new Backend.Catalogos.CColonos();
            BeanCProp.buscaColono(dgPropietario, txtPropietario.Text.ToString());
            dgPropietario.Visible = true;
            dgPropietario.BringToFront();
        }

        private void btnFiltrar_Click(object sender, EventArgs e)
        {

            Object[] parames = { 4, Convert.ToInt32(cmbFiltroMza.SelectedValue.ToString()), "", "" };

            var BeanCLotesMza = new Backend.Catalogos.CManzanaLotes();
            BeanCLotesMza.consultaManLotes(dgLotes, parames);
        }

        private void dgPropietario_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            int retornoB = compruebaPropietario(dgPropietario);
            if (retornoB == 1)
            {
                dgPropietario.Visible = false;
                lblPropietario.Visible = true;
            }
        }

 

        private void mSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void txtM2_KeyPress(object sender, KeyPressEventArgs e)
        {
          util.validarNumeros(e,txtM2);
        }
    }
}
