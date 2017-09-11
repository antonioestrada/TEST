using ExportarDatagridviewToExcel;
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
    public partial class frmReporte_Consumos : Form
    {
        int opIN;
        public frmReporte_Consumos(int op)
        {
            InitializeComponent();
            if (op == 1)
            {
                definicionDGConsumos();
                label1.Text = "Reporte Consumos: Lecturas";
            }
            else if (op == 2)
            {
                definicionDGConsumosVSFacturacion();
                label1.Text = "Reporte Consumos: Tarifas";
            }

            opIN = op;
        }

        #region Definicion de Estructura de Columnas DataGridView Consumos vs CBA Asignado
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGConsumos()
        {

            dgConsumos.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgConsumos, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgConsumos.Columns.AddRange(new DataGridViewColumn[]
                                      {                                     
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Colono",
                                                  Width = 450
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
                                                  HeaderText = "Periodo de Consumo",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Decimal),
                                                  HeaderText = "CBA Asignado",
                                                  Width = 80
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (int),
                                                  HeaderText = "Consumo",
                                                  Width = 80
                                              }
                                              
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            //dgCuotas.Columns[0].Visible = false;
            //dgBancos.Columns[5].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            dgConsumos.Columns[3].DefaultCellStyle.Format = "##,##0.0000";
            dgConsumos.Columns[3].DefaultCellStyle.Format = "N";
        }
        #endregion

        #region Definicion de Estructura de Columnas DataGridView Consumos vs CBA Asignado
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGConsumosVSFacturacion()
        {

            dgConsumos.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgConsumos, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgConsumos.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Periodo de Consumo",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Consumo m3",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Tarifa",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Decimal),
                                                  HeaderText = "Cuota de Tarifa",
                                                  Width = 150
                                              }

                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            //dgCuotas.Columns[0].Visible = false;
            //dgBancos.Columns[5].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            dgConsumos.Columns[1].DefaultCellStyle.Format = "##,##0.0000";
            dgConsumos.Columns[1].DefaultCellStyle.Format = "N";
            dgConsumos.Columns[3].DefaultCellStyle.Format = "##,##0.0000";
            dgConsumos.Columns[3].DefaultCellStyle.Format = "N";
        }
        #endregion


        private void frmReporte_Consumos_Load(object sender, EventArgs e)
        {
            var BeanCLotesMza = new Backend.Catalogos.CManzanaLotes();
            BeanCLotesMza.consultaMes(cmbMes);
            BeanCLotesMza.consultaAnio(cmbAnio);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var BeanCBanco = new Backend.Catalogos.CBancos();
            BeanCBanco.consultaConsumosCBA(dgConsumos,cmbMes.SelectedValue.ToString(), cmbAnio.SelectedValue.ToString(), opIN);
        }

        // EXPORTAR EXCEL
        public void exportaraexcel(DataGridView tabla)
        {
            Microsoft.Office.Interop.Excel.Application excel = new Microsoft.Office.Interop.Excel.Application();
            excel.Application.Workbooks.Add(true);
            int IndiceColumna = 0;
            foreach (DataGridViewColumn col in tabla.Columns) //Columnas
            {
                IndiceColumna++;
                excel.Cells[1, IndiceColumna] = col.Name;
            }

            int indiceFila = 0;
            foreach (DataGridViewRow row in tabla.Rows) //Filas
            {
                indiceFila++;
                IndiceColumna = 0;
                foreach (DataGridViewColumn col in tabla.Columns)
                {
                    IndiceColumna++;
                    excel.Cells[indiceFila + 1, IndiceColumna] = row.Cells[col.Name].Value;
                }
            }
            excel.Visible = true;
        }

        private void btnExportar_Click(object sender, EventArgs e)
        {
            //exportaraexcel(dgConsumos);
            Exportar exp = new Exportar();
            exp.ExportarDataGridViewExcel(dgConsumos,opIN);
        }
    }
}
