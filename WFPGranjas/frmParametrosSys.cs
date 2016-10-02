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
    public partial class frmParametrosSys : Form
    {
        public frmParametrosSys()
        {
            InitializeComponent();
        }

        //ESTE CODIGO ES PARA LA TABLA DE PARAM
        #region carga valores CalculoManto
        public void cargaValores()
        {
            var BeanCBeanParamManto = new Backend.Catalogos.CParametros();
            ResultadoTrnx resultado = new ResultadoTrnx();
            //ejecutamos el sp donde nos mostrara los siguientes datos como valor definido en parametros
            resultado = BeanCBeanParamManto.consultaParam("param_EMAIL1");
            //almacenamos datos en la variable global local
            //EMAIL1 es para SERVIDOR DE CORREO
            txtServidorCorreo.Text = resultado.Pvalor;

            //EMAIL2 es para PUERTO
            resultado = BeanCBeanParamManto.consultaParam("param_EMAIL2");
            txtPuerto.Text = resultado.Pvalor;

            //EMAIL3 es para CUENTA
            resultado = BeanCBeanParamManto.consultaParam("param_EMAIL3");
            txtCuenta.Text = resultado.Pvalor;

            //EMAIL4 es para PASSWORD
            resultado = BeanCBeanParamManto.consultaParam("param_EMAIL4");
            txtPassword.Text = resultado.Pvalor;


        }
        #endregion

        #region edita parametros
        public void editaParametros(int tipoMov, string codeParam, string valor)
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
            pnlResult.Visible = true;
            lblMensaje.Text = resultado.Mensaje;

            if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlResult.BackColor = Color.DeepSkyBlue;
                lblMensaje.ForeColor = Color.White;
                //this.Size = new Size(643, 350);
            }
            else if (resultado.Cve_resultado == 1)
            {
                pnlResult.BackColor = Color.Orange;
                lblMensaje.ForeColor = Color.White;
            }
            else if (resultado.Cve_resultado == 2)
            {
                pnlResult.BackColor = Color.OrangeRed;
                lblMensaje.ForeColor = Color.White;

            }
            Conexion.FinalizarSesion();
        }
        #endregion

        private void frmParametrosSys_Load(object sender, EventArgs e)
        {
            cargaValores();
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            if (txtServidorCorreo.Text == "" || txtPuerto.Text == "" || txtCuenta.Text == "" || txtPassword.Text == "")
            {
                pnlResult.Visible = true;
                pnlResult.BackColor = Color.OrangeRed;
                lblMensaje.Text = "¡Ingresa los campos obligatorios!";
                lblMensaje.ForeColor = Color.White;
            }
            else
            {
                editaParametros(1, "param_EMAIL1", txtServidorCorreo.Text);
                editaParametros(1, "param_EMAIL2", txtPuerto.Text);
                editaParametros(1, "param_EMAIL3", txtCuenta.Text);
                editaParametros(1, "param_EMAIL4", txtPassword.Text);
                cargaValores();
            }
        }
    }
}
