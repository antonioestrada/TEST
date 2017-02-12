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
    public partial class rptReciboCancela : Form
    {
        public rptReciboCancela(string lote, string idPago, int servicio, string cancelacion)
        {
            InitializeComponent();
            var BeanRPTMedidor = new Backend.Reportes.rptRecibos();
            if (servicio == 1)
                BeanRPTMedidor.rptReciboAntManto(crvLRecibos, 1, lote, idPago, cancelacion);
            if (servicio == 2)
                BeanRPTMedidor.rptReciboManto(crvLRecibos, 1, lote, idPago, cancelacion);
            else if (servicio == 3)
                BeanRPTMedidor.rptReciboAgua(crvLRecibos, 1, lote, idPago, cancelacion);
            else if (servicio == 4)
                BeanRPTMedidor.rptReciboConvenio(crvLRecibos, 1, lote, idPago, cancelacion);
            if (servicio == 6)
                BeanRPTMedidor.rptReciboExtra(crvLRecibos, 1, lote, idPago, cancelacion);
            else if (servicio == 7)
                BeanRPTMedidor.rptReciboAntAgua(crvLRecibos, 1, lote, idPago, cancelacion);
            else if (servicio == 8)
                BeanRPTMedidor.rptReciboAnualidad(crvLRecibos, 1, lote, idPago, cancelacion);
            else if (servicio == 5)
                BeanRPTMedidor.rptReciboICC(crvLRecibos, 1, lote, idPago, cancelacion);
            else if (servicio == 9)
                BeanRPTMedidor.rptReciboICCGral(crvLRecibos, 1, lote, idPago, cancelacion);
            else if (servicio == 10)
                BeanRPTMedidor.rptGestionICC(crvLRecibos, 1, lote, idPago, cancelacion);
            else if (servicio == 20)
                BeanRPTMedidor.rptGestionCMedidor(crvLRecibos, 1, lote, idPago, cancelacion);
        }

        private void rptReciboCancela_Load(object sender, EventArgs e)
        {
            WindowState = FormWindowState.Maximized;
        }
    }
}
