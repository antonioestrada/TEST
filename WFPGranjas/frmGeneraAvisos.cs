using AccesoDatos;
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
    public partial class frmGeneraAvisos : Form
    {
        int op = 0;
        string parametro1 = "", parametro2 = "", parametro3 = "", parametro4 = "", parametro5 = "";

        public frmGeneraAvisos(int opI)
        {
            InitializeComponent();
            this.op = opI;
        }

        private void mSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        //Proceso de aplicar Cambio en avisos
        #region proceso de aplicar cambios en avisos
        public void editaValores(string param_Base, string valorAGurdar, Button btnOk, CheckBox checkEdo, Label men, Panel resul, int tipoParam)
        {
            //comprobamos si hay valor en el textbox
            if (rtbAviso.Text == "" || txtFooter1.Text=="")
            {
                //si esta vacio no continua
                //y muestra el panel y mensaje correspondiente con sus estilos
                resul.Visible = true;
                resul.BackColor = Color.OrangeRed;
                men.Text = "¡Ingresa los campos obligatorios!";
                men.ForeColor = Color.White;
            }
            else
            {
                //si continua llama editaParametro
                //1 para editar
                //param_Base es el parametro a modificar de la tabla cat_parametros
                //txtValor toma el valor del textbox a modificar
                // men y resul el el label y panel donde se mostrara el mensaje de resultado
                
                if (tipoParam == 1)
                {
                    editaParametros(1, param_Base, valorAGurdar, men, resul);
                    checkInActive1(rtbAviso, btnOk);
                }
                else if (tipoParam == 2)
                {
                    editaParametros(1, "param_Footer1", txtFooter1.Text, men, resul);
                    editaParametros(1, "param_Footer2", txtFooter2.Text, men, resul);
                    editaParametros(1, "param_Footer3", txtFooter3.Text, men, resul);
                    editaParametros(1, "param_Footer4", txtFooter4.Text, men, resul);
                    checkInActive2(txtFooter1, txtFooter2, txtFooter3, txtFooter4, btnOk);
                }
                checkEdo.Checked = false;
                cargaValores(op);
            }
        }
        #endregion

        #region edita parametros
        public void editaParametros(int tipoMov, string codeParam, string valor, Label lblMen, Panel pnlResul)
        {
            var BeanParam = new Backend.Catalogos.CParametros();
            var BeanCParam = new Backend.Catalogos.CParametros();

            //definimos los parametros que pasaran al sp
            Object[] parames = {
                tipoMov,
                codeParam,//codigo del parametro
                valor//valor a modificar
            };
            //cachamos el valor que retorna nuestro sp
            //result=0 Alta, Baja o Cambio exitoso
            //result=1 el registro ya existe
            //result=2 el registro no existe
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            resultado = BeanParam.editaParametros(parames);
            pnlResul.Visible = true;
            lblMen.Text = resultado.Mensaje;

            if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlResul.BackColor = Color.DeepSkyBlue;
                lblMen.ForeColor = Color.White;
                //this.Size = new Size(643, 350);
            }
            else if (resultado.Cve_resultado == 1)
            {
                pnlResul.BackColor = Color.Orange;
                lblMen.ForeColor = Color.White;
            }
            else if (resultado.Cve_resultado == 2)
            {
                pnlResul.BackColor = Color.OrangeRed;
                lblMen.ForeColor = Color.White;

            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region accion de cada checkAvisos1 y Footer
        public void accionCheck1(CheckBox checkIN, RichTextBox rtbIN, Button btnIN)
        {
            if (checkIN.Checked == true)
            {
                checkActive1(rtbIN, btnIN);
            }
            else
            {
                checkInActive1(rtbIN, btnIN);

            }
        }
        public void accionCheck2(CheckBox checkIN, TextBox textIN, TextBox textIN2, TextBox textIN3, TextBox textIN4, Button btnIN)
        {
            if (checkIN.Checked == true)
            {
                checkActive2(textIN, textIN2, textIN3, textIN4, btnIN);
            }
            else
            {
                checkInActive2(textIN, textIN2, textIN3, textIN4, btnIN);

            }
        }
        #endregion

        //ESTE CODIGO ES PARA LA TABLA DE PARAM
        #region carga valores tarifas de cobro cba y porcentajes en anualidades
        public void cargaValores(int op)
        {
            //op=1 es para bases cba
            if (op == 1)
            {
                lblInstruccion.Text = "Selecciona la casilla a modificar. Y finalmente confirma los cambios.";
                checkAv1.Text = "Aviso";
                checkAv2.Text = "Info";

                parametro1 = "param_Aviso";
                parametro2 = "param_Footer1";
                parametro3 = "param_Footer2";
                parametro4 = "param_Footer3";
                parametro5 = "param_Footer4";
            }

            var BeanCBeanParamAgua = new Backend.Catalogos.CParametros();
            ResultadoTrnx resultado = new ResultadoTrnx();
            //ejecutamos el sp donde nos mostrara los siguientes datos como valor definido en parametros

            //almacenamos datos en la variable global local
            //param_Aviso para obtener aviso
            resultado = BeanCBeanParamAgua.consultaParam(parametro1);
            rtbAviso.Text = resultado.Pvalor;

            //param_Footer1
            resultado = BeanCBeanParamAgua.consultaParam(parametro2);
            txtFooter1.Text = resultado.Pvalor;

            //param_Footer2
            resultado = BeanCBeanParamAgua.consultaParam(parametro3);
            txtFooter2.Text = resultado.Pvalor;

            //param_Footer3
            resultado = BeanCBeanParamAgua.consultaParam(parametro4);
            txtFooter3.Text = resultado.Pvalor;

            //param_Footer4
            resultado = BeanCBeanParamAgua.consultaParam(parametro5);
            txtFooter4.Text = resultado.Pvalor;


        }
        #endregion

        //activa/desactiva Check
        #region activa/desactiva check
        public void checkActive1(RichTextBox rtbIN, Button btnIN)
        {
            rtbIN.ReadOnly = false;
            rtbIN.Focus();
            btnIN.Visible = true;
        }
        public void checkInActive1(RichTextBox rtbIN, Button btnIN)
        {
            rtbIN.ReadOnly = true;
            btnIN.Visible = false;
            cargaValores(op);
        }

        private void btnSave1_Click(object sender, EventArgs e)
        {
            editaValores(parametro1, rtbAviso.Text, btnSave1, checkAv1, lblMensaje, pnlResult,1);
            
        }

        public void checkActive2(TextBox textIN, TextBox textIN2, TextBox textIN3, TextBox textIN4, Button btnIN)
        {
            textIN.ReadOnly = false;
            textIN2.ReadOnly = false;
            textIN3.ReadOnly = false;
            textIN4.ReadOnly = false;
            textIN.Focus();
            btnIN.Visible = true;
        }

        private void btnSave2_Click(object sender, EventArgs e)
        {
            editaValores(parametro2, txtFooter1.Text, btnSave2, checkAv2, lblMensaje, pnlResult, 2);
            
        }

        public void checkInActive2(TextBox textIN, TextBox textIN2, TextBox textIN3, TextBox textIN4, Button btnIN)
        {
            textIN.ReadOnly = true;
            textIN2.ReadOnly = true;
            textIN3.ReadOnly = true;
            textIN4.ReadOnly = true;
            btnIN.Visible = false;
            cargaValores(op);
        }
        #endregion
        
        private void checkAv1_CheckedChanged(object sender, EventArgs e)
        {
            accionCheck1(checkAv1, rtbAviso, btnSave1);
        }

        private void checkAv2_CheckedChanged(object sender, EventArgs e)
        {
            accionCheck2(checkAv2, txtFooter1, txtFooter2, txtFooter3, txtFooter4, btnSave2);
        }
        
        
        private void frmGeneraAvisos_Load(object sender, EventArgs e)
        {
            cargaValores(op);
        }

        
    }
}
