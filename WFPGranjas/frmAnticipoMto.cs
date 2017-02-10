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
        String listaMeses, anual=null, fechaActual=null;
        Dictionary<int, Conceptos> cuotas;
        Dictionary<int, String> cmbCuotas;
        List<string> listaCuotasPag;
        double pagoTotal = 0;
        int servicio = 0,servicio_ini=0;
        Boolean esAnual=false;
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
                        if (id_colono == 0)
                            servicio = 7;
                        else
                            servicio = servicio_ini;
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
        public frmAnticipoMto(int servicio, Boolean esAnual)
        {
            InitializeComponent();
            definicionDGBuscaColono();
            definicionDGCuotas();
            this.servicio = servicio;
            this.servicio_ini = servicio;
            this.esAnual = esAnual;
            if (esAnual)
                anual = "Anual";
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
                gbDRecibo.Visible = true;
                pnlMeses.Visible = false;
                pagoTotal = 0;
                DateTime thisDay = DateTime.Today;
                lblFechaSys.Text = thisDay.ToString("D");
                btnCapturaR.Focus();
            }
        }

        private void btnCapturaR_Click(object sender, EventArgs e)
        {

            Boolean resultado = false;
            txtTotalAgua.Enabled = true;
            pagoTotal = 0;
            PrcAnticipos prcAnticipos = new PrcAnticipos();
            Object[] parames = { idLote, servicio };
            resultado = prcAnticipos.validacionAdeudo(parames);
            if (resultado && servicio != 5 )
            {
                MessageBox.Show("El usuario no puede dar anticipo. Cuenta con cuotas atrasadas");
                txtColono.Focus();
            }
            else
            {
                if (servicio == 2)
                {
                    pnlMeses.Visible = true;
                    incializaMeses();
                    listaCuotasPag = new List<string>();
                    // Extrae meses con anticipo
                    prcAnticipos.consultaCuotasPagadas(listaCuotasPag, idLote);
                    int periodoActualBD = prcAnticipos.obtienePeriodoActual();
                    fechaActual = prcAnticipos.obtieneFechaActual();
                    if (esAnual) {
                        pnlMeses.Width = 260;
                        groupBoxMeses.Visible = true;
                        lblPerIni.Visible = false;
                        lblPerFin.Visible = false;

                        pnlMeses.Location = new Point(245, 165);
                      
                        if (periodoActualBD==12 || periodoActualBD==1)
                            validaAnualidad(periodoActualBD);
                        else
                        {
                            pnlMeses.Visible = false;
                            MessageBox.Show("No se puede realizar el atincipo anual porque esta fuera del periodo activo");

                        }

                    }
                    else
                    {
                        groupBoxMeses.Visible = false;
                        lblPerIni.Location = new Point(5, 52);
                        lblPerFin.Location = new Point(5, 102);
                        dtIniAnt.Location = new Point(110, 52);
                        dtFinAnt.Location = new Point(110, 102);
                        pnlMeses.Width = 260;
                        pnlMeses.Location = new Point(245, 165);
                        // dtIniAnt.MinDate = fechaPeriodo;

                        DateTime fechaPeriodo = DateTime.Parse(fechaActual);
                        dtIniAnt.MinDate =  fechaPeriodo.AddMonths(1);
                        dtFinAnt.MinDate = fechaPeriodo. AddMonths(1);
                        dtIniAnt.Value = fechaPeriodo.AddMonths(1);
                        validaMeses(periodoActualBD);
                      
                    }
                }
                if (servicio == 3)
                {
                    txtTotalAgua.Focus();
                    prcAnticipos.consultaBancos(cmbBancoCheq);
                    prcAnticipos.consultaBancos(cmbBancoFicha);
                    groupCuota.Visible = true;
                    lblAntAgua.Visible = false;
                    txtTotalAgua.Visible = true;
                    lblDescuento.Visible = false;
                    txtDescuento.Visible = false;
                    btnAddCuota.Visible = true;
                    dgPartidasR.Columns[0].Width = 500;
                    dgPartidasR.Columns[2].Width = 304;
                    dgPartidasR.Columns[1].Visible = false;
                    btnAddCuota.Enabled = true;
                    txtTotalAgua.Focus();
                    txtTotalAgua.SelectAll();
                    //code tonka 19-10-16
                    txtImpEf.Text = "0.00";
                    txtImpChq.Text = "0.00";
                    txtImpFicha.Text = "0.00";
                    txtFicha.Text = "";
                    txtCheque.Text = "";
                    txtTotalAgua.Text = "0.00";
                    txtImporte.Text = "0.00";
                    txtTotal.Text = "0.00";
                    txtDescuento.Text = "0.00";
                    pnlMetodoPago.Visible = false;
                    dgPartidasR.Rows.Clear();
                }
              
            }

            if (servicio == 5 || servicio==7)
            {
                
                groupCuota.Size = new Size(826, 390);
                panelCapturaTop.Size = new Size(820, 54);
                lblConcepto.Visible = true;
               
                cmbCCPadre.Visible = false;
                cmbCCHijo.Visible = false;
                txtConcepto.Visible = false;
                cmbCCHijo.Location = new System.Drawing.Point(102, 48);
                cmbCCPadre.Location = new System.Drawing.Point(102, 28);
                txtTotalAgua.Focus();
                prcAnticipos.consultaBancos(cmbBancoCheq);
                prcAnticipos.consultaBancos(cmbBancoFicha);
                groupCuota.Visible = true;
                lblAntAgua.Visible = true;
                lblAntAgua.Text = "Importe del Servicio :";
                txtTotalAgua.Visible = false;
                lblDescuento.Visible = false;
                txtDescuento.Visible = false;
                btnAddCuota.Visible = true;
                dgPartidasR.Columns[0].Width = 300;
                dgPartidasR.Columns[0].HeaderText = "Concepto";
                dgPartidasR.Columns[1].Width = 354;
                dgPartidasR.Columns[1].HeaderText = "Referencia";
                dgPartidasR.Columns[2].Width = 158;
               
                dgPartidasR.Columns[1].Visible = true;
                btnAddCuota.Enabled = true;
                txtTotalAgua.Focus();
                txtTotalAgua.SelectAll();
                //code tonka 19-10-16
                txtImpEf.Text = "0.00";
                txtImpChq.Text = "0.00";
                txtImpFicha.Text = "0.00";
                txtFicha.Text = "";
                txtCheque.Text = "";
                txtTotalAgua.Text = "0.00";
                txtImporte.Text = "0.00";
                txtTotal.Text = "0.00";
                txtDescuento.Text = "0.00";
                pnlMetodoPago.Visible = false;
                dgPartidasR.Rows.Clear();
                cmbPeriodos.Visible = true;
                lblAntAgua.Visible = false;
                cmbCuotas = new Dictionary<int, String>();
                panelCapturaTop.Height = 68;
                lblDescripcion.Visible = false;
                 cuotas = prcAnticipos.consultaConceptos(cmbPeriodos,  cmbCuotas);

            }
        }

        private void btnApliCalculoAnt_Click(object sender, EventArgs e)
        {

            if (!esAnual)
            {
                int ts = DateTime.Compare(dtIniAnt.Value, dtFinAnt.Value);
                //MessageBox.Show("¡"+ts);

                if (ts <= 0)
                {
                    //if (ts == 1)
                    //    listaMeses = dtIniAnt.Value.ToString("MM", CultureInfo.CreateSpecificCulture("en-US"));
                    //else
                        listaMeses = obtieneMesesNuevo();
                    PrcAnticipos prcAnticipos = new PrcAnticipos();
                    double importeTotal = prcAnticipos.generaCuotas(dgPartidasR, listaCuotasPag, listaMeses, id_colono, idManzana, idLote, listaMeses, esAnual);
                    pnlMeses.Visible = false;
                    groupCuota.Visible = true;
                    txtImporte.Text = String.Format(CultureInfo.InvariantCulture, "{0:0,0.00}", importeTotal);
                    txtDescuento.Text = "0.00";
                    txtTotal.Text = String.Format(CultureInfo.InvariantCulture, "{0:0,0.00}", importeTotal);
                    pagoTotal = importeTotal;
                    prcAnticipos.consultaBancos(cmbBancoCheq);
                    prcAnticipos.consultaBancos(cmbBancoFicha);
                    txtImpEf.Text = "0.00";
                    txtImpChq.Text = "0.00";
                    txtImpFicha.Text = "0.00";
                    txtDescuento.Text = "0.00";
                    //tom modificacion
                    pnlMetodoPago.Visible = true;
                    dgPartidasR.ClearSelection();
                    txtImpEf.Focus();
                }
                else
                {
                    MessageBox.Show("¡El periodo inicial debe de ser mayor o igual que el periodo final!");
                }
            }
            if (esAnual)
            {

                listaMeses = obtieneMeses();

                PrcAnticipos prcAnticipos = new PrcAnticipos();
                double importeTotal = prcAnticipos.generaCuotas(dgPartidasR, listaCuotasPag, listaMeses,  id_colono, idManzana, idLote, listaMeses, esAnual);
                pnlMeses.Visible = false;
                groupCuota.Visible = true;
                txtImporte.Text = String.Format(CultureInfo.InvariantCulture, "{0:0,0.00}", importeTotal);
                txtDescuento.Text = "0.00";
                
                pagoTotal = importeTotal;
                prcAnticipos.consultaBancos(cmbBancoCheq);
                prcAnticipos.consultaBancos(cmbBancoFicha);
                txtImpEf.Text = "0.00";
                txtImpChq.Text = "0.00";
                txtImpFicha.Text = "0.00";
                Object[] parames = { pagoTotal };
                double descuento = prcAnticipos.calculaDescuento(parames);
                txtDescuento.Text = ""+descuento;
                pagoTotal = importeTotal - descuento;
                txtTotal.Text = String.Format(CultureInfo.InvariantCulture, "{0:0,0.00}", pagoTotal);
                //tom modificacion
                pnlMetodoPago.Visible = true;
                dgPartidasR.ClearSelection();
                txtImpEf.Focus();
            }
            /*

         listaMeses = obtieneMeses();
         if (listaMeses == "" || listaMeses == null)
         {
             MessageBox.Show("¡Selecciona al menos un mes de mantenimiento a anticipar!");
         }
         else
         {
             PrcAnticipos prcAnticipos = new PrcAnticipos();
             double importeTotal = prcAnticipos.generaCuotas(dgPartidasR, id_colono, idManzana, idLote, listaMeses,esAnual);
             pnlMeses.Visible = false;
             groupCuota.Visible = true;
             txtImporte.Text = String.Format(CultureInfo.InvariantCulture, "{0:0,0.00}", importeTotal);
             txtDescuento.Text = "0.00";
             txtTotal.Text = String.Format(CultureInfo.InvariantCulture, "{0:0,0.00}", importeTotal);
             pagoTotal = importeTotal;
             prcAnticipos.consultaBancos(cmbBancoCheq);
             prcAnticipos.consultaBancos(cmbBancoFicha);
             txtImpEf.Text = "0.00";
             txtImpChq.Text = "0.00";
             txtImpFicha.Text = "0.00";
             txtDescuento.Text = "0.00";
             //tom modificacion
             pnlMetodoPago.Visible = true;
             dgPartidasR.ClearSelection();
             txtImpEf.Focus();
         }*/
        }

        private void txtColono_KeyDown(object sender, KeyEventArgs e)
        {
            var BeanCProp = new Backend.Catalogos.CColonos();
            BeanCProp.buscaColonoDir(dgPropietario, txtColono.Text.ToString());
            dgPropietario.Visible = true;
            dgPropietario.BringToFront();
            //code tonka 19-10-2016
            if ((int)e.KeyValue == (int)Keys.Enter)
            {
                //aqui codigo
                int retornoB = compruebaPropietario(dgPropietario);
                if (retornoB == 1)
                {
                    dgPropietario.Visible = false;
                    lblColono.Visible = true;
                    txtColono.Text = "";
                    groupDColono.Visible = true;
                    DateTime thisDay = DateTime.Today;
                    lblFechaSys.Text = thisDay.ToString("D");
                    gbDRecibo.Visible = true;
                    btnCapturaR.Enabled = true;
                    groupCuota.Visible = false;
                    btnCapturaR.Focus();
                }
                //code tonka 18/10/2016
                else
                {
                    txtColono.Text = "";
                    txtLote.Text = "";
                    groupDColono.Visible = false;
                    groupCuota.Visible = false;
                    gbDRecibo.Visible = false;
                    pnlMeses.Visible = false;
                    dgPropietario.Visible = false;
                    MessageBox.Show("El Colono no se encuentra registrado. Por favor intente nuevamente.");
                }
            }
        }

        private void button3_Click(object sender, EventArgs e)
        {
            pnlMeses.Visible = false;
        }

        public void validaMeses( int periodoActualBD)
        {

            DateTime fechaActual = DateTime.Now;
            int mes = periodoActualBD;
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

                    if (validaPeriodoAnticipo(null))
                    {
                        chk.Enabled = false;
                        chk.BackColor = Color.LightBlue;
                    }
                    else {
                        chk.BackColor = Color.FloralWhite;
                    }                                  

            }

        }

        public void validaAnualidad(int periodoActualBD)
        {

            DateTime fechaActual = DateTime.Now;
            int mes = periodoActualBD;
            mes = mes + 1;
            foreach (CheckBox chk in groupBoxMeses.Controls)
            {

                string nombre = chk.Name;
                string subcadena1 = nombre.Substring(3, 2);
                int mesNum = int.Parse(subcadena1);
                chk.Checked = true;
                chk.Enabled = false;
                chk.BackColor = Color.FloralWhite;
             

            }
            
        }
        public Boolean validaPeriodoAnticipo(string fechaAnticipo) {
            Boolean resultado = false;
            for (int i = 0; i < listaCuotasPag.Count(); i++)
            {
                if (fechaAnticipo == listaCuotasPag[i])
                {
                    resultado = true;
                    break;
                }
            }
            return resultado;
        }

        private void btnCapturaPago_Click_1(object sender, EventArgs e)
        {
            if (pagoTotal == 0)
            {
                MessageBox.Show("¡No hay cuota por anticipar!");
                return;
            }
            Int32 resultado=0;
            PrcAnticipos prcAnticipos = new PrcAnticipos();
            int opReporte = 0;
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
                string cuenta_contable = cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].cuenta_contable;
                if (cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].id == 99)
                {
                    cuenta_contable = txtConcepto.Text;
                }
                

                Object[] paramesCasaClub = { idLote, importeEfectivo, txtCheque.Text, bancoCheque, importeCheque, txtFicha.Text, bancoFicha, importFicha, servicio, cuenta_contable, cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].id };

                Object[] parames = { id_colono, idManzana, idLote, listaMeses, importeEfectivo, txtCheque.Text, bancoCheque, importeCheque, txtFicha.Text, bancoFicha, importFicha, descuento, servicio, anual };

                if (servicio == 5 || servicio==7)
                {
                    resultado = prcAnticipos.registroCuotas(paramesCasaClub, servicio);
                }
                else
                {
                    resultado = prcAnticipos.registroCuotas(parames, servicio);
                    if (servicio == 2)
                        opReporte = 1;//anticipo mantenimiento
                    if (servicio == 3)
                        opReporte = 7;//anticipo agua
                }
            }
            else
            {
                if (totalImporte > pagoTotal)
                    MessageBox.Show("¡El importe es mayor que el total a pagar!");
                else
                    MessageBox.Show("¡El importe es  menor que el total a pagar!");
            }
            if (resultado>0)
            {
                txtImpEf.Text    = "0.00";
                txtImpChq.Text   = "0.00";
                txtImpFicha.Text = "0.00";
                txtFicha.Text = "";
                txtCheque.Text = "";
                txtTotalAgua.Text = "0.00";
                txtImporte.Text = "0.00";
                txtTotal.Text = "0.00";
                txtDescuento.Text = "0.00";
                pnlMetodoPago.Visible = false;
                dgPartidasR.Rows.Clear();
                groupCuota.Visible = false;
                MessageBox.Show("¡Se registro Correctamente el Pago!");
                rptReciboAgua BeanRPTMedidor = new rptReciboAgua("" + idLote, "" + resultado, opReporte);
                BeanRPTMedidor.Show();
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

        public static decimal MonthDifference(DateTime FechaFin, DateTime FechaInicio)
        {
            return Math.Abs((FechaFin.Month - FechaInicio.Month) + 12 * (FechaFin.Year - FechaInicio.Year));

        }


        public String obtieneMesesNuevo()
        {
            String meses = "";
            DateTime fechaActual = DateTime.Now;
            int mes = fechaActual.Month;

            List<String> listaMeses = new List<string>();
            TimeSpan ts = dtIniAnt.Value - dtFinAnt.Value;
            TimeSpan difference = dtFinAnt.Value.Subtract(dtIniAnt.Value);
            DateTime totalDate = DateTime.MinValue + difference;
            int differenceInMonths = 0;
            if (dtIniAnt.Value == dtFinAnt.Value)
                differenceInMonths = totalDate.Month;
            else
                differenceInMonths = totalDate.Month + 1;
            decimal diferenciaMeses = MonthDifference(dtIniAnt.Value, dtFinAnt.Value);

            for (int i = 0; i <= diferenciaMeses; i++)
            {
                DateTime miDato = Convert.ToDateTime(dtIniAnt.Value.ToString("MM-yyyy",
                        CultureInfo.CreateSpecificCulture("en-US"))+
                        "-01");
                DateTime fechaMes = miDato.AddMonths(i);
                int mesNum = int.Parse(fechaMes.ToString("MM",
                        CultureInfo.CreateSpecificCulture("en-US")));
                string fecha =(fechaMes.ToString("yyyy-MM-dd",
                         CultureInfo.CreateSpecificCulture("en-US")));
                    listaMeses.Add("" + fecha);
             
               
            }

         
            listaMeses = listaMeses.OrderBy(p => (p.ToString())).ToList();

            for (int i = 0; i < listaMeses.Count; i++)
            {
                meses += listaMeses[i].ToString();
                if (i + 1 < listaMeses.Count)
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
            DateTime thisDay = DateTime.Today;
            lblFechaSys.Text = thisDay.ToString("D");
            if (servicio == 2)
            {
                panelTop.BackColor = Color.MediumSeaGreen;
            }
            else if (servicio == 3)
            {
                panelTop.BackColor = Color.SteelBlue;
            }
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
            string mensaje = "monto a anticipar";
            if (servicio == 5)
            {
                mensaje = "Monto del servicio";
            }

            if (txtTotalAgua.Text == "" || txtTotalAgua.Text == null )
            {
               
                MessageBox.Show("¡Ingresa el "+ mensaje + "!");
                txtTotalAgua.Focus();
                txtImpEf.SelectAll();
            }else
            if (servicio == 5 && (int.Parse(cmbPeriodos.SelectedValue.ToString()) == 0 || (cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].id == 99  && txtConcepto.Text == "") ))
            {
                mensaje = "monto del servicio";
                if (int.Parse(cmbPeriodos.SelectedValue.ToString()) == 0)
                {
                    MessageBox.Show("¡Ingresa el concepto del servicio!");
                }
               
                if (cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].id == 99 &&  txtConcepto.Text=="")
                {
                    MessageBox.Show("¡Ingresa la descipcion del concepto del servicio!");
                }

            }
            else
            {
                //lenamos nuestro grid con nuestro reader.
                txtTotalAgua.Enabled = true;
                if (Double.Parse(txtTotalAgua.Text) > 0)
                {
                    int renglon = dgPartidasR.Rows.Add();
                    //Cuota
                    String importe = String.Format(CultureInfo.InvariantCulture,
                                     "{0:0,0.0}", txtTotalAgua.Text);
                    dgPartidasR.Rows[renglon].Cells[2].Value = "$ " + importe;

                    pagoTotal += Double.Parse(txtTotalAgua.Text);


                    //Servicio
                    if (servicio == 3)
                    {
                        dgPartidasR.Rows[renglon].Cells[0].Value = "Anticipo de cuota de Agua";
                        dgPartidasR.Columns[1].Visible = false;
                        pnlMetodoPago.Visible = true;
                    }
                    if (servicio == 5 || servicio == 7)
                    {
                        dgPartidasR.Rows[renglon].Cells[0].Value = "" +cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].descripcion;
                        dgPartidasR.Columns[1].Visible = true;
                        dgPartidasR.Rows[renglon].Cells[1].Value ="" + cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].cuenta_contable;
                        //stxtConcepto.Text = "";
                        pnlMetodoPago.Visible = false;
                        //tonka
                        txtDescuento.Visible = false;
                        if (servicio == 7) {
                            pnlMetodoPago.Visible = true;
                            btnGuardaCuota.Visible = false;
                        }
                        else
                        {
                            pnlMetodoPago.Visible = false;
                            btnGuardaCuota.Visible = true;

                        }


                    }
                    txtImporte.Text = String.Format(CultureInfo.InvariantCulture, "{0:0,0.00}", txtTotalAgua.Text);
                    txtDescuento.Text = "0.00";
                    txtTotal.Text = String.Format(CultureInfo.InvariantCulture, "{0:0,0.00}", pagoTotal);
                    txtTotalAgua.Text = "0.00";
                    //tonka
                    btnAddCuota.Enabled = false;
                    txtImpEf.Focus();
                    txtImpEf.SelectAll();
                }
                else
                {
                    if (servicio == 5 && int.Parse(cmbPeriodos.SelectedValue.ToString()) == 99)
                        txtTotalAgua.Enabled = true;
                    MessageBox.Show("El "+ mensaje + " debe ser mayor a cero.");
                    txtTotalAgua.Focus();
                }
              
            }
        }

        private void txtImpFicha_TextChanged(object sender, EventArgs e)
        {

        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            BuscaIdLote();
        }

        private void txtTotalAgua_MouseClick(object sender, MouseEventArgs e)
        {
            txtTotalAgua.SelectAll();
        }

        private void txtCheque_MouseClick(object sender, MouseEventArgs e)
        {
            txtCheque.SelectAll();
        }

        private void txtFicha_MouseClick(object sender, MouseEventArgs e)
        {
            txtFicha.SelectAll();
        }

        private void txtImpChq_MouseClick(object sender, MouseEventArgs e)
        {
            txtImpChq.SelectAll();
        }

        private void txtImpFicha_MouseClick(object sender, MouseEventArgs e)
        {
            txtImpFicha.SelectAll();
        }

        private void txtImpEf_MouseClick(object sender, MouseEventArgs e)
        {
            txtImpFicha.SelectAll();
        }


        private void txtTotalAgua_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaNumeros(txtTotalAgua, sender, e);
        }

        private void txtImpChq_KeyPress_1(object sender, KeyPressEventArgs e)
        {
            validaNumeros(txtImpChq, sender, e);
        }

        private void txtImpFicha_KeyPress_1(object sender, KeyPressEventArgs e)
        {
            validaNumeros(txtImpFicha, sender, e);
        }
        //AQUI ES PARA GUARDAR CUOTA DE SERVICIOS CASA CLUB
        private void button1_Click(object sender, EventArgs e)
        {
            int  resultado = 0;
            PrcAnticipos prcAnticipos = new PrcAnticipos();

            double importeEfectivo = double.Parse(txtImporte.Text);
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
            double descuento = 0;


            if (txtDescuento.Text != "" && txtDescuento.Text != ".")
            {
                descuento = double.Parse(txtDescuento.Text);
            }

            if (pagoTotal == totalImporte)
            {
                string cuenta_contable = cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].cuenta_contable;
                if (cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].id == 99) {
                    cuenta_contable = txtConcepto.Text;
                }
                
                Object[] paramesCasaClub = { idLote, importeEfectivo, txtCheque.Text, bancoCheque, importeCheque, txtFicha.Text, bancoFicha, importFicha, servicio, cuenta_contable, cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].id };

                Object[] parames = { id_colono, idManzana, idLote, listaMeses, importeEfectivo, txtCheque.Text, bancoCheque, importeCheque, txtFicha.Text, bancoFicha, importFicha, descuento, servicio, anual };

                if (servicio == 5)
                    resultado = prcAnticipos.registroCuotas(paramesCasaClub, servicio);
                else
                    resultado = prcAnticipos.registroCuotas(parames, servicio);

            }
            else
            {
                if (totalImporte > pagoTotal)
                    MessageBox.Show("¡El importe es mayor que el total a pagar!");
                else
                    MessageBox.Show("¡El importe es  menor que el total a pagar!");
            }
            if (resultado>0)
            {
                txtImpEf.Text = "0.00";
                txtImpChq.Text = "0.00";
                txtImpFicha.Text = "0.00";
                txtFicha.Text = "";
                txtCheque.Text = "";
                txtTotalAgua.Text = "0.00";
                txtImporte.Text = "0.00";
                txtTotal.Text = "0.00";
                txtDescuento.Text = "0.00";
                pnlMetodoPago.Visible = false;
                dgPartidasR.Rows.Clear();
                groupCuota.Visible = false;
                MessageBox.Show("¡Se registro Correctamente la transaccion!");
            }

        }

        private void dtFinAnt_Validating(object sender, CancelEventArgs e)
        {
           
        }

        private void dtIniAnt_ValueChanged(object sender, EventArgs e)
        {

        }

        private void cmbPeriodos_SelectedValueChanged(object sender, EventArgs e)
        {
           
        }

        private void cmbPeriodos_SelectionChangeCommitted(object sender, EventArgs e)
        {
            if (cmbPeriodos.Items.Count > 0)
            {
                if (int.Parse(cmbPeriodos.SelectedValue.ToString()) > 0)
                {
                    lblAntAgua.Visible = true;
                    double monto = cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].importe;
                    String importe = String.Format(CultureInfo.InvariantCulture, "{0:0,0.0}", monto);
                    txtTotalAgua.Text = ""+monto;
                    txtTotalAgua.Visible = true;
                    txtTotalAgua.Enabled = false;
                    txtConcepto.Visible = false;
                    lblDescripcion.Visible = false;
                    if (cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].id == 99)
                    {
                        txtTotalAgua.Enabled = true;
                        txtConcepto.Visible = true;
                        lblDescripcion.Visible = true;
                        txtConcepto.Location = new System.Drawing.Point(115, 40);
                        lblDescripcion.Location = new System.Drawing.Point(35, 40);
                    }
                }
                else {

                    txtTotalAgua.Text = "" ;
                    txtTotalAgua.Visible = false;
                    lblAntAgua.Visible = false;
                    txtConcepto.Visible = false;
                    lblDescripcion.Visible = false;
                }
            }
        }

        private void dtIniAnt_Validating(object sender, CancelEventArgs e)
        {
           
        }

        private void txtImpEf_KeyPress_1(object sender, KeyPressEventArgs e)
        {
            validaNumeros(txtImpEf, sender, e);
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
                // lblMzaLote.Text = "Manzana: " + cmbManzana.SelectedText + " Lote: " + txtLote.Text;
                lblMzaLote.Text = resultado.direccionDTO;
                dgPropietario.Visible = false;
                lblColono.Visible = true;
                txtColono.Text = "";
                txtLote.Text = "";
                groupDColono.Visible = true;
                btnCapturaR.Enabled = true;
                groupCuota.Visible = false;
                pnlMeses.Visible = false;
                gbDRecibo.Visible = true;
                btnCapturaR.Focus();
            } 
            //code tonka 18/10/2016
            else
            {
                txtColono.Text = "";
                txtLote.Text = "";
                groupDColono.Visible = false;
                groupCuota.Visible = false;
                gbDRecibo.Visible = false;
                pnlMeses.Visible = false;
                MessageBox.Show("El Lote no se encuentra registrado. Por favor intente nuevamente.");
            }

        }
        #endregion


    }
}
