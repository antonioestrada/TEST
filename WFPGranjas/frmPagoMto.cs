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
    public partial class frmPagoMto : Form
    {
        int id_colono = 0,idManzana=0,idLote=0;
        String listaIDKardex;
    
        double pagoTotal = 0;
        Dictionary<int, Cuota> cuotas;
        Dictionary<int, String> cmbCuotas;
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
                                                  HeaderText = "id",
                                                  Width = 100
                                              },                                           
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "idServicio",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (double),
                                                  HeaderText = "impNumber",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "periodoNumber",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Servicio",
                                                  Width = 230
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Periodo",
                                                  Width = 130

                                              },
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Importe",
                                                  Width = 150

                                              },
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (String),
                                                  HeaderText = "Estatus",
                                                  Width = 110

                                              },
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (String),
                                                  HeaderText = "Tarifa",
                                                  Width = 190

                                              }

                                      });


            dgPartidasR.DefaultCellStyle.Font = new Font("Arial", 14F, GraphicsUnit.Pixel);
            dgPartidasR.RowHeadersVisible = false;
            dgPartidasR.Columns[0].Visible = false;
            dgPartidasR.Columns[1].Visible = false;
            dgPartidasR.Columns[2].Visible = false;
            dgPartidasR.Columns[3].Visible = false;
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
        public frmPagoMto()
        {
            InitializeComponent();
            definicionDGBuscaColono();
            definicionDGCuotas();
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

            }
        }

        private void btnCapturaR_Click(object sender, EventArgs e)
        {
            /* String sDate = DateTime.Now.ToString("dd/MM/yyyy") + " " + DateTime.Now.ToString("hh:mm:ss");
             String statTimeLong = (Convert.ToDateTime(sDate).ToUniversalTime() - new DateTime(1970, 1, 1, 0, 0, 0, DateTimeKind.Utc)).TotalMilliseconds.ToString();

             //   DateTime dt = Convert.ToDateTime(dateTime);
             DateTime dt = new DateTime(2014, 3, 14, 2, 30, 00, DateTimeKind.Unspecified);
             long fileCreationFileTime = dt.ToFileTime();
             MessageBox.Show(fileCreationFileTime+" - " +dt.ToLocalTime().ToString());*/
            pagoTotal = 0;
            Boolean resultado = false;
            PrcAnticipos prcAnticipos = new PrcAnticipos();
            Object[] parames = {  idLote };
            resultado = prcAnticipos.validacionAdeudo(parames);
            if (!resultado)
            {
                MessageBox.Show("El usuario no tiene cuotas atrasadas");
            }
            else
            {
                //pnlMeses.Visible = true;

                 Backend.Procesos.PrcPagoMto BeanCPagos = new Backend.Procesos.PrcPagoMto();
                cmbPeriodos.DataSource=null;
                cmbCuotas = new Dictionary<int, String>();
                cuotas = BeanCPagos.consultaAdeucoCuotas(cmbPeriodos, idLote,2, cmbCuotas);
                BeanCPagos = null;
                groupCuota.Visible = true;
                dgPartidasR.Rows.Clear();
                prcAnticipos.consultaBancos(cmbBancoCheq);
                prcAnticipos.consultaBancos(cmbBancoFicha);
            }
        }

        private void btnApliCalculoAnt_Click(object sender, EventArgs e)
        {
           
            listaIDKardex = obtieneIDKardex();
            PrcAnticipos prcAnticipos= new PrcAnticipos();
            double importeTotal=prcAnticipos.generaCuotas(dgPartidasR, id_colono, idManzana, idLote, listaIDKardex);
         
            groupCuota.Visible = true;
            txtImporte.Text = String.Format(CultureInfo.InvariantCulture,"{0:0,0.00}", importeTotal);
            txtMultas.Text = "0.00";
            txtTotal.Text = String.Format(CultureInfo.InvariantCulture, "{0:0,0.00}", importeTotal);
            pagoTotal = importeTotal ;
            prcAnticipos.consultaBancos(cmbBancoCheq);
            prcAnticipos.consultaBancos(cmbBancoFicha);
            txtImpEf.Text = "0.00";
            txtImpChq.Text = "0.00";
            txtImpFicha.Text = "0.00";
            txtMultas.Text = "0.00";

        }

        private void txtColono_KeyDown(object sender, KeyEventArgs e)
        {
            var BeanCProp = new Backend.Catalogos.CColonos();
            BeanCProp.buscaColonoDir(dgPropietario, txtColono.Text.ToString());
            dgPropietario.Visible = true;
            dgPropietario.BringToFront();
        }

     
      
        public Boolean validaPeriodoAnticipo(int periodo) {
            Boolean resultado = false;
            for (int i = 0; i < listaIDKardex.Count(); i++)
            {
                if (periodo == listaIDKardex[i])
                {
                    resultado = true;
                    break;
                }
            }
            return resultado;
        }

        private void btnCapturaPago_Click(object sender, EventArgs e)
        {


            listaIDKardex = obtieneIDKardex();

            Boolean resultado=false;
            PrcPagoMto prcPago = new PrcPagoMto();

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
             double multas = 0;
            if (txtMultas.Text != "" && txtMultas.Text != ".")
            {
                multas = double.Parse(txtMultas.Text);
            }
            double totalImporte = (importeEfectivo + importeCheque + importFicha) ;
           

            if (pagoTotal == totalImporte)
            {
                Object[] parames = { listaIDKardex, idLote, 2, importeEfectivo, txtCheque.Text, bancoCheque, importeCheque, txtFicha.Text, bancoFicha, importFicha, multas };
                resultado = prcPago.registroCuotas(parames);
            }
            else {
                if(totalImporte  > pagoTotal)
                    MessageBox.Show("!El importe es mayor que el total a pagar¡");
                else
                    MessageBox.Show("!El importe es  menor que el total a pagar¡");
            }
            if (resultado)
            {
                txtImpEf.Text       = "0.00";
                txtImpChq.Text      = "0.00";
                txtImpFicha.Text    = "0.00";
                txtImporte.Text     = "0.00";
                txtTotal.Text       = "0.00";
                txtMultas.Text      = "0.00";
                groupCuota.Visible = false;
                MessageBox.Show("!Se registro Correctamente el Pago¡");
            }
            
        }

        private void txtImpEf_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaNumeros(txtImpEf, sender,e);
        }

        public String obtieneIDKardex()
        {
            String IDKdx = "";
            DateTime fechaActual = DateTime.Now;
            int mes = fechaActual.Month;
          
            List<String> listaID = new List<string>();
            foreach (DataGridViewRow row in dgPartidasR.Rows)
            {
                string nombre =row.Cells[0].Value.ToString();
             
                    listaID.Add(""+ nombre);

            }
            listaID = listaID.OrderBy(p =>int.Parse(p.ToString())).ToList();

            for (int i = 0; i < listaID.Count; i++)
            {               
                    IDKdx += listaID[i].ToString();
                if (i+1 < listaID.Count)
                {
                    IDKdx += ",";
                }
              }
            return IDKdx;


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

        private void txtDescuento_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaNumeros(txtMultas, sender, e);
        }

 

        private void txtDescuento_KeyUp(object sender, KeyEventArgs e)
        {
            double importe = 0;
            if (txtImporte.Text != "") 
                importe = double.Parse(txtImporte.Text);

            double multa = 0;
            if (txtMultas.Text != "" && txtMultas.Text != ".")
            {
                multa = double.Parse(txtMultas.Text);
            }
              
            double total = importe + multa;
            txtTotal.Text = "" + total.ToString("N", CultureInfo.InvariantCulture);
            pagoTotal = total; 
        }

        private void txtDescuento_MouseClick(object sender, MouseEventArgs e)
        {
            txtMultas.SelectAll();
        }

        private void btnAddCuota_Click(object sender, EventArgs e)
        {
            //lenamos nuestro grid con nuestro reader.
            if (cmbPeriodos.Items.Count > 0)
            {

                int renglon = dgPartidasR.Rows.Add();
                //id
                dgPartidasR.Rows[renglon].Cells[0].Value = cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].id;
                //idServicio
                dgPartidasR.Rows[renglon].Cells[1].Value = cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].idServicio;
                //Cuota
                String importe = String.Format(CultureInfo.InvariantCulture,
                                 "{0:0,0.0}", cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].importe.ToString());
                dgPartidasR.Rows[renglon].Cells[2].Value = cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].importe;

                dgPartidasR.Rows[renglon].Cells[3].Value = cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].idPeriodo;
                dgPartidasR.Rows[renglon].Cells[4].Value = cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].servicio;
                dgPartidasR.Rows[renglon].Cells[5].Value = cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].periodo;
                dgPartidasR.Rows[renglon].Cells[6].Value = "$ " + importe;
                dgPartidasR.Rows[renglon].Cells[7].Value = cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].estatus;
                dgPartidasR.Rows[renglon].Cells[8].Value = cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].tarifa;

                pagoTotal += double.Parse(cuotas[int.Parse(cmbPeriodos.SelectedValue.ToString())].importe.ToString());

                cmbCuotas.Remove(int.Parse(cmbPeriodos.SelectedValue.ToString()));
                cmbPeriodos.DataSource = null;


                var ab = from a in cmbCuotas
                         orderby a.Key
                         select a;

                cmbPeriodos.DataSource = ab.ToList();
                cmbPeriodos.DisplayMember = "value";
                cmbPeriodos.ValueMember = "Key";

                                 importe = String.Format(CultureInfo.InvariantCulture,
                               "{0:0,0.0}", pagoTotal);

                txtImporte.Text = importe;
                txtTotal.Text = importe;
            }
            else {
                MessageBox.Show("No existen mas cuotas por saldar");
            }
           // cmbPeriodos.Items.RemoveAt(cmbPeriodos.SelectedIndex);
            ///importeTotal += Double.Parse(reader.GetValue(2).ToString());
        }

        private void btnAddCuota_MouseUp(object sender, MouseEventArgs e)
        {
           
        }

        private void btnAddCuota_MouseDown(object sender, MouseEventArgs e)
        {
           
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
      
            }
          
        }
        #endregion


    }
}
