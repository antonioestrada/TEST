using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WFPGranjas
{
    public partial class rptConsumos_Filtros : Form
    {
        public rptConsumos_Filtros()
        {
            InitializeComponent();
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            var BeanRPTMedidor = new Backend.Reportes.rptMedidores();
            BeanRPTMedidor.rptConsumosContrato(crReporte, 1, cmbMes.SelectedValue.ToString(), cmbAnio.SelectedValue.ToString());
        }

        private void rptConsumos_Filtros_Load(object sender, EventArgs e)
        {
            WindowState = FormWindowState.Maximized;
            //carga meses y anio
            //carga combo del catalogo de  manzanas 
            var BeanCLotesMza = new Backend.Catalogos.CManzanaLotes();
            BeanCLotesMza.consultaMes(cmbMes);
            BeanCLotesMza.consultaAnio(cmbAnio);
        }
    }
}
