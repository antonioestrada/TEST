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
    public partial class frmImprimeAvisosPDF : Form
    {
        string inPeriodoP = null;
        string inAnioP = null;

        public frmImprimeAvisosPDF(string inPeriodo, string inAnio)
        {
            InitializeComponent();
            inPeriodoP = inPeriodo;
            inAnioP = inAnio;
        }

        private void frmGeneraAvisosPDF_Load(object sender, EventArgs e)
        {
            webBrowser1.Navigate("http://localhost/cobranza/reportes/reporte_cobranza.php?inMes=" + inPeriodoP +"&inAnio=" + inAnioP);
            //webBrowser1.Navigate("http://localhost/graficas/GRAFICA1_DINAMICA.php?variable1=valor1&variable2=valor");
            this.Text = webBrowser1.StatusText;
        }
    }
}
