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
        public frmCalculaCBAMensual()
        {
            InitializeComponent();
            definicionDGHistorico();
        }

        #region Definicion de Estructura de Columnas DataGridView Historico
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGHistorico()
        {

            dgHistorico.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgHistorico, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgHistorico.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Periodo",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Consumo Promedio",
                                                  Width = 105
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "Consumo Anual Promedio",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Decimal),
                                                  HeaderText = "Porcentaceje",
                                                  Width = 85
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Double),
                                                  HeaderText = "CBA",
                                                  Width = 20
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (double),
                                                  HeaderText = "CBA Anualizado",
                                                  Width = 20
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (double),
                                                  HeaderText = "CBA Calculado",
                                                  Width = 20
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            dgHistorico.Columns[0].Visible = false;
            dgHistorico.Columns[2].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            dgHistorico.Columns[2].DefaultCellStyle.Format = "##,##0.0000";
            dgHistorico.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleCenter;
            dgHistorico.Columns[5].Visible = false;
        }
        #endregion

        private void mSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {

        }

        private void frmCalculaCBAMensual_Load(object sender, EventArgs e)
        {
            var BeanCargaV = new Backend.Catalogos.CTarifas();
            //carga grid
            //BeanCargaV.consultaCBAMensual(dgHistorico,1,"2017",1);
           
        }
    }
}
