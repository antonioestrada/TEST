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
    public partial class frmCancelacion : Form
    {
        int id_colono = 0,idManzana=0,idLote=0;
        String listaIDKardex;
        int servicio =0;
        double pagoTotal = 0;
        double saldoAnticipo = 0;
        Dictionary<int, Cuota> cuotas;
        Dictionary<int, String> cmbCuotas;
        Utilerias utilities = new Utilerias();
        PrcPagoMto prcPago = new PrcPagoMto();
        
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
                                                  Width = 100
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

                                              }

                                      });


            dgPartidasR.DefaultCellStyle.Font = new Font("Arial", 14F, GraphicsUnit.Pixel);
    
            //dgLotes.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            //dgLotes.Columns[4].DefaultCellStyle.Format = "##,##0.0000";

        }
        #endregion
       public frmCancelacion(int servicio)
        {
            this.servicio = servicio;
            InitializeComponent();
            definicionDGCuotas();
        }

     
       

        private void btnCapturaR_Click(object sender, EventArgs e)
        {
            if (txtColono.Text == null)
            {
                MessageBox.Show("Ingrese el numero de folio");
            }
            else
            {
                var BeanCProp = new Backend.Catalogos.CColonos();

                DatosColono colono = BeanCProp.buscaColonoFolio(int.Parse(txtColono.Text));

                if (colono != null)
                {
                    txtColono.Text = "";
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
                    lblFolio.Text = txtFolio;
                    PrcCancelacion prcCancelacion = new PrcCancelacion();
                    double importeTotal = prcCancelacion.consultaPago(dgPartidasR, colono.folio, lblMoratorio, lblImporte, lblTotalImporte);
                    dgPartidasR.Visible = true;

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

  
        private void txtColono_KeyDown(object sender, KeyEventArgs e)
        {
           
            if ((int)e.KeyValue == (int)Keys.Enter)
            {
                
                    MessageBox.Show("El Colono no se encuentra registrado. Por favor intente nuevamente.");
             
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
         //   Object[] parames = { listaIDKardex, idLote, servicio, importeEfectivo, txtCheque.Text, bancoCheque, importeCheque, txtFicha.Text, bancoFicha, importFicha, multas, id_colono };
         //   resultado = prcPago.registroCuotas(parames);
        }
        
    

        private void frmAnticipoMto_Load(object sender, EventArgs e)
        {

            var BeanCLotesMza = new Backend.Catalogos.CManzanaLotes();
            if (servicio == 2)
            {
                panelTop.BackColor = Color.MediumSeaGreen;
                lblMultas.Visible=true;
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
        
        
        private void txtColono_KeyPress(object sender, KeyPressEventArgs e)
        {
            validaNumeros(txtColono, sender, e);
        }
        

    }
}
