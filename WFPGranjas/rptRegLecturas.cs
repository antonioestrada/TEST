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
    public partial class rptRegLecturas : Form
    {
        string anio = "";
        string periodo = "";
        public rptRegLecturas( string inPeriodo, string inAnio)
        {
            this.periodo = inPeriodo;
            this.anio = inAnio;
            InitializeComponent();
        }

        private void rptRegLecturas_Load(object sender, EventArgs e)
        {
            WindowState = FormWindowState.Maximized;
            var BeanRPTMedidor = new Backend.Reportes.rptMedidores();
            BeanRPTMedidor.rptRegLecturas(crvRegMedidor, 3, periodo, anio);
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }
    }
}
