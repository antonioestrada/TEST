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
    public partial class rptMedidoresL : Form
    {
        int op = 0;
        public rptMedidoresL(int op)
        {
            InitializeComponent();
            this.op = op;
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
            BeanCLotesMza.consultaStatusComboRPT(cmbFiltroStatus);
            if (op == 4)
            {
                cmbFiltroMza.Enabled = false;
                cmbFiltroStatus.Enabled = false;
            }




                //   BeanRPTCobranza.rptAvisosCob(crvListadoMedidor, 1,"1","1","1");
            }

        private void btnClose_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            if (op == 1)
            {
                var BeanRPTMedidor = new Backend.Reportes.rptMedidores();
                if (cmbFiltroMza.Text == "Todos")
                    BeanRPTMedidor.rptListaMedidores(crvListadoMedidor, 1, "");
                else
                    BeanRPTMedidor.rptListaMedidores(crvListadoMedidor, 2, cmbFiltroMza.Text);
                checkEnviar.Visible = true;
            }
            //MTTO ADEUDOS
            if (op == 2)
            {
                var BeanReportes = new Backend.Reportes.rptReportesVarios();
                BeanReportes.rptAdeudoMtto(crvListadoMedidor, 1, 2, cmbFiltroMza.SelectedValue.ToString(), cmbFiltroStatus.SelectedValue.ToString());
            }
            //AGUA ADEUDOS
            if (op == 3)
            {
                var BeanReportes = new Backend.Reportes.rptReportesVarios();
                BeanReportes.rptAdeudoAgua(crvListadoMedidor, 1, 3, cmbFiltroMza.SelectedValue.ToString(), cmbFiltroStatus.SelectedValue.ToString());
            }

            //CONVENIOS ADEUDOS
            if (op == 4)
            {
                cmbFiltroMza.Enabled = false;
                cmbFiltroStatus.Enabled = false;
                var BeanReportes = new Backend.Reportes.rptReportesVarios();
                BeanReportes.rptAdeudoMtto(crvListadoMedidor, 1, 4, cmbFiltroMza.SelectedValue.ToString(), cmbFiltroStatus.SelectedValue.ToString());
            }

            //CASA CLUB ADEUDOS
            if (op == 5)
            {
                var BeanReportes = new Backend.Reportes.rptReportesVarios();
                BeanReportes.rptAdeudoMtto(crvListadoMedidor, 1, 5, cmbFiltroMza.SelectedValue.ToString(), cmbFiltroStatus.SelectedValue.ToString());
            }
            //EXTRAORDINARIAS ADEUDOS
            if (op == 6)
            {
                var BeanReportes = new Backend.Reportes.rptReportesVarios();
                BeanReportes.rptAdeudoMtto(crvListadoMedidor, 1, 6, cmbFiltroMza.SelectedValue.ToString(), cmbFiltroStatus.SelectedValue.ToString());
            }
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
            string htmlX = ""+
                "<html>"
                +"<body>"
                +"LISTADO DE MEDIDORES<hr></hr>"
                +"<BR></BR>"
                + "Se adjunta reporte en formato pdf."
                  + "<BR></BR>"
                    + "<BR></BR>"
                      + "<p>ASOCIACION DE COLONOS DE GRANJAS RESIDENCIALES DE TEQUISQUIAPAN, A.C.</p>"
                      + "<p>Tel. y Fax: 01 (414) 273 92 44 Apdo. Postal 106 e-mail: granjastx@prodigy.net.mx</p>"

                + "</body>"
                +"</html>";



            var BeanCBeanParamMail = new Backend.Catalogos.CParametros();
            ResultadoTrnx resultado = new ResultadoTrnx();
            //ejecutamos el sp donde nos mostrara los siguientes datos como valor definido en parametros
            resultado = BeanCBeanParamMail.consultaParam("param_EMAIL3");
            //MessageBox.Show(resultado.Pvalor+" destino: "+ txtDestino.Text+" asunto "+ vGlobal.etiAsuntoRep+" men "+ vGlobal.etiMensajeRep);
            //BeanCorreo.Mail(resultado.Pvalor,txtDestino.Text, vGlobal.etiMensajeRep+ htmlX,
            //vGlobal.etiAsuntoRep, lstArchivos);

            BeanCorreo.Mail(resultado.Pvalor, txtDestino.Text, htmlX,
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
