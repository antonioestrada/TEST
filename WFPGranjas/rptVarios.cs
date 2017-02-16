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
    public partial class rptVarios : Form
    {
      //  int op = 0;
        public rptVarios(int opIN)
        {
            InitializeComponent();
            var BeanRPTMedidor = new Backend.Reportes.rptMedidores();
            if (opIN == 1)
                BeanRPTMedidor.rptRegLecturasConsu(crvVarios,3,"","");
        }

        private void rptVarios_Load(object sender, EventArgs e)
        {
            WindowState = FormWindowState.Maximized;
        }
    }
}
