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
    public partial class rptReciboAgua : Form
    {
        public rptReciboAgua()
        {
            InitializeComponent();
        }

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            var BeanRPTMedidor = new Backend.Reportes.rptRecibos();
            BeanRPTMedidor.rptReciboAgua(crvLReciboAgua, 2, "2","01","2016");    
        }
    }
}
