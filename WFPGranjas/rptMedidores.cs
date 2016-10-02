﻿using Backend;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WFPGranjas.Backend.Catalogos;

namespace WFPGranjas
{
    public partial class rptMedidores : Form
    {
        public rptMedidores()
        {
            InitializeComponent();
        }

        private void btnGeneraReporte_Click(object sender, EventArgs e)
        {
            var BeanRPTMedidor = new Backend.Reportes.rptMedidores();
            BeanRPTMedidor.rptListaMedidores(crvListadoMedidor, 1, "");
        }

        private void rptMedidores_Load(object sender, EventArgs e)
        {
            WindowState = FormWindowState.Maximized;
        //FormBorderStyle = FormBorderStyle.None;
            var BeanCLotesMza = new Backend.Catalogos.CManzanaLotes();
            BeanCLotesMza.consultaMazaComboRPT(cmbFiltroMza);
        }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            var BeanRPTMedidor = new Backend.Reportes.rptMedidores();
            if(cmbFiltroMza.Text=="Todos")
                BeanRPTMedidor.rptListaMedidores(crvListadoMedidor, 1, "");
            else
                BeanRPTMedidor.rptListaMedidores(crvListadoMedidor, 2, cmbFiltroMza.Text);
            checkEnviar.Visible = true;
        }

        private void btnEnviar_Click(object sender, EventArgs e)
        {
            Globales vGlobal = new Globales();
            //creamos nuestra lista de archivos a enviar
            List<string> lstArchivos = new List<string>();
            lstArchivos.Add(@"" + vGlobal.pathReportesPDF + "medidores.pdf");
            //lstArchivos.Add(@"c:\Recovery.txt");

            //creamos nuestro objeto de la clase que hicimos
            var BeanCorreo = new Backend.Procesos.CMail();
            string htmlX = "uyy "+
                "<html>"
                +"<body>hola<hr></hr>jhsjd</body>"
                +"</html>";
            var BeanCBeanParamMail = new Backend.Catalogos.CParametros();
            ResultadoTrnx resultado = new ResultadoTrnx();
            //ejecutamos el sp donde nos mostrara los siguientes datos como valor definido en parametros
            resultado = BeanCBeanParamMail.consultaParam("param_EMAIL3");
            //MessageBox.Show(resultado.Pvalor+" destino: "+ txtDestino.Text+" asunto "+ vGlobal.etiAsuntoRep+" men "+ vGlobal.etiMensajeRep);
            BeanCorreo.Mail(resultado.Pvalor,txtDestino.Text, vGlobal.etiMensajeRep+ htmlX,
                               vGlobal.etiAsuntoRep, lstArchivos);

            //y enviamos
            if (BeanCorreo.enviaMail())
            {
                MessageBox.Show("Se envio correctamento el reporte por correo electrónico.");

            }
            else
            {
                MessageBox.Show("No se envio el correo: " + BeanCorreo.error);

            }
        }

        private void checkEnviar_CheckedChanged(object sender, EventArgs e)
        {
            if (checkEnviar.Checked == true)
            {
                gbMail.Visible = true;
                txtDestino.Focus();
            }
            else
            {
                gbMail.Visible = false;
                txtDestino.Text = "";
            }

        }
    }
}
