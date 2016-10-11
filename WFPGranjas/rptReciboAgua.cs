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
<<<<<<< HEAD
            BeanRPTMedidor.rptReciboAgua(crvLReciboAgua, 1, "4","01","2015");    
=======
            BeanRPTMedidor.rptReciboAgua(crvLReciboAgua, 2, "2","01","2016");    
>>>>>>> 44e50a4ad6b7aef6d99c7f694a318f65eb94add4
        }
    }
}
