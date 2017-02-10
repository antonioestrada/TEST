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
        public rptReciboAgua(string lote, string idPago, int servicio)
        {
            InitializeComponent();
            var BeanRPTMedidor = new Backend.Reportes.rptRecibos();
            if (servicio == 1)
                BeanRPTMedidor.rptReciboAntManto(crvLRecibos, 1, lote, idPago, "2015");
            if (servicio == 2)
                BeanRPTMedidor.rptReciboManto(crvLRecibos, 1, lote, idPago, "2015");
            else if (servicio==3)
                BeanRPTMedidor.rptReciboAgua(crvLRecibos, 1, lote, idPago, "2015");
            else if (servicio == 4)
                BeanRPTMedidor.rptReciboConvenio(crvLRecibos, 1, lote, idPago, "2015");
            else if (servicio == 7)
                BeanRPTMedidor.rptReciboAntAgua(crvLRecibos, 1, lote, idPago, "2015");
        }
        /*public void rptAgua( string lote,string idPago ) {
            var BeanRPTMedidor = new Backend.Reportes.rptRecibos();
            BeanRPTMedidor.rptReciboAgua(crvLReciboAgua, 1, lote, idPago, "2015");

        }*/

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
         
        }

        private void btnManto_Click(object sender, EventArgs e)
        {
            var BeanRPTMedidor = new Backend.Reportes.rptRecibos();
            BeanRPTMedidor.rptReciboManto(crvLRecibos, 1, "4", "01", "2015");
        }

        private void rptReciboAgua_Load(object sender, EventArgs e)
        {
            WindowState = FormWindowState.Maximized;
        }
    }
}
