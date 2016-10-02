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
using WFPGranjas.Backend.Catalogos;

namespace WFPGranjas
{
    public partial class frmTarifasAgua : Form
    {
        int idTarifaAgua = 0, tipo_mov=0;
        Backend.Utilerias castDigitos =new Backend.Utilerias();
        public frmTarifasAgua()
        {
            InitializeComponent();
            definicionDGTarifa1();
            definicionDGTarifa2();
        }

        #region Definicion de Estructura de Columnas DataGridView Tarifa 1
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGTarifa1()
        {

            dgTarifa1.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgTarifa1, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgTarifa1.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "De",
                                                  Width = 120
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "A",
                                                  Width = 120
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Double),
                                                  HeaderText = "Costo",
                                                  Width = 135
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Tarifa",
                                                  Width = 60
                                              }
                                      });

            dgTarifa1.Columns[0].Visible = false;
            dgTarifa1.Columns[4].Visible = false;
            dgTarifa1.Columns[3].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            dgTarifa1.Columns[3].DefaultCellStyle.Format = "##,##0.00";

        }
        #endregion

        #region Definicion de Estructura de Columnas DataGridView Tarifa 2
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGTarifa2()
        {

            dgTarifa2.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgTarifa2, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgTarifa2.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Consumo m3",
                                                  Width = 120
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Double),
                                                  HeaderText = "Importe",
                                                  Width = 250
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Tarifa",
                                                  Width = 60
                                              }
                                      });

            dgTarifa2.Columns[0].Visible = false;
            dgTarifa2.Columns[3].Visible = false;
            dgTarifa2.Columns[2].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            dgTarifa2.Columns[2].DefaultCellStyle.Format = "##,##0.00";

        }
        #endregion


        #region movimientos ABC
        public void abcTarifasAgua(int tipoMov, int p_id, int p_De, int p_A, double p_CostoImp, int tarifa, DataGridView dg, GroupBox gbIN, Panel pnlR, Label lblRes)
        {
            var BeanTAgua = new Backend.Catalogos.CTarifasAgua();
            var BeanConsultaTagua = new Backend.Catalogos.CTarifasAgua();

            //definimos los parametros que pasaran al sp
            Object[] parames = {
                tipoMov,
                p_id,
                p_De,
                p_A,
                p_CostoImp,
                tarifa
            };

            //cachamos el valor que retorna nuestro sp
            //result=0 Alta, Baja o Cambio exitoso
            //result=2 el registro ya existe
            //result=2 el registro no existe
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            resultado = BeanTAgua.altaTarifasAgua(parames);
            pnlR.Visible = true;
            lblRes.Text = resultado.Mensaje;

            if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlR.BackColor = Color.DeepSkyBlue;
                lblRes.ForeColor = Color.White;
                //limpiaF();
                //actualiza el dgrid
                var BeanCTarifasAgua = new Backend.Catalogos.CTarifasAgua();
                BeanCTarifasAgua.consultaTarifasAgua(dg, 1, tarifa);
                gbIN.Visible = false;
                dg.Enabled = true;
                pnlBottomT2.Visible = true;

            }
            else if (resultado.Cve_resultado == 1)
            {
                pnlR.BackColor = Color.Orange;
                lblRes.ForeColor = Color.White;
            }
            else if (resultado.Cve_resultado == 2)
            {
                pnlR.BackColor = Color.OrangeRed;
                lblRes.ForeColor = Color.White;

            }
            Conexion.FinalizarSesion();
        }
        #endregion

        //ESTE CODIGO ES PARA LA TABLA DE PARAM
        #region carga valores CalculoManto
        public void cargaValores()
        {
            var BeanCBeanParamAgua = new Backend.Catalogos.CParametros();
            ResultadoTrnx resultado = new ResultadoTrnx();
            //ejecutamos el sp donde nos mostrara los siguientes datos como valor definido en parametros

            //almacenamos datos en la variable global local
            //param_BCNA es para la base CNA tarifa 1
            resultado = BeanCBeanParamAgua.consultaParam("param_BCNA");
            txtBCNA.Text = resultado.Pvalor;

            //param_CBASE2 es para la cuota base tarifa 2
            resultado = BeanCBeanParamAgua.consultaParam("param_CBASE2");
            txtCBT2.Text = resultado.Pvalor;
            lblCuotaBase.Text = "Los usuarios con Tarifa 2 pagarán mensualmente una cuota base de $ " + resultado.Pvalor + " y a esta se le sumará el importe que corresponda a su consumo de acuerdo a la relación siguiente:";

            //param_BEXCEDENTE2 es para tarifa 2 cuando el consumo es mayor a los 200 m3
            resultado = BeanCBeanParamAgua.consultaParam("param_BEXCEDENTE2");
            txtCBaseExcedenteT2.Text = resultado.Pvalor;
            lblMas200.Text = "En consumos mayores se cobrará  cada metro cúbico a $ "+ resultado.Pvalor +" y  al importe que resulte se le sumará la cuota base.  ";


        }
        #endregion

        #region edita parametros
        public void editaParametros(int tipoMov, string codeParam, string valor, Label lblMen, Panel pnlResul)
        {
            var BeanParam = new Backend.Catalogos.CParametros();
            var BeanCParam = new Backend.Catalogos.CParametros();

            //definimos los parametros que pasaran al sp
            Object[] parames = {
                tipoMov,
                codeParam,//codigo del parametro
                valor//valor a modificar
            };
            //cachamos el valor que retorna nuestro sp
            //result=0 Alta, Baja o Cambio exitoso
            //result=1 el registro ya existe
            //result=2 el registro no existe
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            resultado = BeanParam.editaParametros(parames);
            pnlResul.Visible = true;
            lblMen.Text = resultado.Mensaje;

            if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlResul.BackColor = Color.DeepSkyBlue;
                lblMen.ForeColor = Color.White;
                //this.Size = new Size(643, 350);
            }
            else if (resultado.Cve_resultado == 1)
            {
                pnlResul.BackColor = Color.Orange;
                lblMen.ForeColor = Color.White;
            }
            else if (resultado.Cve_resultado == 2)
            {
                pnlResul.BackColor = Color.OrangeRed;
                lblMen.ForeColor = Color.White;

            }
            Conexion.FinalizarSesion();
        }
        #endregion

        //activa/desactiva Check
        #region activa/desactiva check
        public void checkActive(TextBox textIN, Button btnIN)
        {
            textIN.ReadOnly = false;
            textIN.Focus();
            btnIN.Visible = true;
        }

        public void checkInActive(TextBox textIN, Button btnIN)
        {
            textIN.ReadOnly = true;
            btnIN.Visible = false;
            cargaValores();
        }
        #endregion

        //Proceso de aplicar Cambio en Cuotas Bases
        #region proceso de aplicar cambios en cuotas cna
        public void editaValores(string param_Base, TextBox txtValor, Button btnOk, CheckBox checkEdo, Label men, Panel resul)
        {
            //comprobamos si hay valor en el textbox
            if (txtValor.Text == "")
            {
                //si esta vacio no continua
                //y muestra el panel y mensaje correspondiente con sus estilos
                resul.Visible = true;
                resul.BackColor = Color.OrangeRed;
                men.Text = "¡Ingresa los campos obligatorios!";
                men.ForeColor = Color.White;
            }
            else
            {
                //si continua llama editaParametro
                //1 para editar
                //param_Base es el parametro a modificar de la tabla cat_parametros
                //txtValor toma el valor del textbox a modificar
                // men y resul el el label y panel donde se mostrara el mensaje de resultado
                editaParametros(1, param_Base, txtValor.Text, men, resul);
                checkInActive(txtValor, btnOk);
                checkEdo.Checked = false;
                cargaValores();
            }
        }
        #endregion

        #region comprueba si hay  modificar Renglon T1
        public int compruebaRenTarifa1(DataGridView dGrid)
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
                        idTarifaAgua = Convert.ToInt16(row.Cells[0].Value);
                        txtDeT1.Text = row.Cells[1].Value.ToString();
                        txtAT1.Text = row.Cells[2].Value.ToString();
                        txtCostoT1.Text = row.Cells[3].Value.ToString();
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

        #region comprueba si hay  modificar Renglon T2
        public int compruebaRenTarifa2(DataGridView dGrid)
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
                        idTarifaAgua = Convert.ToInt16(row.Cells[0].Value);
                        txtM3T2.Text = row.Cells[1].Value.ToString();
                        txtImporteT2.Text = row.Cells[2].Value.ToString();
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

        public void accionCheck(CheckBox checkIN, TextBox textIN, Button btnIN)
        {
            if (checkIN.Checked == true)
            {
                checkActive(textIN, btnIN);
            }
            else
            {
                checkInActive(textIN, btnIN);

            }
        }

        private void mSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void frmTarifasAgua_Load(object sender, EventArgs e)
        {
            cargaValores();

            var BeanCTarifasAgua = new Backend.Catalogos.CTarifasAgua();
            BeanCTarifasAgua.consultaTarifasAgua(dgTarifa1, 1, 1);
            BeanCTarifasAgua.consultaTarifasAgua(dgTarifa2, 1, 2);
        }

        private void checkBCNAT1_CheckedChanged(object sender, EventArgs e)
        {
            accionCheck(checkBCNAT1, txtBCNA, btnSaveCNAT1);
        }

        private void checkBCNAT2_CheckedChanged(object sender, EventArgs e)
        {
            accionCheck(checkBCNAT2, txtCBT2, btnSaveCNAT2);
        }

        private void checBExcedenteT2_CheckedChanged(object sender, EventArgs e)
        {
            accionCheck(checBExcedenteT2, txtCBaseExcedenteT2, btnSaveCExcedeT2);
        }



        private void btnSaveCNAT1_Click(object sender, EventArgs e)
        {
            editaValores("param_BCNA", txtBCNA, btnSaveCNAT1, checkBCNAT1, lblMensaje, pnlResult);
        }

        private void btnSaveCNAT2_Click(object sender, EventArgs e)
        {
            editaValores("param_CBASE2", txtCBT2, btnSaveCNAT2, checkBCNAT2, lblMensaje2, pnlResult2);
        }

        private void btnSaveCExcedeT2_Click(object sender, EventArgs e)
        {
            editaValores("param_BEXCEDENTE2", txtCBaseExcedenteT2, btnSaveCExcedeT2, checBExcedenteT2, lblMensaje2, pnlResult2);
        }

        private void dgTarifa1_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            compruebaRenTarifa1(dgTarifa1);
        }

        private void btnEditT1_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaRenTarifa1(dgTarifa1);
            if (retornoB == 1)
            {
                gbRenglonT1.Visible = true;
                gbRenglonT1.BringToFront();
                txtAT1.Enabled = false;
                txtCostoT1.Enabled = true;
                txtCostoT1.Focus();
                //para cambios
                tipo_mov = 3;
            }
        }

        private void dgTarifa2_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            compruebaRenTarifa2(dgTarifa2);
        }

        private void btnEditT2_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaRenTarifa2(dgTarifa2);
            if (retornoB == 1)
            {
                pnlBottomT2.Visible = false;
                gbRenglonT2.Visible = true;
                gbRenglonT2.BringToFront();
                txtImporteT2.Enabled = true;
                txtImporteT2.Focus();
                //para cambios
                tipo_mov = 3;
            }
        }

        private void btnAddT1_Click(object sender, EventArgs e)
        {

            var BeanCSiguienteRen = new Backend.Catalogos.CTarifasAgua();
            ResultadoTrnx resultado = new ResultadoTrnx();
            //ejecutamos el sp donde nos mostrara los siguientes datos como id del lote, nombre del colono, direccion, y superficie del lote
            resultado = BeanCSiguienteRen.consultaSigRenglon(2,1);
            //almacenamos el id del lote en la variable global local
            txtDeT1.Text = resultado.siguienteRenglon.ToString();

            dgTarifa1.Enabled = false;
            int rowCnt = dgTarifa1.RowCount;
            if (rowCnt > 0)
                dgTarifa1.FirstDisplayedScrollingRowIndex = dgTarifa1.RowCount - 1;
            
            gbRenglonT1.Visible = true;
            gbRenglonT1.BringToFront();
            txtAT1.Enabled = true;
            txtAT1.Text = "";
            txtCostoT1.Text = "";
            //para altas
            tipo_mov = 1;


        }

        private void btnAplicaT1_Click(object sender, EventArgs e)
        {
            if(txtAT1.Text!="" && txtCostoT1.Text!="")
            { 
                if (Int32.Parse(txtAT1.Text) > Int32.Parse(txtDeT1.Text))
                {
                    abcTarifasAgua(tipo_mov, idTarifaAgua, int.Parse(txtDeT1.Text), int.Parse(txtAT1.Text), double.Parse(txtCostoT1.Text), 1, dgTarifa1, gbRenglonT1,pnlResult,lblMensaje);
                }
                else
                {
                    pnlResult.Visible = true;
                    pnlResult.BackColor = Color.OrangeRed;
                    lblMensaje.Text = "¡El termino A: debe ser mayor al termino De:!";
                    lblMensaje.ForeColor = Color.White;
                }
            }else
            {
                pnlResult.Visible = true;
                pnlResult.BackColor = Color.OrangeRed;
                lblMensaje.Text = "¡Ingresa campos obligatorios!";
                lblMensaje.ForeColor = Color.White;
            }

        }

        private void btnAplicaT2_Click(object sender, EventArgs e)
        {
            if (txtImporteT2.Text != "")
            {
                abcTarifasAgua(tipo_mov, idTarifaAgua, int.Parse(txtM3T2.Text), int.Parse(txtM3T2.Text), double.Parse(txtImporteT2.Text), 2, dgTarifa2, gbRenglonT2,pnlResult2,lblMensaje2);
            }
            else
            {
                pnlResult2.Visible = true;
                pnlResult2.BackColor = Color.OrangeRed;
                lblMensaje2.Text = "¡Ingresa campos obligatorios!";
                lblMensaje2.ForeColor = Color.White;
            }
        }

        private void btnBorraTablaT2_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Seguro que desea eliminar la Tabla de Tarifa 2?", "Salir", MessageBoxButtons.YesNoCancel);

            if (result == DialogResult.Yes)
            {
                //para eliminiar 2
                tipo_mov = 2;
                abcTarifasAgua(tipo_mov, idTarifaAgua, 0, 0, 0,2, dgTarifa2, gbRenglonT2, pnlResult2, lblMensaje2);
            }
        }

        private void btnBorraTablaT1_Click(object sender, EventArgs e)
        {
            DialogResult result = MessageBox.Show("Seguro que desea eliminar la Tabla de Tarifa 1?", "Salir", MessageBoxButtons.YesNoCancel);

            if (result == DialogResult.Yes)
            {
                //para eliminiar 2
                tipo_mov = 2;
                abcTarifasAgua(tipo_mov, idTarifaAgua, 0, 0, 0, 1, dgTarifa1, gbRenglonT1, pnlResult, lblMensaje);
            }
        }

        private void txtImporteT2_KeyPress(object sender, KeyPressEventArgs e)
        {
            castDigitos.validarNumeros(e, txtImporteT2);
        }

        private void txtCBaseExcedenteT2_KeyPress(object sender, KeyPressEventArgs e)
        {
            castDigitos.validarNumeros(e, txtCBaseExcedenteT2);
        }

        private void txtCBT2_KeyPress(object sender, KeyPressEventArgs e)
        {
            castDigitos.validarNumeros(e, txtCBT2);
        }

        private void txtBCNA_KeyPress(object sender, KeyPressEventArgs e)
        {
            castDigitos.validarNumeros(e, txtBCNA);
        }

        private void txtCostoT1_KeyPress(object sender, KeyPressEventArgs e)
        {
            castDigitos.validarNumeros(e, txtCostoT1);
        }

        private void txtAT1_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!(char.IsNumber(e.KeyChar)) && (e.KeyChar != (char)Keys.Back))
            {
                e.Handled = true;
                return;
            }
        }

        private void btnAddT2_Click(object sender, EventArgs e)
        {
            var BeanCSiguienteRen = new Backend.Catalogos.CTarifasAgua();
            ResultadoTrnx resultado = new ResultadoTrnx();
            //ejecutamos el sp donde nos mostrara los siguientes datos como id del lote, nombre del colono, direccion, y superficie del lote
            resultado = BeanCSiguienteRen.consultaSigRenglon(2, 2);
            //almacenamos el id del lote en la variable global local
            txtM3T2.Text = resultado.siguienteRenglon.ToString();

            pnlBottomT2.Visible = false;
            int rowCnt = dgTarifa2.RowCount;
            if (rowCnt > 0)
                dgTarifa2.FirstDisplayedScrollingRowIndex = dgTarifa2.RowCount - 1;

            dgTarifa2.Enabled = false;
            gbRenglonT2.Visible = true;
            gbRenglonT2.BringToFront();
            txtM3T2.Enabled = false;
            txtImporteT2.Text = "";
            //tipo de movimiento patra alta
            tipo_mov = 1;
        }
    }
}
