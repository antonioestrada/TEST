using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WFPGranjas.Backend;
using WFPGranjas.Backend.Catalogos;
using WFPGranjas.Backend.Procesos;

namespace WFPGranjas
{
    public partial class frmAnticipoMto : Form
    {
        int id_colono = 0,idManzana=0,idLote=0;
        String listaMeses;
        List<int> listaCuotasPag;
        double pagoTotal = 0;
        int servicio = 0;
        Utilerias utilities = new Utilerias();
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
                                               //   HeaderText = "nombre",
                                                  Width = 322
                                                 
                                              },
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "direccion",
                                                  Width = 122

                                              }, new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "idlote",
                                                  Width = 122

                                              }, new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "lote",
                                                  Width = 122

                                              },new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "idmanzana",
                                                  Width = 122

                                              },
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "manzana",
                                                  Width = 122

                                              },
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "nombre",
                                                  Width = 122

                                              }

                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            dgPropietario.Columns[0].Visible = false;
            dgPropietario.Columns[2].Visible = false;
            dgPropietario.Columns[3].Visible = false;
            dgPropietario.Columns[4].Visible = false;
            dgPropietario.Columns[5].Visible = false;
            dgPropietario.Columns[6].Visible = false;
            dgPropietario.Columns[7].Visible = false;
            dgPropietario.DefaultCellStyle.Font = new Font("Arial", 9F, GraphicsUnit.Pixel);
            dgPropietario.RowHeadersVisible = false;
            //dgLotes.Columns[1].Visible = false;
            //dgLotes.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            //dgLotes.Columns[4].DefaultCellStyle.Format = "##,##0.0000";

        }
        #endregion

        #region Definicion de Estructura de Columnas DataGridView Cuotas
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGCuotas()
        {

            dgPartidasR.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgPropietario, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgPartidasR.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Servicio",
                                                  Width = 300
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Periodo",
                                                  Width = 302

                                              },
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Importe",
                                                  Width = 202

                                              }

                                      });


            dgPartidasR.DefaultCellStyle.Font = new Font("Arial", 14F, GraphicsUnit.Pixel);
            dgPartidasR.RowHeadersVisible = false;
            //dgLotes.Columns[1].Visible = false;
            //dgLotes.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            //dgLotes.Columns[4].DefaultCellStyle.Format = "##,##0.0000";

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
                        lblColono.Text = row.Cells[7].Value.ToString();
                        lblDireccion.Text =""+ row.Cells[2].Value;
                        idManzana = Convert.ToInt16(row.Cells[5].Value);
                        idLote = Convert.ToInt16(row.Cells[3].Value);
                        // String numeroRomano = utilities.numeroRomano(int.Parse(row.Cells[3].Value.ToString()));
                        lblMzaLote.Text ="Manzana: "+ row.Cells[6].Value + " Lote: " + row.Cells[4].Value;
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
        public frmAnticipoMto(int servicio)
        {
            InitializeComponent();
            definicionDGBuscaColono();
            definicionDGCuotas();
            this.servicio = servicio;
        }

     
        private void dgPropietario_CellMouseDoubleClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            int retornoB = compruebaPropietario(dgPropietario);
            if (retornoB == 1)
            {
                dgPropietario.Visible = false;
                lblColono.Visible = true;
                txtColono.Text = "";
                groupDColono.Visible = true;
                btnCapturaR.Enabled = true;
                groupCuota.Visible = false;
                pnlMeses.Visible = false;
                pagoTotal = 0;

            }
        }

        private void btnCapturaR_Click(object sender, EventArgs e)
        {
            Boolean resultado = false;
            PrcAnticipos prcAnticipos = new PrcAnticipos();
            Object[] parames = {  idLote , servicio };
            resultado = prcAnticipos.validacionAdeudo(parames);
            if (resultado)
            {
                MessageBox.Show("El usuario no puede dar anticipo , Ya que cuenta con cuotas atrasadas");
            }
            else
            {
                if (servicio == 2)
                {
                    pnlMeses.Visible = true;
                    incializaMeses();
                    listaCuotasPag = new List<int>();
                    // Extrae meses con anticipo
                    prcAnticipos.consultaCuotasPagadas(listaCuotasPag, idLote);
                    validaMeses();
                }
                if (servicio == 3)
                {
                    prcAnticipos.consultaBancos(cmbBancoCheq);
                    prcAnticipos.consultaBancos(cmbBancoFicha);
                    groupCuota.Visible = true;
                    lblAntAgua.Visible = true;
                    txtTotalAgua.Visible = true;
                    lblDescuento.Visible = false;
                    txtDescuento.Visible = false;
                    btnAddCuota.Visible = true;
                    dgPartidasR.Columns[0].Width = 500;
                    dgPartidasR.Columns[2].Width = 304;

                    dgPartidasR.Columns[1].Visible = false;
                }
            }
        }

        private void btnApliCalculoAnt_Click(object sender, EventArgs e)
        {
           
            listaMeses = obtieneMeses();
            PrcAnticipos prcAnticipos= new PrcAnticipos();
            double importeTotal=prcAnticipos.generaCuotas(dgPartidasR, id_colono, idManzana, idLote, listaMeses);
            pnlMeses.Visible = false;
            groupCuota.Visible = true;
            txtImporte.Text = String.Format(CultureInfo.InvariantCulture,"{0:0,0.00}", importeTotal);
            txtDescuento.Text = "0.00";
            txtTotal.Text = String.Format(CultureInfo.InvariantCulture, "{0:0,0.00}", importeTotal);
            pagoTotal = importeTotal ;
            prcAnticipos.consultaBancos(cmbBancoCheq);
            prcAnticipos.consultaBancos(cmbBancoFicha);
            txtImpEf.Text = "0.00";
            txtImpChq.Text = "0.00";
            txtImpFicha.Text = "0.00";
            txtDescuento.Text = "0.00";

        }

        private void txtColono_KeyDown(object sender, KeyEventArgs e)
        {
            var BeanCProp = new Backend.Catalogos.CColonos();
            BeanCProp.buscaColonoDir(dgPropietario, txtColono.Text.ToString());
            dgPropietario.Visible = true;
            dgPropietario.BringToFront();
        }

        private void button3_Click(object sender, EventArgs e)
        {
            pnlMeses.Visible = false;
        }

        public void validaMeses()
        {

            DateTime fechaActual = DateTime.Now;
            int mes = fechaActual.Month;
            mes = mes + 1;
            foreach (CheckBox chk in groupBoxMeses.Controls)
            {
               
                    string nombre = chk.Name;
                    string subcadena1 = nombre.Substring(3, 2);
                    int mesNum = int.Parse(subcadena1);
                    if (mes > mesNum)
                        chk.Enabled = false;
                    else
                        chk.Enabled = true;

                    if (validaPeriodoAnticipo(mesNum))
                    {
                        chk.Enabled = false;
                        chk.BackColor = Color.LightBlue;
                    }
                    else {
                        chk.BackColor = Color.FloralWhite;
                    }                                  

            }

        }
        public Boolean validaPeriodoAnticipo(int periodo) {
            Boolean resultado = false;
            for (int i = 0; i < listaCuotasPag.Count(); i++)
            {
                if (periodo == listaCuotasPag[i])
                {
                    resultado = true;
                    break;
                }
            }
            return resultado;
        }

        private void btnCapturaPago_Click(object sender, EventArgs e)
        {
            Boolean resultado=false;
            PrcAnticipos prcAnticipos = new PrcAnticipos();

            double importeEfectivo = double.Parse(txtImpEf.Text);
            int bancoCheque = int.Parse(cmbBancoCheq.SelectedValue.ToString());
            double importeCheque = 0;
            if (txtImpChq.Text != "" && txtImpChq.Text != ".")
            {
                importeCheque = double.Parse(txtImpChq.Text);
            }
            int bancoFicha = int.Parse(cmbBancoFicha.SelectedValue.ToString());
            double importFicha = 0;
            if (txtImpFicha.Text != "" && txtImpFicha.Text != ".")
            {
                importFicha = double.Parse(txtImpFicha.Text);
            }
            double totalImporte = (importeEfectivo + importeCheque + importFicha);
            double descuento =0;


            if (txtDescuento.Text != "" && txtDescuento.Text != ".")
            {
                descuento = double.Parse(txtDescuento.Text);
            }

            if (pagoTotal == totalImporte)
            {
               
                
                    Object[] parames = { id_colono, idManzana, idLote, listaMeses, importeEfectivo, txtCheque.Text, bancoCheque, importeCheque, txtFicha.Text, bancoFicha, importFicha, descuento, servicio };
                    resultado = prcAnticipos.registroCuotas(parames, servicio);

            }
            else {
                if(totalImporte  > pagoTotal)
                    MessageBox.Show("!El importe es mayor que el total a pagar¡");
                else
                    MessageBox.Show("!El importe es  menor que el total a pagar¡");
            }
            if (resultado)
            {
                txtImpEf.Text    = "0.00";
                txtImpChq.Text   = "0.00";
                txtImpFicha.Text = "0.00";
                groupCuota.Visible = false;
                MessageBox.Show("!Se registro Correctamente el Pago¡");
            }

        }

        private void txtImpEf_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaNumeros(txtImpEf, sender,e);
        }

        public String obtieneMeses()
        {
            String meses = "";
            DateTime fechaActual = DateTime.Now;
            int mes = fechaActual.Month;
          
            List<String> listaMeses = new List<string>();
            foreach (CheckBox chk in groupBoxMeses.Controls)
            {
                string nombre = chk.Name;
                string subcadena1 = nombre.Substring(3, 2);
                int mesNum = int.Parse(subcadena1);
                if (chk.Checked)
                    listaMeses.Add(""+mesNum);

            }
            listaMeses = listaMeses.OrderBy(p =>int.Parse(p.ToString())).ToList();

            for (int i = 0; i < listaMeses.Count; i++)
            {               
                    meses += listaMeses[i].ToString();
                if (i+1 < listaMeses.Count)
                {
                    meses += ",";
                }
              }
            return meses;


        }

        private void txtImpChq_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaNumeros(txtImpChq, sender, e);
        }

        private void txtImpFicha_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaNumeros(txtImpFicha, sender, e);
        }

        private void frmAnticipoMto_Load(object sender, EventArgs e)
        {

            var BeanCLotesMza = new Backend.Catalogos.CManzanaLotes();
            BeanCLotesMza.consultaMazaCombo(cmbManzana);
        }

        private void txtLote_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((int)e.KeyChar == (int)Keys.Enter)
            {
                //aqui codigo
                BuscaIdLote();
               
               
            }
        }

        public void incializaMeses()
        {
            DateTime fechaActual = DateTime.Now;
            int mes = fechaActual.Month;

            foreach (CheckBox chk in groupBoxMeses.Controls)
            {
                chk.Checked = false;               
                
            }
        }

        private void txtDescuento_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaNumeros(txtDescuento, sender, e);
        }

 

        private void txtDescuento_KeyUp(object sender, KeyEventArgs e)
        {
            double importe = double.Parse(txtImporte.Text);
            double descuento = 0;
            if (txtDescuento.Text != "" && txtDescuento.Text != ".")
            {
                descuento = double.Parse(txtDescuento.Text);
            }
              
            double total = importe - descuento;
            txtTotal.Text = "" + total.ToString("N", CultureInfo.InvariantCulture);
            pagoTotal = total; 
        }

        private void txtDescuento_MouseClick(object sender, MouseEventArgs e)
        {
            txtDescuento.SelectAll();
        }

        private void btnAddCuota_Click(object sender, EventArgs e)
        {
            //lenamos nuestro grid con nuestro reader.
            if (Double.Parse(txtTotalAgua.Text) > 0)
            {
                int renglon = dgPartidasR.Rows.Add();

                //Servicio
                dgPartidasR.Rows[renglon].Cells[0].Value ="Anticipo de cuota de Agua";

                dgPartidasR.Columns[1].Visible = false;
                //Cuota
                String importe = String.Format(CultureInfo.InvariantCulture,
                                 "{0:0,0.0}", txtTotalAgua.Text);
                dgPartidasR.Rows[renglon].Cells[2].Value = "$ " + importe;

                pagoTotal  += Double.Parse(txtTotalAgua.Text);
                txtImporte.Text = String.Format(CultureInfo.InvariantCulture, "{0:0,0.00}", txtTotalAgua.Text);
                txtDescuento.Text = "0.00";
                txtTotal.Text = String.Format(CultureInfo.InvariantCulture, "{0:0,0.00}", txtTotalAgua.Text);

            }
        }

        public Boolean validaNumeros(TextBox txt, object sender, KeyPressEventArgs e) {
            if (txt.Text.Contains('.'))
            {
                
                if (!char.IsDigit(e.KeyChar))
                {
                    e.Handled = true;
                }

                if (e.KeyChar == '\b')
                {
                    e.Handled = false;
                }
            }
            else
            {
                if (!char.IsDigit(e.KeyChar))
                {
                    e.Handled = true;
                }

                if (e.KeyChar == '.' || e.KeyChar == '\b')
                {
                    e.Handled = false;
                }
            }
            return e.Handled;

        }

        #region Busca por lote
        public void BuscaIdLote()
        {
            //Al momento de dar enter en el lote manda los parametros de consulta
            Object[] parames = {
                2,//opcion 2 busca por id de manzana y nombre de lote
                Convert.ToInt32(cmbManzana.SelectedValue.ToString()),//id manzana
                txtLote.Text,//nombre de lote
                "",
            };

            var BeanCBeanManzana = new Backend.Procesos.PrcAnticipos();
            ResultadoTrnx resultado = new ResultadoTrnx();
            //ejecutamos el sp donde nos mostrara los siguientes datos como id del lote, nombre del colono, direccion, y superficie del lote
            resultado = BeanCBeanManzana.consultaLoteColonos(parames);
  

            if (resultado.idConoloDTO > 0) { 

                id_colono = resultado.idConoloDTO;
                lblColono.Text = resultado.conoloDTO;
                lblDireccion.Text = resultado.direccionDTO;
                idManzana = int.Parse(cmbManzana.SelectedValue.ToString());
                idLote = resultado.idLoteDTO;
                // String numeroRomano = utilities.numeroRomano(int.Parse(row.Cells[3].Value.ToString()));
                lblMzaLote.Text = "Manzana: " + cmbManzana.SelectedText + " Lote: " + txtLote.Text;
       
                dgPropietario.Visible = false;
                lblColono.Visible = true;
                txtColono.Text = "";
                txtLote.Text = "";
                groupDColono.Visible = true;
                btnCapturaR.Enabled = true;
                groupCuota.Visible = false;
                pnlMeses.Visible = false;
            }
          
        }
        #endregion


    }
}
