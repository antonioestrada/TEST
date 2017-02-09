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
    public partial class rptConsumos : Form
    {
        public rptConsumos()
        {
            InitializeComponent();
        }

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            var BeanRPTMedidor = new Backend.Reportes.rptMedidores();
                BeanRPTMedidor.rptConsumos(crvConsumos, 1,"I");
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var BeanRPTMedidor = new Backend.Reportes.rptRecibos();
            BeanRPTMedidor.rptReciboManto(crvConsumos, 1, "1", "1", "2015");
        }
    }
}
