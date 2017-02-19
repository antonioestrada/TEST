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
    public partial class frmCalculaCBAMensual : Form
    {
        string anio = null;
        public frmCalculaCBAMensual()
        {
            InitializeComponent();
            definicionDGProduccion();
            definicionDGCalculaProduccion();
        }
        
        #region Definicion de Estructura de Columnas DataGridView Historico
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGHistorico(string inParam1, string inParam2, string inParam3, string inParam4, string inParam5, string inParam6, string inParam7)
        {

            dgHistorico.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgHistorico, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgHistorico.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = inParam1,
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (int),
                                                  HeaderText = inParam2,
                                                  Width = 105
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (decimal),
                                                  HeaderText = inParam3,
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (decimal),
                                                  HeaderText = inParam4,
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (double),
                                                  HeaderText = inParam5,
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (double),
                                                  HeaderText = inParam6,
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (double),
                                                  HeaderText = inParam7,
                                                  Width = 100
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
           /* dgHistorico.Columns[0].Visible = false;
            dgHistorico.Columns[2].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            dgHistorico.Columns[2].DefaultCellStyle.Format = "##,##0.0000";
            dgHistorico.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgHistorico.Columns[5].Visible = false;*/
        }
        #endregion



        #region Definicion de Estructura de Columnas DataGridView definicionDG
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGProduccion()
        {

            dgProduccion.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgProduccion, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgProduccion.Columns.AddRange(new DataGridViewColumn[]
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
                                                  HeaderText = "M3",
                                                  Width = 70
                                              },
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Bomba",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Decimal),
                                                  HeaderText = "Mes",
                                                  Width = 60
                                              }
                                              ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Anio",
                                                  Width = 60
                                              },
                                               new DataGridViewButtonColumn
                                              {
                                                   Text="Eliminar",
                                                  HeaderText = "Acciones",
                                                  Width = 60,
                                                  UseColumnTextForButtonValue = true,
                                                  Name = "Edit",
                                                  DataPropertyName = "Edit"
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            dgProduccion.Columns[0].Visible = false;
            //dgProduccion.Columns[3].Visible = false;
            //dgLotes.Columns[1].Visible = false;
            dgProduccion.Columns[2].DefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
        

        }
        #endregion


        #region Definicion de Estructura de Columnas DataGridView definicionDG
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGCalculaProduccion()
        {

            dgValidacion.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgValidacion, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgValidacion.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "M3 Asignados",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Decimal),
                                                  HeaderText = "Mes",
                                                  Width = 80
                                              }
                                              ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Anio",
                                                  Width = 60
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "CBA",
                                                  Width = 80
                                              },
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Excedente",
                                                  Width = 70
                                              },

                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
           // dgValidacion.Columns[0].Visible = false;
            //dgProduccion.Columns[3].Visible = false;
            //dgLotes.Columns[1].Visible = false;
            dgValidacion.Columns[2].DefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;


        }
        #endregion

        private void mSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }
        BackgroundWorker tarea = new BackgroundWorker();
        private void btnGuardar_Click(object sender, EventArgs e)
        {
            CheckForIllegalCrossThreadCalls = false;            
            tarea.DoWork += previewCBA;
            tarea.RunWorkerCompleted += termina;
            tarea.RunWorkerAsync();
        }

        private void frmCalculaCBAMensual_Load(object sender, EventArgs e)
        {
            
           
        }

        private void mPreview_Click(object sender, EventArgs e)
        {
            
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {

        }

        public void previewCBA(object o, DoWorkEventArgs e)
        {
            var BeanCargaV = new Backend.Catalogos.CTarifas();
            //carga grid
            BeanCargaV.consultaCBAMensual(dgHistorico, 2, "2017", 568);
            int i = 0;
            for (i = 0;i<= 100;i++)
            {
                tarea.ReportProgress(i / 10);
                System.Threading.Thread.Sleep(4000);
            }

            
        }
        public void termina(object o, RunWorkerCompletedEventArgs e)
        {
            MessageBox.Show("Termino proceso");
        }

        private void mPreview_Click_1(object sender, EventArgs e)
        {
            dgHistorico.Columns.Clear();
            this.Cursor = Cursors.WaitCursor;
            definicionDGHistorico("Mes", "Consumo Promedio", "Consumo Anual Promedio", "Porcentaje", "CBA", "CBA Anualizado", "CBA Calculado");
            var BeanCargaV = new Backend.Catalogos.CTarifas();
            //carga grid
            BeanCargaV.consultaCBAMensual(dgHistorico, 2, anio, 0);
            this.Cursor = Cursors.Default;
            pnlResult.Visible = false;
            lblEncabezado.Text = "CBA mensual";
            panelProduccion.Visible = false;
            dgHistorico.Visible = true;
        }

        private void mNuevo_Click(object sender, EventArgs e)
        {
            dgHistorico.Columns.Clear();
            this.Cursor = Cursors.WaitCursor;
            
            definicionDGHistorico("Direccion", "Medidor", "Colono", "Superficie", "CBA", "Mes", "CBA Calculado");
            var BeanCargaV = new Backend.Catalogos.CTarifas();
            //carga grid
            BeanCargaV.consultaCBAMensual(dgHistorico, 3, anio, 0);
            this.Cursor = Cursors.Default;
            pnlResult.Visible = true;

            lblEncabezado.Text = "CBA mensual";
            panelProduccion.Visible = false;
            dgHistorico.Visible = true;
        }
        #region listadoSP obtine CBA de cada mes
        public void determinaEditables(int op, int inIdMedidor, string cuota, string periodo)
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
            //  rtbResul.Text += resulDTO.Mensaje;
            if (resulDTO.result == 0)
                mNuevo.Enabled = false;



        }
        #endregion
        private void frmCalculaCBAMensual_Load_1(object sender, EventArgs e)
        {
            consultaPer();
            determinaEditables(5, 0, "0","01");
            anio = cmbAnios.SelectedValue.ToString();
            lblEncabezado.Text = "Generación del Calculo Mensual CBA: ";// + anio;

        }
        //|||||||||||||||inicio tonka-210117|||||||||||||||||
        #region Consulta Periodo para el registro / validaciones
        public void consultaPer()
        {
            // gbEstatus.Visible = false;
            var BeanCPeriodo = new Backend.Procesos.PrcCuotaMto();
            BeanCPeriodo.consultaPeriodos(cmbPeriodos, 4, 1);
            BeanCPeriodo.consultaPeriodos(cmbAnios, 5, 1);
            BeanCPeriodo.consultaBombas(cmbBombas);

        }
        #endregion
        public void consultaPerPOrAnio()
        {
            // gbEstatus.Visible = false;
            var BeanCPeriodo = new Backend.Procesos.PrcCuotaMto();
            BeanCPeriodo.consultaPeriodos(cmbPeriodos, 4, 1);
            BeanCPeriodo.consultaBombas(cmbBombas);

        }

        private void mEditar_Click(object sender, EventArgs e)
        {
            dgHistorico.Columns.Clear();
            this.Cursor = Cursors.WaitCursor;
            definicionDGHistorico("Direccion", "Medidor", "Colono", "Superficie", "CBA", "Mes", "CBA Calculado");
            var BeanCargaV = new Backend.Catalogos.CTarifas();
            //carga grid
            BeanCargaV.consultaCBAMensual(dgHistorico, 4, anio, 0);
            this.Cursor = Cursors.Default;
            pnlResult.Visible = false;
            lblEncabezado.Text = "CBA mensual";
            panelProduccion.Visible = false;
            dgHistorico.Visible = true;

        }

        private void toolStripMenuItem1_Click(object sender, EventArgs e)
        {
       //     cmbAnios.Visible = true;
            lblEncabezado.Text = "Produccion de Agua";
            dgHistorico.Visible = false;
            panelProduccion.Visible = true;
            pnlResult.Visible = false;
            consultaPer();
            txtM3.Text = "";
            dgProduccion.Visible = false;
            anio = cmbAnios.SelectedValue.ToString();
            var BeanCargaV = new Backend.Catalogos.CTarifas();
            //carga grid
         //   BeanCargaV.consultaProduccionMensual(dgProduccion, anio);
        }

        private void btnCapturaProduccion_Click(object sender, EventArgs e)
        {
            var BeanProduccion = new Backend.Catalogos.CProduccion();
            if (txtM3.Text != null && txtM3.Text != "")
            {
                double m3 = double.Parse(txtM3.Text);
                Object[] parames = {
                m3,
                cmbBombas.SelectedValue,//id_concepto solo agregamos el parametro id_lote para continuar con la ejecucion del sp
                cmbPeriodos.SelectedValue,
                cmbAnios.SelectedValue
            };

                int resultado = BeanProduccion.produccion(parames);
                if (resultado == 1)
                    pnlResult.Visible = true;
                if (resultado == 2)
                    MessageBox.Show("¡Ya se encuentra registrada la asignacion!");
                if (resultado == 0)
                    MessageBox.Show("¡No se pudo registrar, valide nuevamente!");

                anio = cmbAnios.SelectedValue.ToString();

                var BeanCargaV = new Backend.Catalogos.CTarifas();
                //carga grid
                BeanCargaV.consultaProduccionMensual(dgProduccion, anio);

            }
            else {
                MessageBox.Show("¡Ingrese los metros cubicos");
            }
        }

        private void dgProduccion_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            if (dgProduccion.Columns[e.ColumnIndex] is DataGridViewButtonColumn &&
            e.RowIndex >= 0)
            {
                var BeanProduccion = new Backend.Catalogos.CProduccion();
                int id =int.Parse( dgProduccion.Rows[e.RowIndex].Cells[0].Value.ToString());
                Object[] parames = {id    };
                int resultado = BeanProduccion.borrarProduccionMensual(parames);
                if(resultado==1)
                    MessageBox.Show("¡Se ha eliminado el registro!" );
                var BeanCargaV = new Backend.Catalogos.CTarifas();
                //carga grid
                BeanCargaV.consultaProduccionMensual(dgProduccion, anio);

            }
        }

        private void cmbAnios_SelectedValueChanged(object sender, EventArgs e)
        {
            anio = cmbAnios.SelectedValue.ToString();
            var BeanCargaV = new Backend.Catalogos.CTarifas();
            //carga grid
           // BeanCargaV.consultaProduccionMensual(dgProduccion, anio);
        }

        private void cmbAnios_SelectionChangeCommitted(object sender, EventArgs e)
        {
            anio = cmbAnios.SelectedValue.ToString();
            consultaPerPOrAnio();
            txtM3.Text = "";
            dgProduccion.Visible = true;
            var BeanCargaV = new Backend.Catalogos.CTarifas();
            //carga grid
             BeanCargaV.consultaProduccionMensual(dgProduccion, anio);
            pnlResult.Visible = false;
        }

        private void tabControl1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (tabControl1.SelectedIndex == 1) {

            var BeanCPeriodo = new Backend.Procesos.PrcCuotaMto();
                BeanCPeriodo.consultaPeriodos(cmbAnioVal, 5, 1);
                btnValidar.Visible = true;
            }
        }

        private void btnValidar_Click(object sender, EventArgs e)
        {

            var BeanProduccion = new Backend.Catalogos.CProduccion();
            string anioVal = cmbAnioVal.SelectedValue.ToString();
            Object[] parames = { anioVal };
            Boolean resultado = BeanProduccion.validaProduccion(parames);
            if (!resultado)
                MessageBox.Show("¡No se han registrado en su totalidad los metros cubicos de año seleccionado!");
            else {
                gpValidacion.Visible = true;
                var BeanCargaV = new Backend.Catalogos.CTarifas();
                //carga grid
                BeanCargaV.validadProduccionMensual(dgValidacion, anioVal);
            }
        }

        private void cmbAnioVal_SelectionChangeCommitted(object sender, EventArgs e)
        {
            gpValidacion.Visible = false;
        }
    }
}