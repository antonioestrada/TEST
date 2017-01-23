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
    public partial class frmGeneraAvisosPDF : Form
    {
        string idLote = null;

        public frmGeneraAvisosPDF(string inidLote)
        {
            InitializeComponent();
            idLote = inidLote;
        }

        private void frmGeneraAvisosPDF_Load(object sender, EventArgs e)
        {
            webBrowser1.Navigate("http://localhost/html2pdf/app/reportes/GRAFICA1_DINAMICA.php?variable1="+idLote);
            //webBrowser1.Navigate("http://localhost/graficas/GRAFICA1_DINAMICA.php?variable1=valor1&variable2=valor");
        }
    }
}
