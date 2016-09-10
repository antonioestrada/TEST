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
    public partial class frmCPuestos : Form
    {
        int tipo_mov = 0, id_puesto=0;
        Globales vGlobal = new Globales();
        public frmCPuestos()
        {
            InitializeComponent();
            definicionDGBancos();
        }

        #region Definicion de Estructura de Columnas DataGridView definicionDG salidas de almacén
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO DE SALIDAS DEL ALMACEN
        public void definicionDGBancos()
        {

            dgPuestos.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgPuestos, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgPuestos.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id_puesto",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (String),
                                                  HeaderText = "Puesto",
                                                  Width = 200
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            dgPuestos.Columns[0].Visible = false;
      
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
                        id_puesto =Convert.ToInt16(row.Cells[0].Value);
                        txtPuesto.Text = row.Cells[1].Value.ToString();
                      
                        MessageBox.Show("id: "+id_puesto);
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
        public int compruebaPuesto(DataGridView dGrid)
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
                        id_puesto        = Convert.ToInt16(row.Cells[0].Value);
                        txtPuesto.Text     = row.Cells[1].Value.ToString();
                        
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
        public void abcPuestos(int tipoMov, String puesto)
        {
            var BeanUsuario = new Backend.Catalogos.CPuestos();
            var BeanCUsuario = new Backend.Catalogos.CPuestos();

            //definimos los parametros que pasaran al sp
            Object[] parames = {
                tipoMov,
                id_puesto,
                puesto

            };

          
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            resultado = BeanUsuario.altaBPuestos(parames);
            pnlResultBPuestos.Visible = true;
            lblMenPuestos.Text = resultado.Mensaje;
            
           if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlResultBPuestos.BackColor = Color.DeepSkyBlue;
                lblMenPuestos.ForeColor = Color.White;
                limpiaF();
                //actualiza el dgrid
                BeanCUsuario.consultaPuestos(dgPuestos,2);
            }
            else if (resultado.Cve_resultado == 2)
            {
                pnlResultBPuestos.BackColor = Color.Orange;
                lblMenPuestos.ForeColor = Color.White;
            }
            else if (resultado.Cve_resultado == 3)
            {
                pnlResultBPuestos.BackColor = Color.OrangeRed;
                lblMenPuestos.ForeColor = Color.White;

            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region opcion de formulario define colores y tamaño de formulario
        public void opForm(string encabezadoMov, Color colorT, string opcion, int mov, ToolStripMenuItem bloqueaA, ToolStripMenuItem bloqueaB)
        {
            this.Size = new Size(655, 400);
            lblEncabezadoPuesto.Text = encabezadoMov;
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
            opForm("Nuevo Puesto", Color.LightGreen, "Registrar", 1, mEditarUsuario, mEliminarUsuario);
        }
        private void mEditarBanco_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaPuesto(dgPuestos);
            if(retornoB==1)
            opForm("Modificar Puesto", Color.Peru, "Guardar", 3, mNuevoUsuario, mEliminarUsuario);
        }

        private void mEliminarBanco_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaPuesto(dgPuestos);
            if (retornoB == 1)
                opForm("Eliminar Puesto", Color.IndianRed, "Eliminar", 2, mNuevoUsuario, mEditarUsuario);
        }

        public void limpiaF()
        {
            Backend.Utilerias limpia = new Backend.Utilerias();
            limpia.limpiarTextboxGroupBox(groupBoxForm);
            this.Size = new Size(300, 365);
            pnlPrinBancos.BackColor = Color.Green;
            pnlResultBPuestos.Visible = false;
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
            abcPuestos(tipo_mov, txtPuesto.Text);
        }

      

        private void dgUsuarios_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            compruebaPuesto(dgPuestos);
        }

        private void frmUsuarios_Load(object sender, EventArgs e)
        {
            var BeanCUsuario = new Backend.Catalogos.CPuestos();
            // dgUsuarios.Rows.Clear();
            BeanCUsuario.consultaPuestos(dgPuestos, 2);
 
        }

      

    }
}
