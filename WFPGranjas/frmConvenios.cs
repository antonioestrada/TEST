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
    public partial class frmConvenios : Form
    {
        int id_colono = 0,idManzana=0,idLote=0;
        double adeudoAgua = 0;
        double adeudoMto = 0;
        double adeudoExt = 0;
        double adeudoClub = 0;
        double totalAdeudo = 0;
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

            dgAdeMto.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgPropietario, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgAdeMto.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Servicio",
                                                  Width = 80
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Periodo",
                                                  Width = 65

                                              },
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Importe",
                                                  Width = 80

                                              }

                                      });


            dgAdeMto.DefaultCellStyle.Font = new Font("Arial", 14F, GraphicsUnit.Pixel);
            dgAdeMto.RowHeadersVisible = false;
            //dgLotes.Columns[1].Visible = false;
            //dgLotes.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            //dgLotes.Columns[4].DefaultCellStyle.Format = "##,##0.0000";

        }
        #endregion

        #region Definicion de Estructura de Columnas DataGridView  Agua
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGCuotasAgua()
        {

            dgAdeAgua.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgPropietario, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgAdeAgua.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Servicio",
                                                  Width = 80
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Periodo",
                                                  Width = 65

                                              },
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Importe",
                                                  Width = 80

                                              }

                                      });


            dgAdeAgua.DefaultCellStyle.Font = new Font("Arial", 14F, GraphicsUnit.Pixel);
            dgAdeAgua.RowHeadersVisible = false;
            //dgLotes.Columns[1].Visible = false;
            //dgLotes.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            //dgLotes.Columns[4].DefaultCellStyle.Format = "##,##0.0000";

        }
        #endregion

        #region Definicion de Estructura de Columnas DataGridView  Extra
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGCuotasExtra()
        {

            dgAdeExt.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgPropietario, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgAdeExt.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Servicio",
                                                  Width = 80
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Periodo",
                                                  Width = 60

                                              },
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Importe",
                                                  Width = 80

                                              }

                                      });


            dgAdeExt.DefaultCellStyle.Font = new Font("Arial", 14F, GraphicsUnit.Pixel);
            dgAdeExt.RowHeadersVisible = false;
            //dgLotes.Columns[1].Visible = false;
            //dgLotes.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            //dgLotes.Columns[4].DefaultCellStyle.Format = "##,##0.0000";

        }
        #endregion

        #region Definicion de Estructura de Columnas DataGridView  Extra
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGCasaClub()
        {

            dgAdeClub.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgAdeClub, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgAdeClub.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Servicio",
                                                  Width = 80
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Periodo",
                                                  Width = 60

                                              },
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Importe",
                                                  Width = 80

                                              }

                                      });


            dgAdeClub.DefaultCellStyle.Font = new Font("Arial", 14F, GraphicsUnit.Pixel);
            dgAdeClub.RowHeadersVisible = false;
            //dgLotes.Columns[1].Visible = false;
            //dgLotes.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            //dgLotes.Columns[4].DefaultCellStyle.Format = "##,##0.0000";

        }
        #endregion

        #region Definicion de Estructura de Columnas DataGridView  Extra
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGConvenio()
        {

            dgConvenio.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgPropietario, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgConvenio.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Servicio",
                                                  Width = 80
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "#Pago",
                                                  Width = 40
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (String),
                                                  HeaderText = "fecha_pago",
                                                  Width = 100

                                              },
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Importe",
                                                  Width = 90

                                              }

                                      });


            dgConvenio.DefaultCellStyle.Font = new Font("Arial", 14F, GraphicsUnit.Pixel);
            dgConvenio.RowHeadersVisible = false;
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

        public frmConvenios(int servicio)
        {
            InitializeComponent();
            definicionDGBuscaColono();
            definicionDGCuotas();
            definicionDGCuotasAgua();
            definicionDGCuotasExtra();
            definicionDGConvenio();
            definicionDGCasaClub();
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
                gbCapturaCon.Visible = true;
                btnCapturaR.Focus();
                invisibleGroup();
                //  groupCuota.Visible = false;
            }
        }

        private void btnCapturaR_Click(object sender, EventArgs e)
        {
            Boolean resultado = false;
            PrcConvenios prcAnticipos = new PrcConvenios();
            Object[] parames = {  idLote , servicio };
            resultado = prcAnticipos.validacionAdeudos(parames);
            if (!resultado)
            {
                MessageBox.Show("El usuario no cuenta con cuotas atrasadas");
            }
            else
            {
                visibleGroup();
                consultaAdeudos();
                txtImpConvenio.Text = "0.0";
                txtPagoMensual.Text = "0.0";
                txtDiaPago.Text = "0";
            }
        }
        public void consultaAdeudos() {
            PrcConvenios prcAnticipos = new PrcConvenios();
            adeudoMto = prcAnticipos.consultaAdeudosConcepto(dgAdeMto, idLote, 2);
            adeudoAgua = prcAnticipos.consultaAdeudosConcepto(dgAdeAgua, idLote, 3);
            adeudoExt = prcAnticipos.consultaAdeudosConcepto(dgAdeExt, idLote, 6);
            adeudoClub = prcAnticipos.consultaAdeudosConcepto(dgAdeClub, idLote, 5);

            lblTotalAdeAgua.Text = "" + String.Format(CultureInfo.InvariantCulture,
                           "{0:0,0.00}", adeudoAgua);
            lblTotalAdeMto.Text = "" + String.Format(CultureInfo.InvariantCulture,
                           "{0:0,0.00}", adeudoMto);
            lblTotalAdeExt.Text = "" + String.Format(CultureInfo.InvariantCulture,
                           "{0:0,0.00}", adeudoExt);
            lblTotalAdeClub.Text = "" + String.Format(CultureInfo.InvariantCulture,
                         "{0:0,0.00}", adeudoClub);
            totalAdeudo = adeudoMto + adeudoAgua + adeudoExt+ adeudoClub;
            lblImporteTotal.Text = "" + String.Format(CultureInfo.InvariantCulture,
                           "{0:0,0.00}", totalAdeudo);
        }

        private void txtColono_KeyDown(object sender, KeyEventArgs e)
        {
            var BeanCProp = new Backend.Catalogos.CColonos();
            BeanCProp.buscaColonoDir(dgPropietario, txtColono.Text.ToString());
            dgPropietario.Visible = true;
            dgPropietario.BringToFront();
        }
        

        private void frmAnticipoMto_Load(object sender, EventArgs e)
        {
            DateTime thisDay = DateTime.Today;
            lblFechaSys.Text = thisDay.ToString("D");
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
                lblMzaLote.Text = resultado.direccionDTO;
                dgPropietario.Visible = false;
                lblColono.Visible = true;
                txtColono.Text = "";
                txtLote.Text = "";
                groupDColono.Visible = true;
                // btnCapturaR.Enabled = true;
                gbCapturaCon.Visible = true;
                //---
                groupMto.Visible = true;
                invisibleGroup();
            }
            //code tonka 18/10/2016
            else
            {
                txtColono.Text = "";
                txtLote.Text = "";
                groupDColono.Visible = false;
                dgPropietario.Visible = false;
                gbCapturaCon.Visible = false;
                pnlConvenio.Visible = false;
                //consultaAdeudos();
                invisibleGroup();
                txtImpConvenio.Text = "0.0";
                txtPagoMensual.Text = "0.0";
                txtDiaPago.Text = "0";
                lblImporteTotal.Text = "0.0";
                MessageBox.Show("El Lote no se encuentra registrado. Por favor intente nuevamente.");

            }

        }
        #endregion

        private void groupDColono_Paint(object sender, PaintEventArgs e)
        {
            GroupBox box = sender as GroupBox;
            DrawGroupBox(box, e.Graphics, Color.Black, Color.Brown);
            box.BackColor = Color.Snow;
        }
    
      

        private void button1_Click(object sender, EventArgs e)
        {
            if (txtImpConvenio.Text == "" || txtPagoMensual.Text == "" || txtDiaPago.Text == "")
            {
                pnlResult.Visible = true;
                pnlResult.BackColor = Color.Orange;
                lblMensaje.Text = "Ingresa Campos obligatorios*";
            }
            else
            {
                if (decimal.Parse(txtImpConvenio.Text) <= 0 || decimal.Parse(txtPagoMensual.Text) <= 0 || int.Parse(txtDiaPago.Text) <= 0) 
                {
                    pnlResult.Visible = false;
                    MessageBox.Show("El valor debe ser mayor a '0' ", "Información", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                }
                else
                {
                    pnlResult.Visible = false;
                    int diaLimite = int.Parse(txtDiaPago.Text);
                    if (diaLimite <= validaDiaMes())
                    {
                        lblAguaAde.SendToBack();
                        groupAgua.SendToBack();
                        lblExtAde.SendToBack();
                        groupExt.SendToBack();
                        pnlConvenio.BringToFront();
                        pnlConvenio.Visible = true;
                        //cambio tonka 01/11/16
                        gBDefConvenio.Enabled = false;
                        txtColono.Enabled = false;
                        txtLote.Enabled = false;
                        btnBuscar.Enabled = false;
                        //----------------------
                        groupConvenio.Visible = true;
                        PrcConvenios prcAnticipos = new PrcConvenios();
                        double impTConvenio = Double.Parse(txtImpConvenio.Text);
                        double pagoMensual = Double.Parse(txtPagoMensual.Text);

                        Boolean accion = false;
                        double total = prcAnticipos.generaConvenio(dgConvenio, idLote, totalAdeudo, impTConvenio, pagoMensual, diaLimite, accion);
                        pnlResult.BackColor = Color.DeepSkyBlue;
                        lblMensaje.ForeColor = Color.White;
                        lblVTotalConvenio.Text = "" + String.Format(CultureInfo.InvariantCulture,
                                       "{0:0,0.00}", total);
                        // lblMensaje.Text = "¡Ingresa los campos obligatorios!";
                    }
                    else
                    {
                        pnlResult.Visible = true;
                        pnlResult.BackColor = Color.OrangeRed;
                        lblMensaje.Text = "¡Ingresa los campos obligatorios!";
                        lblMensaje.ForeColor = Color.White;

                    }
                }
            }
         }

        public void visibleGroup() {
            gBDefConvenio.Visible = true;
            groupAgua.Visible = true;
            groupMto.Visible = true;
            groupExt.Visible = true;
            groupCasaClub.Visible = true;
            lblAguaAde.Visible = true;
            lblMtoAde.Visible = true;
            lblExtAde.Visible = true;
            lblCasaClub.Visible = true;





        }


        public void invisibleGroup()
        {
            gBDefConvenio.Visible = false;
            groupAgua.Visible = false;
            groupMto.Visible = false;
            groupExt.Visible = false;
            lblAguaAde.Visible = false;
            lblMtoAde.Visible = false;
            lblExtAde.Visible = false;



        }


        private void btnCancelConvenio_Click(object sender, EventArgs e)
        {
            pnlConvenio.Visible = false;
            //cambio tonka 01/11/16
            gBDefConvenio.Enabled = true;
            txtColono.Enabled = true;
            txtLote.Enabled = true;
            btnBuscar.Enabled = true;
            //----------------------
        }

        private void btnOkConvenio_Click(object sender, EventArgs e)
        {
            PrcConvenios prcAnticipos = new PrcConvenios();
            double impTConvenio = Double.Parse(txtImpConvenio.Text);
            double pagoMensual = Double.Parse(txtPagoMensual.Text);
            int diaLimite = int.Parse(txtDiaPago.Text);
            Boolean accion = true;
            Boolean resultado = prcAnticipos.registroConvenio( idLote, totalAdeudo, impTConvenio, pagoMensual, diaLimite, accion);
            if (resultado)
            {
                pnlConvenio.Visible = false;
                consultaAdeudos();
                invisibleGroup();
                txtImpConvenio.Text = "0.0";
                txtPagoMensual.Text = "0.0";
                txtDiaPago.Text = "0";
                lblImporteTotal.Text = "0.0";

                MessageBox.Show("Se registro satisfactoriamente el convenio");
                //cambio tonka 01/11/16
                gBDefConvenio.Enabled = true;
                txtColono.Enabled = true;
                txtLote.Enabled = true;
                btnBuscar.Enabled = true;
                //----------------------

            }
            else {
                MessageBox.Show("No se pudo registrar el convenio, intenter nuevamente");
            }
        }

        private void txtImpConvenio_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaNumeros(txtImpConvenio, sender, e);
        }

        private void txtPagoMensual_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaNumeros(txtPagoMensual, sender, e);

        }

        private void gbCapturaCon_Paint(object sender, PaintEventArgs e)
        {
            GroupBox box = sender as GroupBox;
            DrawGroupBox(box, e.Graphics, Color.Black, Color.Brown);
            box.BackColor = Color.Snow;
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            BuscaIdLote();
        }

        private void txtDiaPago_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (!(char.IsNumber(e.KeyChar)) && (e.KeyChar != (char)Keys.Back))
            {
                MessageBox.Show("Solo se permiten numeros", "Advertencia", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
                e.Handled = true;
                return;
            }
        }

        private void txtImpConvenio_MouseClick(object sender, MouseEventArgs e)
        {
            txtImpConvenio.SelectAll();
        }

        private void txtPagoMensual_Click(object sender, EventArgs e)
        {
            txtPagoMensual.SelectAll();
        }

        private void txtDiaPago_Click(object sender, EventArgs e)
        {
            txtDiaPago.SelectAll();
        }

        public int validaDiaMes() {

            DateTime fechatemp = DateTime.Today;

            //DateTime fechatemp = new DateTime(2014, 12, 31);

            DateTime fecha1 = new DateTime(fechatemp.Year, fechatemp.Month, 1);
            DateTime fecha2;

            if (fechatemp.Month + 1 < 13)
            { fecha2 = new DateTime(fechatemp.Year, fechatemp.Month + 1, 1).AddDays(-1); }
            else
            { fecha2 = new DateTime(fechatemp.Year + 1, 1, 1).AddDays(-1); }

           return fecha2.Day;
        }

        private void DrawGroupBox(GroupBox box, Graphics g, Color textColor, Color borderColor)
        {
            if (box != null)
            {
                Brush textBrush = new SolidBrush(textColor);
                Brush borderBrush = new SolidBrush(borderColor);
                Pen borderPen = new Pen(borderBrush);
                SizeF strSize = g.MeasureString(box.Text, box.Font);
                Rectangle rect = new Rectangle(box.ClientRectangle.X,
                                               box.ClientRectangle.Y + (int)(strSize.Height / 2),
                                               box.ClientRectangle.Width - 1,
                                               box.ClientRectangle.Height - (int)(strSize.Height / 2) - 1);

                // Clear text and border
                g.Clear(this.BackColor);

                // Draw text
                g.DrawString(box.Text, box.Font, textBrush, box.Padding.Left, 0);

                // Drawing Border
                //Left
                g.DrawLine(borderPen, rect.Location, new Point(rect.X, rect.Y + rect.Height));
                //Right
                g.DrawLine(borderPen, new Point(rect.X + rect.Width, rect.Y), new Point(rect.X + rect.Width, rect.Y + rect.Height));
                //Bottom
                g.DrawLine(borderPen, new Point(rect.X, rect.Y + rect.Height), new Point(rect.X + rect.Width, rect.Y + rect.Height));
                //Top1
                g.DrawLine(borderPen, new Point(rect.X, rect.Y), new Point(rect.X + box.Padding.Left, rect.Y));
                //Top2
                g.DrawLine(borderPen, new Point(rect.X + box.Padding.Left + (int)(strSize.Width), rect.Y), new Point(rect.X + rect.Width, rect.Y));

               
            }
        }
    }
}
