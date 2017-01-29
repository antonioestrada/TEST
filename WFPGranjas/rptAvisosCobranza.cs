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
    public partial class rptAvisosCobranza : Form
    {
        public rptAvisosCobranza()
        {
            InitializeComponent();
        }

        private void rptAvisosCobranza_Load(object sender, EventArgs e)
        {
            WindowState = FormWindowState.Maximized;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            var BeanRPTMedidor = new Backend.Reportes.rptCobranza();
            BeanRPTMedidor.reportCobranza(crvLRecibos);
        }
    }
}
