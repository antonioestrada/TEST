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
    public partial class frmAsignaCBA : Form
    {
        Int32 id_medidor = 0, id_manzana = 0, banderaEstatus=0;
        double cba = 0, cbaAnual = 0;
        double mes1 = 0, mes2 = 0, mes3 = 0, mes4 = 0, mes5 = 0, mes6 = 0, mes7 = 0, mes8 = 0, mes9 = 0, mes10 = 0, mes11 = 0, mes12 = 0;
        int mesG = 0, anioG = 0;

        public frmAsignaCBA()
        {
            InitializeComponent();
            definicionDGListado();
        }

        //definicion de datagrid para la consulta
        #region Definicion de Estructura de Columnas DataGridView listado medidores
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGListado()
        {

            dgListado.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgListado, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgListado.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id_medidor",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id_manzana",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Nombre",
                                                  Width = 300
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Direccion",
                                                  Width = 110
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Contrato",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Medidor",
                                                  Width = 90
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (double),
                                                  HeaderText = "CBA",
                                                  Width = 90
                                              }
                                      });
            dgListado.Columns[0].Visible = false;
            dgListado.Columns[1].Visible = false;
            dgListado.Columns[4].Visible = false;
            dgListado.Columns[6].Visible = false;
            //dgListado.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            //dgListado.Columns[4].DefaultCellStyle.Format = "##,##0.00";
            //dgListado.Columns[6].Visible = false;

        }
        #endregion

        #region listadoSP
        public void listadoDG(DataGridView dg, int op, int inIdMzana, string inLote, string inNombre)
        {
            var BeanListadoMed = new Backend.Procesos.CRegLecturas();
            BeanListadoMed.consultaListadoMedidores(dg, op, inIdMzana, inLote, inNombre);
            compruebaRenMedidor(dg);
            //id del medidor, mes, periodo, anio, opcion=2 es para consultar medidores y 3 para consultar CBA asignada
            //valoresLecturas(id_medidor, mesG, anioG, this.opcion);

        }
        #endregion

        #region listadoSP obtine CBA de cada mes
        public void listadoCBAMen(int op, int inIdMedidor)
        {
            ResultadoTrnx resulDTO = new ResultadoTrnx();
            var BeanListadoCBAMen = new Backend.Procesos.CRegLecturas();
            Object[] parames = {
                op,
                inIdMedidor
            };
            resulDTO = BeanListadoCBAMen.consultaCBAMen(op, parames);

            mes1 = resulDTO.mes1;
            mes2 = resulDTO.mes2;
            mes3 = resulDTO.mes3;
            mes4 = resulDTO.mes4;
            mes5 = resulDTO.mes5;
            mes6 = resulDTO.mes6;
            mes7 = resulDTO.mes7;
            mes8 = resulDTO.mes8;
            mes9 = resulDTO.mes9;
            mes10 = resulDTO.mes10;
            mes11 = resulDTO.mes11;
            mes12 = resulDTO.mes12;
            //establezco consulta en mis textbox
            textBox1.Text = mes1.ToString();
            textBox2.Text = mes2.ToString();
            textBox3.Text = mes3.ToString();
            textBox4.Text = mes4.ToString();
            textBox5.Text = mes5.ToString();
            textBox6.Text = mes6.ToString();
            textBox7.Text = mes7.ToString();
            textBox8.Text = mes8.ToString();
            textBox9.Text = mes9.ToString();
            textBox10.Text = mes10.ToString();
            textBox11.Text = mes11.ToString();
            textBox12.Text = mes12.ToString();
        }
        #endregion

        #region listadoSP obtine CBA de cada mes
        public void registra(int op,  int inIdMedidor, string cuota, string periodo)
        {
            ResultadoTrnx resulDTO = new ResultadoTrnx();
            var BeanListadoCBAMen = new Backend.Procesos.CRegLecturas();
            Object[] parames = {
                op,
                inIdMedidor,
                cuota,
                periodo
            };
           resulDTO = BeanListadoCBAMen.registroCuotasMensuales(parames);
            rtbResul.Text +=resulDTO.Mensaje + System.Environment.NewLine;

        }
        #endregion

        #region listadoSP obtine CBA de cada mes
        public void determinaEditables(int op, int inIdMedidor, string cuota, string periodo, TextBox tx)
        {
            ResultadoTrnx resulDTO = new ResultadoTrnx();
            var BeanListadoCBAMen = new Backend.Procesos.CRegLecturas();
            Object[] parames = {
                op,
                inIdMedidor,
                cuota,
                periodo
            };
            resulDTO = BeanListadoCBAMen.registroCuotasMensuales(parames);
            rtbResul.Text += resulDTO.Mensaje;
            if (resulDTO.result == 0)
                tx.Enabled = false;

            

        }
        #endregion
        public void habilita()
        {

            determinaEditables(5, id_medidor, textBox1.Text, "01", textBox1);
            determinaEditables(5, id_medidor, textBox2.Text, "02", textBox2);
            determinaEditables(5, id_medidor, textBox3.Text, "03", textBox3);
            determinaEditables(5, id_medidor, textBox4.Text, "04", textBox4);
            determinaEditables(5, id_medidor, textBox5.Text, "05", textBox5);
            determinaEditables(5, id_medidor, textBox6.Text, "06", textBox6);
            determinaEditables(5, id_medidor, textBox7.Text, "07", textBox7);
            determinaEditables(5, id_medidor, textBox8.Text, "08", textBox8);
            determinaEditables(5, id_medidor, textBox9.Text, "09", textBox9);
            determinaEditables(5, id_medidor, textBox10.Text, "10", textBox10);
            determinaEditables(5, id_medidor, textBox11.Text, "11", textBox11);
            determinaEditables(5, id_medidor, textBox12.Text, "12", textBox12);
        }


        #region comprueba si hay  modificar Renglon medidor para lectura
        public int compruebaRenMedidor(DataGridView dGrid)
        {
            int retorno = 0;
            DataGridViewRow row = dGrid.CurrentRow;
            if (dGrid.RowCount > 0)
            {
                try
                {
                    // Obtenemos el valor de la columna
                    Object value = row.Cells[0].Value;
                    int currenR = dgListado.SelectedRows[0].Index;
                    // Establecemos el valor en el correspondiente control Label
                    if (value != null)
                    {
                        id_medidor = Convert.ToInt32(row.Cells[0].Value);
                        id_manzana = Convert.ToInt32(row.Cells[1].Value);
                        lblColono.Text = row.Cells[2].Value.ToString();
                        lblDireccion.Text = row.Cells[3].Value.ToString();
                        lblContrato.Text = row.Cells[4].Value.ToString();
                        cba = double.Parse(row.Cells[6].Value.ToString());
                        cbaAnual = Math.Round(cba * 12, 2);
                        lblCBA.Text = cba.ToString();
                        lblCBAAnual.Text = cbaAnual.ToString();
                        lblMedidor.Text = row.Cells[5].Value.ToString();
                        listadoCBAMen(5, id_medidor);
                        // valoresRen(dgListado, currenR);
                        // calcula_consumo();
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

        #region toma valores de seleccion del listado
        public void valoresRen(DataGridView dg, int inRow)
        {
            id_medidor = Convert.ToInt32(dg.SelectedRows[0].Cells[0].Value.ToString());
            id_manzana = Convert.ToInt32(dg.SelectedRows[0].Cells[1].Value.ToString());
            lblColono.Text = dg.SelectedRows[0].Cells[2].Value.ToString();
            lblDireccion.Text = dg.SelectedRows[0].Cells[3].Value.ToString();
            lblContrato.Text = dg.SelectedRows[0].Cells[4].Value.ToString();
            lblMedidor.Text = dg.SelectedRows[0].Cells[5].Value.ToString();
            //id del medidor, mes, periodo, anio, opcion=2 es para consultar medidores y 3 para consultar CBA asignada
            //valoresLecturas(id_medidor, mesG, anioG, this.opcion);
            // calcula_consumo();
        }
        #endregion

        private void btnFijo_Click(object sender, EventArgs e)
        {
            if(textBox1.Enabled==true)
            {
                textBox1.Text = cba.ToString();
            }
            if (textBox2.Enabled == true)
            {
                textBox2.Text = cba.ToString();
            }

            if (textBox3.Enabled == true)
            {
                textBox3.Text = cba.ToString();
                
            }

            if (textBox4.Enabled == true)
            {
                textBox4.Text = cba.ToString();
                
            }
            if (textBox5.Enabled == true)
            {
                textBox5.Text = cba.ToString();
                
            }
            if (textBox6.Enabled == true)
            {
                textBox6.Text = cba.ToString();
                
            }
            if (textBox7.Enabled == true)
            {
                textBox7.Text = cba.ToString();
               
            }
            if (textBox8.Enabled == true)
            {
                textBox8.Text = cba.ToString();
                
            }
            if (textBox9.Enabled == true)
            {
                textBox9.Text = cba.ToString();
                
            }
            if (textBox10.Enabled == true)
            {
                textBox10.Text = cba.ToString();
                
            }
            if (textBox11.Enabled == true)
            {
                textBox11.Text = cba.ToString();
                
            }
            if (textBox12.Enabled == true)
            {
                textBox12.Text = cba.ToString();
            }
            //readOnlyON(2);
            lblSuma.Text = cbaAnual.ToString();


            readOnlyON(1);
            banderaEstatus = 3;
            sumaVa();

        }
        Backend.Utilerias util = new Backend.Utilerias();
        private void textBox1_KeyPress(object sender, KeyPressEventArgs e)
        {
            util.validarNumeros(e, textBox1);
        }

        private void textBox2_KeyPress(object sender, KeyPressEventArgs e)
        {
            util.validarNumeros(e, textBox2);
        }

        private void textBox3_KeyPress(object sender, KeyPressEventArgs e)
        {
            util.validarNumeros(e, textBox3);
        }

        private void textBox4_KeyPress(object sender, KeyPressEventArgs e)
        {
            util.validarNumeros(e, textBox4);
        }

        private void textBox5_KeyPress(object sender, KeyPressEventArgs e)
        {
            util.validarNumeros(e, textBox5);
        }

        private void textBox6_KeyPress(object sender, KeyPressEventArgs e)
        {
            util.validarNumeros(e, textBox6);
        }

        private void textBox7_KeyPress(object sender, KeyPressEventArgs e)
        {
            util.validarNumeros(e, textBox7);
        }

        private void textBox8_KeyPress(object sender, KeyPressEventArgs e)
        {
            util.validarNumeros(e, textBox8);
        }

        private void textBox9_KeyPress(object sender, KeyPressEventArgs e)
        {
            util.validarNumeros(e, textBox9);
        }

        private void textBox10_KeyPress(object sender, KeyPressEventArgs e)
        {
            util.validarNumeros(e, textBox10);
        }

        private void textBox11_KeyPress(object sender, KeyPressEventArgs e)
        {
            util.validarNumeros(e, textBox11);
        }

        private void textBox12_KeyPress(object sender, KeyPressEventArgs e)
        {
            util.validarNumeros(e, textBox12);
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
            
        }

        private void dgListado_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            compruebaRenMedidor(dgListado);
        }

        private void textBox1_Validating(object sender, CancelEventArgs e)
        {
            sumaVa();
        }

        private void textBox2_Validating(object sender, CancelEventArgs e)
        {
            sumaVa();
        }

        private void textBox3_Validating(object sender, CancelEventArgs e)
        {
            sumaVa();
        }

        private void textBox4_Validating(object sender, CancelEventArgs e)
        {
            sumaVa();
        }

        private void textBox5_Validated(object sender, EventArgs e)
        {
            sumaVa();
        }

        private void textBox6_Validating(object sender, CancelEventArgs e)
        {
            sumaVa();
        }

        private void textBox7_Validating(object sender, CancelEventArgs e)
        {
            sumaVa();
        }

        private void textBox8_Validating(object sender, CancelEventArgs e)
        {
            sumaVa();
        }

        private void mSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void textBox9_Validating(object sender, CancelEventArgs e)
        {
            sumaVa();
        }

        private void textBox10_Validating(object sender, CancelEventArgs e)
        {
            sumaVa();
        }

        private void textBox11_Validating(object sender, CancelEventArgs e)
        {
            sumaVa();
        }

        private void textBox12_Validating(object sender, CancelEventArgs e)
        {
            sumaVa();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            cargaComponentes(1);
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            cargaComponentes(banderaEstatus);
        }

        public void cargaComponentes(int op)
        {
            if(op==0)
            {
                //desea editar
                btnFijo.Visible = true;
                btnRecalcula.Visible = true;
                label20.Visible = true;
                lblSuma.Visible = true;
                btnGuardar.Text = "GUARDAR";
                banderaEstatus = 1;
                
            }
            if(op==1)
            {
                readOnlyON(2);
                btnFijo.Visible = false;
                btnRecalcula.Visible = false;
                label20.Visible = false;
                lblSuma.Visible = false;
                lblSuma.BackColor = Color.White;
                btnGuardar.Text = "EDITAR";
                listadoCBAMen(5, id_medidor);
                lblSuma.Text = cbaAnual.ToString();
                banderaEstatus = 0;

            }
            if(op==3)
            {
                string caption = "Confirmacion del Proceso ";
                MessageBoxButtons buttons = MessageBoxButtons.YesNo;
                DialogResult result;
                string message = "¡Deseas guardar los cambios a la asignacion de CBA mensual!";
                result = MessageBox.Show(this, message, caption, buttons,
                MessageBoxIcon.Question, MessageBoxDefaultButton.Button1,
                0, "mspaint.chm");

                if (result == DialogResult.Yes)
                {
                    double r = 0;
                    if (double.TryParse(lblSuma.Text, out r))
                    {
                        double sumaTotal = double.Parse(lblSuma.Text);
                        if (cbaAnual == sumaTotal)
                        {
                            registra(6, id_medidor, textBox1.Text, "01");
                            registra(6, id_medidor, textBox2.Text, "02");
                            registra(6, id_medidor, textBox3.Text, "03");
                            registra(6, id_medidor, textBox4.Text, "04");
                            registra(6, id_medidor, textBox5.Text, "05");
                            registra(6, id_medidor, textBox6.Text, "06");
                            registra(6, id_medidor, textBox7.Text, "07");
                            registra(6, id_medidor, textBox8.Text, "08");
                            registra(6, id_medidor, textBox9.Text, "09");
                            registra(6, id_medidor, textBox10.Text, "10");
                            registra(6, id_medidor, textBox11.Text, "11");
                            registra(6, id_medidor, textBox12.Text, "12");
                            MessageBox.Show("Se guardaron los cambios correctamente");
                            
                            cargaComponentes(1);
                        }
                        else
                            MessageBox.Show("Verifica la asignacion mensual.");
                    }
                    else
                        MessageBox.Show("Requiere valores numericos.");
                }
                else//cancelamos proceso
                    cargaComponentes(1);
            }
        }


        #region activa readonly
        public void readOnlyON(int op)
        {
            if (op == 1)
            {
                textBox1.ReadOnly = false;
                textBox2.ReadOnly = false;
                textBox3.ReadOnly = false;
                textBox4.ReadOnly = false;
                textBox5.ReadOnly = false;
                textBox6.ReadOnly = false;
                textBox7.ReadOnly = false;
                textBox8.ReadOnly = false;
                textBox9.ReadOnly = false;
                textBox10.ReadOnly = false;
                textBox11.ReadOnly = false;
                textBox12.ReadOnly = false;
            }
            if (op == 2)
            {
                textBox1.ReadOnly = true;
                textBox2.ReadOnly = true;
                textBox3.ReadOnly = true;
                textBox4.ReadOnly = true;
                textBox5.ReadOnly = true;
                textBox6.ReadOnly = true;
                textBox7.ReadOnly = true;
                textBox8.ReadOnly = true;
                textBox9.ReadOnly = true;
                textBox10.ReadOnly = true;
                textBox11.ReadOnly = true;
                textBox12.ReadOnly = true;
            }
        }
        #endregion

        public void sumaVa()
        {
            double res = 0;
            bool casteo2 = double.TryParse(textBox1.Text, out res);
            bool casteo3 = double.TryParse(textBox2.Text, out res);
            bool casteo4 = double.TryParse(textBox3.Text, out res);
            bool casteo5 = double.TryParse(textBox4.Text, out res);
            bool casteo6 = double.TryParse(textBox5.Text, out res);
            bool casteo7 = double.TryParse(textBox6.Text, out res);
            bool casteo8 = double.TryParse(textBox7.Text, out res);
            bool casteo9 = double.TryParse(textBox8.Text, out res);
            bool casteo10 = double.TryParse(textBox9.Text, out res);
            bool casteo11 = double.TryParse(textBox10.Text, out res);
            bool casteo12 = double.TryParse(textBox11.Text, out res);
            bool casteo1 = double.TryParse(textBox12.Text, out res);
            if (casteo1 &&
                casteo2 &&
                casteo3 &&
                casteo4 &&
                casteo5 &&
                casteo6 &&
                casteo7 &&
                casteo8 &&
                casteo9 &&
                casteo10 &&
                casteo11 &&
                casteo12)
            {
                double sumaT = double.Parse(textBox1.Text) + double.Parse(textBox2.Text) +
                    double.Parse(textBox3.Text) +
                    double.Parse(textBox4.Text) +
                    double.Parse(textBox5.Text) +
                    double.Parse(textBox6.Text) +
                    double.Parse(textBox7.Text) +
                    double.Parse(textBox8.Text) +
                    double.Parse(textBox9.Text) +
                    double.Parse(textBox10.Text) +
                    double.Parse(textBox11.Text) +
                    double.Parse(textBox12.Text);
                sumaT = Math.Round(sumaT, 2);
                lblSuma.Text = sumaT.ToString();
                if (sumaT == cbaAnual)
                {
                    lblSuma.BackColor = Color.LimeGreen;
                }
                else
                    lblSuma.BackColor = Color.Red;
            }
            else
            {
                MessageBox.Show("Por favor, ingresa valores Numericos");
                lblSuma.Text = "0.00";
            }
        }
        private void btnRecalcula_Click(object sender, EventArgs e)
        {
            readOnlyON(1);
            textBox1.Text = mes1.ToString();
            textBox2.Text = mes2.ToString();
            textBox3.Text = mes3.ToString();
            textBox4.Text = mes4.ToString();
            textBox5.Text = mes5.ToString();
            textBox6.Text = mes6.ToString();
            textBox7.Text = mes7.ToString();
            textBox8.Text = mes8.ToString();
            textBox9.Text = mes9.ToString();
            textBox10.Text = mes10.ToString();
            textBox11.Text = mes11.ToString();
            textBox12.Text = mes12.ToString();
            banderaEstatus = 3;
        }

        #region LOCKCALCULO
        
        public void recalculoAuto(double inCompara, TextBox inValor, TextBox val1, TextBox val2, TextBox val3, TextBox val4, TextBox val5, TextBox val6, TextBox val7, TextBox val8, TextBox val9, TextBox val10, TextBox val11)
        {
            double res = 0;
            Boolean resul=double.TryParse(inValor.Text, out res);
            if (resul)
            {
                if (double.Parse(inValor.Text) > inCompara)
                {
                    res = (double.Parse(inValor.Text) - inCompara) /11;
                    if (res < 0)
                        res = 0;
                    //asignamos nuevo valor1
                    double sum = Math.Round(double.Parse( val1.Text) - res,2);
                    if (sum < 0)
                        sum = 0;
                    
                    val1.Text = sum.ToString();
                    
                    //asignamos nuevo valor2
                    sum = Math.Round(double.Parse(val2.Text) - res,2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val2.Text = sum.ToString();

                    //asignamos nuevo valor3
                    sum = Math.Round(double.Parse(val3.Text) - res,2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val3.Text = sum.ToString();

                    //asignamos nuevo valor4
                    sum = Math.Round(double.Parse(val4.Text) - res,2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val4.Text = sum.ToString();

                    //asignamos nuevo valor5
                    sum = Math.Round(double.Parse(val5.Text) - res,2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val5.Text = sum.ToString();

                    //asignamos nuevo valor6
                    sum = Math.Round(double.Parse(val6.Text) - res,2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val6.Text = sum.ToString();

                    //asignamos nuevo valor7
                    sum = Math.Round(double.Parse(val7.Text) - res,2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val7.Text = sum.ToString();

                    //asignamos nuevo valor8
                    sum = Math.Round(double.Parse(val8.Text) - res,2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val8.Text = sum.ToString();

                    //asignamos nuevo valor9
                    sum = Math.Round(double.Parse(val9.Text) - res,2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val9.Text = sum.ToString();

                    //asignamos nuevo valor10
                    sum = Math.Round(double.Parse(val10.Text) - res,2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val10.Text = sum.ToString();

                    //asignamos nuevo valor11
                    sum = Math.Round(double.Parse(val11.Text) - res,2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val11.Text = sum.ToString();
                }
               else if (double.Parse(inValor.Text) < inCompara)
                {
                    res = (inCompara - double.Parse(inValor.Text)) / 11;
                    if (res < 0)
                        res = 0;
                    //asignamos nuevo valor1
                    double sum = Math.Round(double.Parse(val1.Text) + res, 2);
                    if (sum < 0)
                        sum = 0;

                    val1.Text = sum.ToString();

                    //asignamos nuevo valor2
                    sum = Math.Round(double.Parse(val2.Text) + res, 2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val2.Text = sum.ToString();

                    //asignamos nuevo valor3
                    sum = Math.Round(double.Parse(val3.Text) + res, 2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val3.Text = sum.ToString();

                    //asignamos nuevo valor4
                    sum = Math.Round(double.Parse(val4.Text) + res, 2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val4.Text = sum.ToString();

                    //asignamos nuevo valor5
                    sum = Math.Round(double.Parse(val5.Text) + res, 2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val5.Text = sum.ToString();

                    //asignamos nuevo valor6
                    sum = Math.Round(double.Parse(val6.Text) + res, 2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val6.Text = sum.ToString();

                    //asignamos nuevo valor7
                    sum = Math.Round(double.Parse(val7.Text) + res, 2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val7.Text = sum.ToString();

                    //asignamos nuevo valor8
                    sum = Math.Round(double.Parse(val8.Text) + res, 2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val8.Text = sum.ToString();

                    //asignamos nuevo valor9
                    sum = Math.Round(double.Parse(val9.Text) + res, 2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val9.Text = sum.ToString();

                    //asignamos nuevo valor10
                    sum = Math.Round(double.Parse(val10.Text) + res, 2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val10.Text = sum.ToString();

                    //asignamos nuevo valor11
                    sum = Math.Round(double.Parse(val11.Text) + res, 2);
                    if (sum < 0)
                        sum = 0;
                    //asignamos nuevo valor
                    val11.Text = sum.ToString();
                }
            }
        }
        #endregion

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            //carga grid listado de informacion para lectura
            if (cmbFiltroMza.Text == "Todos")
            {
                //Object[] parames = { 1, 0, "", "" };
                listadoDG(dgListado, 1, 0, "", "");
            }
            else
            {
                //Object[] parames = { 2, Convert.ToInt32(cmbFiltroMza.SelectedValue.ToString()), "", "" };
                listadoDG(dgListado, 2, Convert.ToInt32(cmbFiltroMza.SelectedValue.ToString()), "", "");
            }
        }

        private void txtColono_TextChanged(object sender, EventArgs e)
        {
            // Object[] parames = { 3, "2", "HANS LAUTERFELD", "HANS LAUTERFELD" };
            listadoDG(dgListado, 3, 0, "", txtColono.Text);
            if (dgListado.RowCount > 0)
                gbCaptura.Visible = true;
            else
                gbCaptura.Visible = false;
        }

        private void frmAsignaCBA_Load(object sender, EventArgs e)
        {
            habilita();
            //carga combo del catalogo de  manzanas 
            var BeanCLotesMza = new Backend.Catalogos.CManzanaLotes();
            BeanCLotesMza.consultaMazaComboRPT(cmbFiltroMza);
            muestraDatos();
        }

        public void muestraDatos()
        {
            cmbFiltroMza.SelectedIndex = 0;
            btnFiltrar.Enabled = true;
            dgListado.Enabled = true;
            txtColono.Enabled = true;
            //Object[] parames = { 1, 0, "", "" };
            listadoDG(dgListado, 1, 0, "", "");
        }
    }
}
