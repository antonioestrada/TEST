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
using WFPGranjas.Backend.Catalogos;

namespace WFPGranjas
{
    public partial class frmCUsuarios : Form
    {
        int tipo_mov = 0, id_banco=0;
        Globales vGlobal = new Globales();
        public frmCUsuarios()
        {
            InitializeComponent();
            definicionDGBancos();
        }

        #region Definicion de Estructura de Columnas DataGridView definicionDG salidas de almacén
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO DE SALIDAS DEL ALMACEN
        public void definicionDGBancos()
        {

            dgUsuarios.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgUsuarios, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgUsuarios.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id_usuario",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (String),
                                                  HeaderText = "Usuario",
                                                  Width = 80
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Nombre",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (String),
                                                  HeaderText = "Direccion",
                                                  Width = 155
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (String),
                                                  HeaderText = "Puesto",
                                                  Width = 80
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (String),
                                                  HeaderText = "Perfil",
                                                  Width = 85
                                              } ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (int),
                                                  HeaderText = "idPuesto",
                                                  Width = 50
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (int),
                                                  HeaderText = "idPerfil",
                                                  Width = 50
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "pas",
                                                  Width = 50
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            dgUsuarios.Columns[0].Visible = false;
            dgUsuarios.Columns[6].Visible = false;
            dgUsuarios.Columns[7].Visible = false;
            dgUsuarios.Columns[8].Visible = false;
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
                        txtNUsuario.Text = row.Cells[1].Value.ToString();
                        txtDireccionUsr.Text = row.Cells[2].Value.ToString();
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
                        id_banco        = Convert.ToInt16(row.Cells[0].Value);
                        txtUsuario.Text     = row.Cells[1].Value.ToString();
                        txtNUsuario.Text    = row.Cells[2].Value.ToString();
                        txtDireccionUsr.Text = row.Cells[3].Value.ToString();
                        ResultadoTrnx cmbP  = new ResultadoTrnx();
                        cmbP.Cve_resultado  = Int16.Parse(row.Cells[6].Value.ToString());
                        cmbP.Mensaje        = row.Cells[4].Value.ToString();
                        cmbPuestos.SelectedValue= cmbP.Cve_resultado;
                        ResultadoTrnx cmbPer = new ResultadoTrnx();
                        cmbPer.Cve_resultado    = Int16.Parse(row.Cells[7].Value.ToString());
                        cmbPer.Mensaje          = row.Cells[5].Value.ToString();
                        cmbPerfil.SelectedValue = cmbPer.Cve_resultado;
                        txtPassUsr.Text= row.Cells[8].Value.ToString();
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
        public void abcBancos(int tipoMov, String nombre, String direccion, String puesto,String usuario,String pass,String perfil, String estatus)
        {
            var BeanUsuario = new Backend.Catalogos.CUsuarios();
            var BeanCUsuario = new Backend.Catalogos.CUsuarios();

            //definimos los parametros que pasaran al sp
            Object[] parames = {
                tipoMov,
                nombre,
                direccion,
                puesto,
                usuario,
                pass,
                perfil,
                estatus

            };

            //cachamos el valor que retorna nuestro sp
            //result=0 Alta, Baja o Cambio exitoso
            //result=2 el banco ya existe
            //result=3 la subcuenta ya existe
            //result=4 problemas con la baja o cambio no existe el banco
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            resultado = BeanUsuario.altaBUsuarios(parames);
            pnlResultBUsuarios.Visible = true;
            lblMenUsuarios.Text = resultado.Mensaje;
            
           if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlResultBUsuarios.BackColor = Color.DeepSkyBlue;
                lblMenUsuarios.ForeColor = Color.White;
                limpiaF();
                //actualiza el dgrid
                BeanCUsuario.consultaUsuarios(dgUsuarios,1);
            }
            else if (resultado.Cve_resultado == 2)
            {
                pnlResultBUsuarios.BackColor = Color.Orange;
                lblMenUsuarios.ForeColor = Color.White;
            }
            else if (resultado.Cve_resultado == 3)
            {
                pnlResultBUsuarios.BackColor = Color.OrangeRed;
                lblMenUsuarios.ForeColor = Color.White;

            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region opcion de formulario define colores y tamaño de formulario
        public void opForm(string encabezadoMov, Color colorT, string opcion, int mov, ToolStripMenuItem bloqueaA, ToolStripMenuItem bloqueaB)
        {
            this.Size = new Size(957, 400);
            lblEncabezadoUsuario.Text = encabezadoMov;
            pnlPrinBancos.BackColor =colorT;
            pnlEncabezado.BackColor =colorT;
            btnGuardarBancos.Text = opcion;
            bloqueaA.Enabled = false;
            bloqueaB.Enabled = false;
            tipo_mov = mov;
        }
        #endregion

        private void mNuevoBanco_Click(object sender, EventArgs e)
        {
            opForm("Nuevo Usuario", Color.LightGreen, "Registrar", 1, mEditarUsuario, mEliminarUsuario);
        }
        private void mEditarBanco_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaBanco(dgUsuarios);
            if(retornoB==1)
            opForm("Modificar Usuario", Color.Peru, "Guardar", 3, mNuevoUsuario, mEliminarUsuario);
        }

        private void mEliminarBanco_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaBanco(dgUsuarios);
            if (retornoB == 1)
                opForm("Eliminar Usuario", Color.IndianRed, "Eliminar", 2, mNuevoUsuario, mEditarUsuario);
        }

        public void limpiaF()
        {
            Backend.Utilerias limpia = new Backend.Utilerias();
            limpia.limpiarTextboxGroupBox(groupBoxForm);
            this.Size = new Size(583, 365);
            pnlPrinBancos.BackColor = Color.Green;
            pnlResultBUsuarios.Visible = false;
            mNuevoUsuario.Enabled = true;
            mEditarUsuario.Enabled = true;
            mEliminarUsuario.Enabled = true;
        }

        private void btnCancelBancos_Click(object sender, EventArgs e)
        {
            limpiaF();
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
            //1 para altas, 2 para bajas y 3 para cambios
            abcBancos(tipo_mov, txtNUsuario.Text, txtDireccionUsr.Text, cmbPuestos.SelectedValue.ToString(), txtUsuario.Text.ToString(), txtPassUsr.Text,cmbPerfil.SelectedValue.ToString(),"A");
        }

      

        private void dgUsuarios_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            compruebaBanco(dgUsuarios);
        }

        private void frmUsuarios_Load(object sender, EventArgs e)
        {
            var BeanCUsuario = new Backend.Catalogos.CUsuarios();
            // dgUsuarios.Rows.Clear();
            BeanCUsuario.consultaUsuarios(dgUsuarios, 1);
            BeanCUsuario.consultaPuestos(cmbPuestos, 2);
            BeanCUsuario.consultaPerfiles(cmbPerfil, 3);
        }

      

    }
}
