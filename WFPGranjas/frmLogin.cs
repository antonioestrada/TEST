using AccesoDatos;
using Backend;
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
    public partial class frmLogin : Form
    {
        public frmLogin()
        {
            InitializeComponent();
        }

        private void pbEntrar_Click(object sender, EventArgs e)
        {
            Globales vGlobal = new Globales();
            Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            Object[] parames = { txtUser.Text, txtPassword.Text };
            IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_frm_Login_ValidaUsr", parames);
            if (Convert.ToInt16(resul.GetValue(0))>=1)
            {
               // lblPerfil.Text = resul.GetValue(1).ToString();
                this.Hide();
                MDIPrincipal principal = new MDIPrincipal(Convert.ToInt16(resul.GetValue(1)));
                principal.generaMenu();
                principal.Show();

            }
            else {
              //  MDIPrincipal principal = new MDIPrincipal();
               // principal.pnlMenuPrincipal.Visible = true;
                MessageBox.Show("Usuario y/o Contraseña incorrecta");
                txtUser.Text = "";
                txtPassword.Text = "";
                txtUser.Focus();
            }
            Conexion.FinalizarSesion();


        }

        private void frmLogin_Load(object sender, EventArgs e)
        {

        }
    }
}
