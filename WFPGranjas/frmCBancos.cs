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
    public partial class frmCBancos : Form
    {
        int tipo_mov = 0, id_banco=0;
        Globales vGlobal = new Globales();
        public frmCBancos()
        {
            InitializeComponent();
            definicionDGBancos();
        }

        #region Definicion de Estructura de Columnas DataGridView definicionDG salidas de almacén
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO DE SALIDAS DEL ALMACEN
        public void definicionDGBancos()
        {

            dgBancos.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgBancos, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgBancos.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id_banco",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Banco",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (DateTime),
                                                  HeaderText = "Cuenta",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (DateTime),
                                                  HeaderText = "Subcuenta",
                                                  Width = 150
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            dgBancos.Columns[0].Visible = false;
            //dgBancos.Columns[5].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            //dgBancos.Columns[5].DefaultCellStyle.Format = "##,##0.0000";

        }
        #endregion

        #region seleccionado de banco
        private void detalleBancos(DataGridView dGrid)
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
                        id_banco =Convert.ToInt16(row.Cells[0].Value);
                        txtBanco.Text = row.Cells[1].Value.ToString();
                        txtAuxiliar.Text = row.Cells[2].Value.ToString();
                        MessageBox.Show("id: "+id_banco);
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
        public int compruebaBanco(DataGridView dGrid)
        {
            int retorno=0;
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
                        id_banco = Convert.ToInt16(row.Cells[0].Value);
                        txtBanco.Text = row.Cells[1].Value.ToString();
                        txtAuxiliar.Text = row.Cells[3].Value.ToString();
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
        public void abcBancos(int tipoMov, int idBanco, TextBox nombreBanco, TextBox auxiliarBanco, string fechaBanco)
        {
            var BeanBanco = new Backend.Catalogos.CBancos();
            var BeanCBanco = new Backend.Catalogos.CBancos();

            //definimos los parametros que pasaran al sp
            Object[] parames = {
                tipoMov,
                idBanco,//id_banco solo agregamos el parametro id_banco para continuar con la ejecucion del sp
                nombreBanco.Text,
                auxiliarBanco.Text,
                fechaBanco
            };

            //cachamos el valor que retorna nuestro sp
            //result=0 Alta, Baja o Cambio exitoso
            //result=2 el banco ya existe
            //result=3 la subcuenta ya existe
            //result=4 problemas con la baja o cambio no existe el banco
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            resultado = BeanBanco.altaBanco(parames);
            pnlResultBancos.Visible = true;
            lblMenBancos.Text = resultado.Mensaje;
            
           if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlResultBancos.BackColor = Color.DeepSkyBlue;
                lblMenBancos.ForeColor = Color.White;
                limpiaF();
                //actualiza el dgrid
                BeanCBanco.consultaBancos(dgBancos);
            }
            else if (resultado.Cve_resultado == 2)
            {
                pnlResultBancos.BackColor = Color.Orange;
                lblMenBancos.ForeColor = Color.White;
            }
            else if (resultado.Cve_resultado == 3)
            {
                pnlResultBancos.BackColor = Color.OrangeRed;
                lblMenBancos.ForeColor = Color.White;

            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region opcion de formulario define colores y tamaño de formulario
        public void opForm(string encabezadoMov, Color colorT, string opcion, int mov, ToolStripMenuItem bloqueaA, ToolStripMenuItem bloqueaB, DataGridView dg)
        {
            this.Size = new Size(897, 365);
            lblEncabezadoBancos.Text = encabezadoMov;
            pnlPrinBancos.BackColor =colorT;
            pnlEncabezado.BackColor =colorT;
            btnGuardarBancos.Text = opcion;
            bloqueaA.Enabled = false;
            bloqueaB.Enabled = false;
            dg.Enabled = false;
            tipo_mov = mov;
        }
        #endregion

        private void mNuevoBanco_Click(object sender, EventArgs e)
        {
            txtBanco.Text = "";
            txtAuxiliar.Text = "";
            txtBanco.Focus();
            opForm("Nuevo Banco", Color.LightGreen, "Registrar", 1, mEditarBanco, mEliminarBanco,dgBancos);
        }
        private void mEditarBanco_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaBanco(dgBancos);
            if(retornoB==1)
            opForm("Modificar Banco", Color.Peru, "Guardar", 3, mNuevoBanco, mEliminarBanco, dgBancos);
        }

        private void mEliminarBanco_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaBanco(dgBancos);
            if (retornoB == 1)
                opForm("Eliminar Banco", Color.IndianRed, "Eliminar", 2, mNuevoBanco, mEditarBanco, dgBancos);
        }

        public void limpiaF()
        {
            Backend.Utilerias limpia = new Backend.Utilerias();
            limpia.limpiarTextboxGroupBox(groupBoxForm);
            this.Size = new Size(543, 365);
            pnlPrinBancos.BackColor = Color.Green;
            pnlResultBancos.Visible = false;
            mNuevoBanco.Enabled = true;
            mEditarBanco.Enabled = true;
            mEliminarBanco.Enabled = true;
            dgBancos.Enabled = true;
        }

        private void btnCancelBancos_Click(object sender, EventArgs e)
        {
            limpiaF();
        }

        private void dgBancos_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            //detalleBancos(dgBancos);
            compruebaBanco(dgBancos);
        }

        private void mSalirBanco_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnGuardarBancos_Click(object sender, EventArgs e)
        {
            DateTime today = DateTime.Today;
            Backend.Utilerias util = new Backend.Utilerias();
            String fechaFormato = util.formatoFecha(today.ToString("d"));
            //1 para altas, 2 para bajas y 3 para cambios}
            if (txtBanco.Text == "" || txtAuxiliar.Text=="")
            {
                pnlResultBancos.Visible = true;
                pnlResultBancos.BackColor = Color.OrangeRed;
                lblMenBancos.Text = "¡Ingresa los campos obligatorios!";
                lblMenBancos.ForeColor = Color.White;
            }
            else
                abcBancos(tipo_mov, id_banco, txtBanco, txtAuxiliar, fechaFormato);
        }

        private void frmBancos_Load(object sender, EventArgs e)
        {
            var BeanCBanco = new Backend.Catalogos.CBancos();
            BeanCBanco.consultaBancos(dgBancos);
        }

    }
}
