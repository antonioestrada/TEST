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
    public partial class frmCCalculoManto : Form
    {
        int estatusVentana = 0, tipo_mov=0;
        int tipoCalculo = 0, idTarifa=0;
        string estatusTar = "V", fechaAp="",descripcionTar="",formatoFechaPre="";
        public frmCCalculoManto()
        {
            InitializeComponent();
            definicionDGHistorico();
        }

        #region Definicion de Estructura de Columnas DataGridView Historico
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGHistorico()
        {

            dgHistorico.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgHistorico, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgHistorico.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id_tarimanto",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Tipo",
                                                  Width = 105
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Base",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "F. A.",
                                                  Width = 85
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "",
                                                  Width = 20
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Tipo",
                                                  Width = 20
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            dgHistorico.Columns[0].Visible = false;
            dgHistorico.Columns[2].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            dgHistorico.Columns[2].DefaultCellStyle.Format = "##,##0.0000";
            dgHistorico.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgHistorico.Columns[5].Visible = false;
        }
        #endregion

        //ESTE CODIGO ES PARA LA TABLA DE PARAM
        #region carga valores CalculoManto
        public void cargaValores()
        {
            var BeanCBeanParamManto = new Backend.Catalogos.CParametros();
            ResultadoTrnx resultado = new ResultadoTrnx();
            //ejecutamos el sp donde nos mostrara los siguientes datos como valor definido en parametros
            resultado = BeanCBeanParamManto.consultaParam("param_Manto2");
            //almacenamos datos en la variable global local
            //manto2 es para base del calculo
            txtBase.Text = resultado.Pvalor;

            //manto1 tipo de calculo: 
            //1 para cuota fija
            //2 para cuota por calculo multiplicando valor por metros2 del terreno
            resultado = BeanCBeanParamManto.consultaParam("param_Manto1");
            tipoCalculo = int.Parse(resultado.Pvalor);
            if (tipoCalculo == 1)
            {
                rbFija.Checked = true;
                lblCalculo.Text = "Importe a pagar por Lote: $ " + txtBase.Text;
            }
            else if (tipoCalculo == 2)
            {
                rbVariable.Checked = true;
                lblCalculo.Text = "Importe a pagar= " + txtBase.Text + " X M2 del Lote";
            }

            //manto2 es para Fecha
            resultado = BeanCBeanParamManto.consultaParam("param_Manto3");
            dFecha_Aplica.Text = resultado.Pvalor;

            dFecha_Aplica.Enabled = false;
            rbFija.Enabled = false;
            rbVariable.Enabled = false;
            txtBase.ReadOnly = true;

        }
        #endregion

        #region tarifas ABC
        public void abcTarifas(int tipoMov, int idTariManto, int tipoTar, string descripcion, TextBox baseTar, string fechaaplica)
        {
            var BeanTarifa = new Backend.Catalogos.CTarifas();
            var BeanCTarifa = new Backend.Catalogos.CTarifas();

            //definimos los parametros que pasaran al sp
            Object[] parames = {
                tipoMov,
                idTariManto,
                tipoTar,
                descripcion,
                baseTar.Text,
                fechaaplica
            };
            //cachamos el valor que retorna nuestro sp
            //result=0 Alta, Baja o Cambio exitoso
            //result=2 el registro ya existe
            //result=2 el registro no existe
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            resultado = BeanTarifa.abcTarifas(parames);
            pnlResult.Visible = true;
            lblMensaje.Text = resultado.Mensaje;

            if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlResult.BackColor = Color.DeepSkyBlue;
                lblMensaje.ForeColor = Color.White;
                //limpiaF();
                this.Size = new Size(870, 340);
                //cargaValores();
                //var BeanCargaV = new Backend.Catalogos.CTarifas();
                //carga grid
               // BeanCargaV.consultaTarifas(dgHistorico);
                cargaVigente();
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

        #region Carga Bases Vigente
        public void cargaVigente()
        {
            var BeanCBeanTari = new Backend.Catalogos.CTarifas();
            ResultadoTrnx resultado = new ResultadoTrnx();
            //ejecutamos el sp donde nos mostrara los siguientes datos como valor definido en parametros
            resultado = BeanCBeanTari.consultaTarifasVigente();
            dFecha_Aplica.Text = resultado.tariFechaAplica;
            txtBase.Text = resultado.tariValor;
            tipoCalculo = int.Parse(resultado.tariTipo);
            if (tipoCalculo == 1)
            {
                rbFija.Checked = true;
                lblCalculo.Text = "Importe a pagar por Lote: $ " + txtBase.Text;
            }
            else if (tipoCalculo == 2)
            {
                rbVariable.Checked = true;
                lblCalculo.Text = "Importe a pagar= " + txtBase.Text + " X M2 del Lote";
            }
        }
        #endregion

        #region comprueba si hay Bases de Manto a eliminar o modificar
        public int compruebaHistorico(DataGridView dGrid)
        {
            mEditar.Visible = true;
            mEliminar.Visible = true;
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
                        idTarifa = Convert.ToInt16(row.Cells[0].Value);
                        tipoCalculo = Convert.ToInt16(row.Cells[5].Value);
                        dFecha_Aplica.Text = row.Cells[3].Value.ToString();
                        txtBase.Text = row.Cells[2].Value.ToString();
                        estatusTar= row.Cells[4].Value.ToString();
                        if (tipoCalculo == 1)
                        {
                            rbFija.Checked = true;
                            lblCalculo.Text = "Importe a pagar por Lote: $ " + txtBase.Text;
                        }
                        else if (tipoCalculo == 2)
                        {
                            rbVariable.Checked = true;
                            lblCalculo.Text = "Importe a pagar= " + txtBase.Text + " X M2 del Lote";
                        }
                       
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

        #region limpiaCancela
        public void limpiaCancela()
        {
            this.Size = new Size(553, 340);
            linkHistorico.Text = "Ver Historico...";
            lblEncabezado.Text = "Bases para el Cálculo de Cuotas de Mantenimiento";
            pnlEncabezado.BackColor = Color.SteelBlue;
            pnlPrinBancos.BackColor = Color.SteelBlue;
            mNuevo.Enabled = true;
            mEditar.Enabled = true;
            mEliminar.Enabled = true;
            pnlResult.Visible = false;
            dgHistorico.Enabled = true;
            estatusVentana = 0;
            mNuevo.Visible = false;
            mEditar.Visible = false;
            mEliminar.Visible = false;
            //txtBase.ReadOnly = true;
            dFecha_Aplica.Enabled = false;
            gbBases.Enabled = false;
            var BeanCargaV = new Backend.Catalogos.CTarifas();
            //carga grid
            BeanCargaV.consultaTarifas(dgHistorico);
            //carga valor vigente
            cargaVigente();
        }
        #endregion

        #region edita parametros
        public void editaParametros(int tipoMov, string codeParam, string valor)
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
            pnlResult.Visible = true;
            lblMensaje.Text = resultado.Mensaje;

            if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlResult.BackColor = Color.DeepSkyBlue;
                lblMensaje.ForeColor = Color.White;
                this.Size = new Size(643, 350);
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

        #region defineTipo
        public void defineTipo()
        {
            if(rbFija.Checked==true)
            {
                lblCalculo.Text = "Importe a pagar por Lote: $ " + txtBase.Text;
                tipoCalculo = 1;
                descripcionTar = "Tarifa Fija";
            }
            else if (rbVariable.Checked == true)
            {
                lblCalculo.Text = "Importe a pagar= " + txtBase.Text + " X M2 del Lote";
                tipoCalculo = 2;
                descripcionTar = "Tarifa Variable";
            }                
        }
        #endregion

        #region leerGrid
        public void leeGrid()
        {
            Int32 i;
            // DataGridViewCell dgc;
            //Recorremos el DataGridView con un bucle for 
            if (dgHistorico.RowCount > 0)
            {
                for (i = 0; i < dgHistorico.Rows.Count; i++)
                {
                    if (dgHistorico.Rows[i].Cells[4].Value.ToString() == "A")
                    {
                        idTarifa = int.Parse(dgHistorico.Rows[i].Cells[0].Value.ToString());
                        txtBase.Text = dgHistorico.Rows[i].Cells[2].Value.ToString();
                        dFecha_Aplica.Text = dgHistorico.Rows[i].Cells[3].Value.ToString();
                        tipoCalculo = int.Parse(dgHistorico.Rows[i].Cells[5].Value.ToString());
                        if (tipoCalculo == 1)
                        {
                            rbFija.Checked = true;
                            lblCalculo.Text = "Importe a pagar por Lote: $ " + txtBase.Text;
                        }
                        else if (tipoCalculo == 2)
                        {
                            rbVariable.Checked = true;
                            lblCalculo.Text = "Importe a pagar= " + txtBase.Text + " X M2 del Lote";
                        }
                    }
                }
            }
        }
        #endregion

        #region leerGrid para fecha activa de aplicacion dela base
        public void determinaFechaInicial()
        {
            Int32 i;
            // DataGridViewCell dgc;
            //Recorremos el DataGridView con un bucle for 
            if (dgHistorico.RowCount > 0)
            {
                for (i = 0; i < dgHistorico.Rows.Count; i++)
                {
                    if (dgHistorico.Rows[i].Cells[4].Value.ToString() == "A")
                    {
                        formatoFechaPre = dgHistorico.Rows[i].Cells[3].Value.ToString();
                    }
                }
            }
        }
        #endregion

        #region opcion de formulario define colores y tamaño de formulario
        public void opForm(string encabezadoMov, Color colorT, string opcion, int mov, ToolStripMenuItem bloqueaA, ToolStripMenuItem bloqueaB, DataGridView dg)
        {
            this.Size = new Size(870, 390);
            lblEncabezado.Text = encabezadoMov;
            pnlPrinBancos.BackColor = colorT;
            pnlEncabezado.BackColor = colorT;
            btnGuardar.Text = opcion;
            bloqueaA.Enabled = false;
            bloqueaB.Enabled = false;
            dg.Enabled = false;
            tipo_mov = mov;
            pnlResult.Visible = false;
        }
        #endregion

        private void frmCCalculoManto_Load(object sender, EventArgs e)
        {
            //cargaValores();
            var BeanCargaV = new Backend.Catalogos.CTarifas();
            //carga grid
            BeanCargaV.consultaTarifas(dgHistorico);
            //carga valor vigente
            cargaVigente();

        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (dFecha_Aplica.Text == "" || txtBase.Text == "")
            {
                pnlResult.Visible = true;
                pnlResult.BackColor = Color.OrangeRed;
                lblMensaje.Text = "¡Ingresa los campos obligatorios!";
                lblMensaje.ForeColor = Color.White;
            }
            else
            {
                Backend.Utilerias util = new Backend.Utilerias();
                String fechaFormato = util.formatoFecha(dFecha_Aplica.Text);
                abcTarifas(tipo_mov, idTarifa, tipoCalculo, descripcionTar, txtBase, fechaFormato);               
                // editaParametros(1, "param_Manto1", Convert.ToString(tipoCalculo));
                //editaParametros(1, "param_Manto2", txtBase.Text);
                //Backend.Utilerias util = new Backend.Utilerias();             
                //String fechaFormato = util.formatoFecha(dFecha_Aplica.Text);
                //editaParametros(1, "param_Manto3", fechaFormato);
                //cargaValores();

            }
        }

        private void rbFija_CheckedChanged(object sender, EventArgs e)
        {
          defineTipo();
        }

        private void rbVariable_CheckedChanged(object sender, EventArgs e)
        {
            defineTipo();
        }

        private void mNuevo_Click(object sender, EventArgs e)
        {
            //string año = fechaAp.Substring(1, 4);
            int row = dgHistorico.RowCount;
            if (row > 0)
            {
                fechaAp = dgHistorico.Rows[row - 1].Cells[3].Value.ToString();
                int dia = int.Parse(fechaAp.Substring(0, 2));
                int mes = int.Parse(fechaAp.Substring(3, 2));
                int anio = int.Parse(fechaAp.Substring(6, 4));
                dFecha_Aplica.MinDate = new DateTime(anio, mes, dia);
            }
            opForm("Nueva Base de Mantenimiento", Color.LightGreen, "Registrar", 1, mEditar, mEliminar, dgHistorico);
            dFecha_Aplica.Enabled = true;
            gbBases.Enabled = true;
            btnGuardar.Visible = true;
            btnCancel.Visible = true;

            
        }

        private void mEditar_Click(object sender, EventArgs e)
        {
            determinaFechaInicial();
            int dia = int.Parse(formatoFechaPre.Substring(0, 2));
            int mes = int.Parse(formatoFechaPre.Substring(3, 2));
            int anio = int.Parse(formatoFechaPre.Substring(6, 4));
            dFecha_Aplica.MinDate = new DateTime(anio, mes, dia);

            if (estatusTar != "I" && estatusTar != "A")
            {
                dFecha_Aplica.Enabled = true;
                gbBases.Enabled = true;
                pnlResult.Visible = false;
                opForm("Modificar Base de Mantenimiento", Color.Peru, "Guardar", 3, mNuevo, mEliminar,dgHistorico);
            }
            else  
            MessageBox.Show("No es posible Editar: La Base vigente o Bases anteriores");

        }

        private void mEliminar_Click(object sender, EventArgs e)
        {
            if (estatusTar != "I" && estatusTar != "A")
            {
                pnlResult.Visible = false;
                opForm("Eliminar Base de Mantenimiento", Color.IndianRed, "Eliminar", 2, mNuevo, mEditar,dgHistorico);
            }
            else
                MessageBox.Show("No es posible Eliminar: La Base vigente o Bases anteriores");
        }


        private void mSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void linkHistorico_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
        {
            if (estatusVentana == 0) {
                this.Size = new Size(870, 340);
                linkHistorico.Text = "Ocultar Historico...";
                estatusVentana = 1;
                mNuevo.Visible = true;
                dgHistorico.ClearSelection();
            }
            else
            {
                dFecha_Aplica.MinDate = new DateTime(2010, 01, 01);
                limpiaCancela();
                
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            dFecha_Aplica.MinDate = new DateTime(2010, 01, 01);
            limpiaCancela();
        }

        

        private void dgHistorico_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            compruebaHistorico(dgHistorico);

        }
    }
}

