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

namespace WFPGranjas
{
    public partial class frmCalculaCBAMensual : Form
    {
        string anio = null;
        public frmCalculaCBAMensual()
        {
            InitializeComponent();            
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
            MessageBox.Show("termino proceso");
        }

        private void mPreview_Click_1(object sender, EventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            definicionDGHistorico("Periodo", "Consumo Promedio", "Consumo Anual Promedio", "Porcentaceje", "CBA", "CBA Anualizado", "CBA Calculado");
            var BeanCargaV = new Backend.Catalogos.CTarifas();
            //carga grid
            BeanCargaV.consultaCBAMensual(dgHistorico, 2, anio, 0);
            this.Cursor = Cursors.Default;
        }

        private void mNuevo_Click(object sender, EventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;
            
            definicionDGHistorico("Direccion", "medidor", "Colono", "superficio", "CBA", "periodo", "CBA Cálculado");
            var BeanCargaV = new Backend.Catalogos.CTarifas();
            //carga grid
            BeanCargaV.consultaCBAMensual(dgHistorico, 3, anio, 0);
            this.Cursor = Cursors.Default;
            pnlResult.Visible = true;
        }

        private void frmCalculaCBAMensual_Load_1(object sender, EventArgs e)
        {
            consultaPer();
            anio= cmbAnios.SelectedValue.ToString();
            lblEncabezado.Text = "Generación del Cálculo Mensual CBA: " + anio;

        }
        //|||||||||||||||inicio tonka-210117|||||||||||||||||
        #region Consulta Periodo para el registro / validaciones
        public void consultaPer()
        {
            // gbEstatus.Visible = false;
            var BeanCPeriodo = new Backend.Procesos.PrcCuotaMto();
            BeanCPeriodo.consultaPeriodos(cmbPeriodos, 1, 1);
            BeanCPeriodo.consultaPeriodos(cmbAnios, 2, 1);

        }
        #endregion

        private void mEditar_Click(object sender, EventArgs e)
        {
            this.Cursor = Cursors.WaitCursor;

            definicionDGHistorico("Direccion", "medidor", "Colono", "superficio", "CBA", "periodo", "CBA Cálculado");
            var BeanCargaV = new Backend.Catalogos.CTarifas();
            //carga grid
            BeanCargaV.consultaCBAMensual(dgHistorico, 4, anio, 0);
            this.Cursor = Cursors.Default;
            pnlResult.Visible = false;

        }
    }
}