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
    public partial class frmConsultaRecibo : Form
    {
        int id_colono = 0, idManzana = 0, idLote = 0;
        int paramCan1 = 0, paramCan2 = 0, paramCan3 = 0, paramCan4 = 0;
        String listaIDKardex = null;
        int servicio = 0;
        Utilerias utilities = new Utilerias();
        PrcPagoMto prcPago = new PrcPagoMto();
        DatosColono colono;

        public frmConsultaRecibo(int servicio)
        {
            this.servicio = servicio;
            InitializeComponent();
            definicionDGCuotas();

        }

        private void btnCapturaPago_Click(object sender, EventArgs e)
        {
            //
           /* PrcCancelacion prcCancelacion = new PrcCancelacion();
            Object[] parames = { colono.folio, lblFolio.Text };
            int resultado = prcCancelacion.registroCancelacion(parames);
            if (resultado > 0)
            {*/
               // MessageBox.Show("¡Se realizo la cancelacion del pago!");
                //tonka recibo cancela
                //manto con anticipo
                if (paramCan3 == 2 && paramCan4 == 3)
                {
                    paramCan3 = 1;
                    //manto con anualidad
                    if (dgPartidasR.CurrentRow.Cells[8].Value.ToString() == "Anual")
                        paramCan3 = 8;
                }

                //INGRESO CASA CLUB GENERAL
                if (paramCan3 == 7)
                    paramCan3 = 9;

            //agua con anticipo
            if (paramCan3 == 3 && paramCan4 == 3)
                paramCan3 = 7;


            rptReciboCancela BeanRPTMedidor = new rptReciboCancela("" + paramCan1, "" + paramCan2, paramCan3, "_CONSULTA");
                BeanRPTMedidor.Show();
                //tonka recibo cancela
           // }
            groupCuota.Visible = false;
            groupDColono.Visible = false;
            gbDRecibo.Visible = false;
        }

        #region Definicion de Estructura de Columnas DataGridView Cuotas
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGCuotas()
        {

            dgPartidasR.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgPartidasR, true, null);

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
                                                  HeaderText = "Servicio",
                                                  Width = 200
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Periodo",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (double),
                                                  HeaderText = "Importe",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (double),
                                                  HeaderText = "Moratorio",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Estatus pago",
                                                  Width = 140

                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "id_servicio",
                                                  Width = 140

                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "id_pago",
                                                  Width = 140

                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "concepto",
                                                  Width = 140

                                              }

                                      });


            dgPartidasR.DefaultCellStyle.Font = new Font("Arial", 14F, GraphicsUnit.Pixel);
            dgPartidasR.Columns[0].Visible = false;
            dgPartidasR.Columns[6].Visible = false;
            dgPartidasR.Columns[7].Visible = false;
            dgPartidasR.Columns[8].Visible = false;
            //dgLotes.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            //dgLotes.Columns[4].DefaultCellStyle.Format = "##,##0.0000";

        }
        #endregion

        private void btnCapturaR_Click(object sender, EventArgs e)
        {
            buscaFolioPago();
        }

        private void txtColono_KeyDown(object sender, KeyEventArgs e)
        {
            if ((int)e.KeyValue == (int)Keys.Enter)
            {
                buscaFolioPago();
            }
        }      

        private void frmConsultaRecibo_Load(object sender, EventArgs e)
        {
            var BeanCLotesMza = new Backend.Catalogos.CManzanaLotes();
            if (servicio == 2)
            {
                panelTop.BackColor = Color.MediumSeaGreen;
                lblMultas.Visible = true;
            }
            if (servicio == 3)
            {
                panelTop.BackColor = Color.SteelBlue;
                lblMultas.Visible = false;

                //  txtMultas.Enabled = false;
                //  lblMultas.Text = "Saldo a favor :";
            }
            if (servicio == 4)
            {
                panelTop.BackColor = Color.Brown;
                lblMultas.Visible = false;
            }
        }

        public void buscaFolioPago()
        {
            panelEstatus.Visible = false;

            if (txtColono.Text == null)
            {
                MessageBox.Show("Ingrese el numero de folio");
            }
            else
            {
                var BeanCProp = new Backend.Catalogos.CColonos();

                colono = BeanCProp.buscaColonoFolio(txtColono.Text);

                if (colono.nombre != null)
                {

                    groupDColono.Visible = true;
                    gbDRecibo.Visible = true;
                    groupCuota.Visible = true;

                    id_colono = colono.idColono;
                    lblColono.Text = colono.nombre;
                    lblDireccion.Text = "" + colono.direccion;
                    idManzana = colono.idManzana;
                    idLote = colono.idLote;

                    // String numeroRomano = utilities.numeroRomano(int.Parse(row.Cells[3].Value.ToString()));
                    lblMzaLote.Text = "Manzana: " + colono.manzana + " Lote: " + colono.lote;
                    //MessageBox.Show("id_manzana" + id_manzana);
                    lblFechaSys.Text = colono.fechaPago;
                    string txtFolio = colono.folio.ToString("0000000");

                    lblFolio.Text = txtColono.Text;
                    PrcCancelacion prcCancelacion = new PrcCancelacion();
                    Object[] parames3 = { colono.folio };
                    double multa = prcCancelacion.obtieneMulta(parames3);
                    string multaTxt = String.Format(CultureInfo.InvariantCulture,
                                 "{0:0,0.0}", multa);
                    lblMulta.Text = "" + multaTxt;
                    double importeTotal = prcCancelacion.consultaPago(dgPartidasR, colono.folio, txtColono.Text, lblMoratorio, lblImporte, lblTotalImporte, multa);
                    dgPartidasR.Visible = true;
                    //tonka recibo cancela
                    paramCan1 = idLote;
                    paramCan2 = colono.folio;
                    paramCan3 = int.Parse(dgPartidasR.CurrentRow.Cells[6].Value.ToString());
                    paramCan4 = int.Parse(dgPartidasR.CurrentRow.Cells[7].Value.ToString());
                    //fin tonka cancela
                    Object[] parames = { colono.folio, txtColono.Text };
                    Boolean validacion = prcCancelacion.validaEstatusPago(parames);

                    Object[] parames2 = { colono.folio, paramCan3, paramCan4 };
                    Boolean validacionFecha = prcCancelacion.validaFechaPago(parames2);


                    if (validacion || validacionFecha)
                        btnCapturaPago.Visible = false;
                    else
                        btnCapturaPago.Visible = true;

                    if (validacion || validacionFecha)
                        panelEstatus.Visible = true;

                    if (validacionFecha)
                        lblMensaje.Text = "Fuera de periodo de cancelacion ";
                    if (validacion)
                        lblMensaje.Text = "El recibo se encuentra cancelado";

                    txtColono.Text = "";
                }
                else
                {
                    MessageBox.Show("No se encuentra el folio ingresado");
                    txtColono.Text = "";
                    groupDColono.Visible = false;
                    gbDRecibo.Visible = false;
                    groupCuota.Visible = false;

                }
            }
        }

        public Boolean validaNumeros(TextBox txt, object sender, KeyPressEventArgs e)
        {
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
  
        public Boolean validaPeriodoAnticipo(int periodo)
        {
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
    }
}
