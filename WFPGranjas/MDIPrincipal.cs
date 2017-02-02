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
using WFPGranjas.Backend.Catalogos;

namespace WFPGranjas
{
    public partial class MDIPrincipal : Form
    {
        //private int childFormNumber = 0;
        frmLogin frmlogin = new frmLogin();
        int idPerf = 0;
        string usuario = null;
        Globales vGlobal = new Globales();

        public MDIPrincipal()
        {
            InitializeComponent();
        }

        public MDIPrincipal(int idPerfil,string usuario)
        {
           this.idPerf=idPerfil;
            this.usuario = usuario;
            InitializeComponent();     


            /*for (int i=0; i < tbMenuPrincipal.TabPages.Count; i++) {
                MessageBox.Show(tbMenuPrincipal.TabPages[i].Name);
            }*/
           // tbMenuPrincipal.TabPages
        }
        #region code crispi perfiles
        public void generaMenu()
        {

            ////////////////////////////////////////////777
            ///     VALIDA MENU
            ///     
            Conexion.conectar();
          //  Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            Object[] parames = { idPerf };
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_principal_perfil_menu(" + idPerf + ",1,0)");

            // List<String> menus = new List<string>();
            Dictionary<int, String> menus = new Dictionary<int, String>();
            while (reader.Read())
            {
                menus.Add(Convert.ToInt16(reader.GetValue(0)), reader.GetValue(1).ToString());
            }
            Conexion.FinalizarSesion();
            depuraMenuPrincipal(menus);
            
        }
        public void depuraMenuPrincipal(Dictionary<int, String> menus)
        {
            int valida = 0, posicion = 0;
            Dictionary<int, String> menus2 = menus;
            MDIPrincipal frm = new MDIPrincipal();


            /* menuAManto.Visible = false;
             menuAAgua.Visible = false;
             menuAReportes.Visible = false;
             */
            for (int i = 0; i < tbMenuPrincipal.TabPages.Count; i++)
            {
                valida = 0;
                posicion = 0;
                // MessageBox.Show(tbMenuPrincipal.TabPages[i].Name);

                for (int y = 0; y < menus.Count; y++)
                {
                    var item = menus.ElementAt(y);

                    if (tbMenuPrincipal.TabPages[i].Name.Equals(item.Value.ToString()))
                    {
                        valida++;
                        posicion = y;
                    }
                }
                TabPage tp = tbMenuPrincipal.TabPages[i];
                if (valida == 0)
                {
                    tbMenuPrincipal.TabPages.Remove(tp);
                    depuraMenuPrincipal(menus2);
                }
                else
                {
                    //////////////////////////////////////////////////////////////////////
                    ///     SUBMENU
                    ///////////////////////////////////////////////////////////////////////     

                    var item = menus.ElementAt(posicion);
                    Dictionary<int, String> subMenu = consultaMenu(2, item.Key);
                    for (int y = 0; y < subMenu.Count; y++)
                    {
                        var subItem = subMenu.ElementAt(y);

                        //***      VALIDA  MENU ADMINISTRACION 
                        foreach (ToolStripMenuItem submenuCtrl in menuStripAdmon.Items)
                        {
                            if (submenuCtrl.Name.Equals(subItem.Value.ToString()))
                            {
                                submenuCtrl.Visible = true;

                                //////////////////////////////////////////////////////////////////////
                                ///     MODULO 
                                ///////////////////////////////////////////////////////////////////////   
                                Dictionary<int, String> modulo = consultaMenu(3, subItem.Key);

                                for (int x = 0; x < modulo.Count; x++)
                                {
                                    var moduloItem = modulo.ElementAt(x);
                                    submenuCtrl.DropDownItems[moduloItem.Value].Visible = true;
                                }
                                //////////////////// FINALIZA MODULO /////////////////////

                            }

                        }

                        //***      VALIDA  MENU FINANZAS 
                        foreach (ToolStripMenuItem submenuCtrl in menuStripFinanzas.Items)
                        {
                            if (submenuCtrl.Name.Equals(subItem.Value.ToString()))
                            {
                                submenuCtrl.Visible = true;

                                //////////////////////////////////////////////////////////////////////
                                ///     MODULO 
                                ///////////////////////////////////////////////////////////////////////   
                                Dictionary<int, String> modulo = consultaMenu(3, subItem.Key);

                                for (int x = 0; x < modulo.Count; x++)
                                {
                                    var moduloItem = modulo.ElementAt(x);
                                    submenuCtrl.DropDownItems[moduloItem.Value].Visible = true;
                                }
                                //////////////////// FINALIZA MODULO /////////////////////

                            }


                        }


                        //***      VALIDA  MENU CATALOGOS 
                        foreach (ToolStripMenuItem submenuCtrl in menuStripCat.Items)
                        {
                            if (submenuCtrl.Name.Equals(subItem.Value.ToString()))
                            {
                                submenuCtrl.Visible = true;

                                //////////////////////////////////////////////////////////////////////
                                ///     MODULO 
                                ///////////////////////////////////////////////////////////////////////   
                                Dictionary<int, String> modulo = consultaMenu(3, subItem.Key);

                                for (int x = 0; x < modulo.Count; x++)
                                {
                                    var moduloItem = modulo.ElementAt(x);
                                    submenuCtrl.DropDownItems[moduloItem.Value].Visible = true;
                                }
                                //////////////////// FINALIZA MODULO /////////////////////

                            }


                        }

                    }
                    //////////////////// FINALIZA SUBMENU /////////////////////
                }


            }
            menuAAyuda.Visible = true;

        }

        public Dictionary<int, String> consultaMenu(int tipo, int relacion)
        {

            // Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            Conexion.conectar();
             IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_principal_perfil_menu(" + idPerf + "," + tipo + "," + relacion + ")");

            Dictionary<int, String> menus = new Dictionary<int, String>();
            while (reader.Read())
            {
                menus.Add(Convert.ToInt16(reader.GetValue(0)), reader.GetValue(1).ToString());
            }
            Conexion.FinalizarSesion();
            return menus;
           
        }

        #endregion

        #region codigo de inicio mdi form


        private void ShowNewForm(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmPrcCuotas childFormGenCuotas = new frmPrcCuotas(2, usuario);
            childFormGenCuotas.StartPosition = FormStartPosition.CenterScreen;
            childFormGenCuotas.MdiParent = this;
            childFormGenCuotas.Show();
        }

        private void OpenFile(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmConvenios childFormCatPerfiles = new frmConvenios(3);
            childFormCatPerfiles.StartPosition = FormStartPosition.CenterScreen;
            childFormCatPerfiles.Text = "Registro de Convenios";

            childFormCatPerfiles.MdiParent = this;
            //  childFormCatPerfiles.Size = new Size(370, 365);
            childFormCatPerfiles.Show();
            /*
            OpenFileDialog openFileDialog = new OpenFileDialog();
            openFileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            openFileDialog.Filter = "Text Files (*.txt)|*.txt|All Files (*.*)|*.*";
            if (openFileDialog.ShowDialog(this) == DialogResult.OK)
            {
                string FileName = openFileDialog.FileName;
            }*/
        }

        private void SaveAsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            SaveFileDialog saveFileDialog = new SaveFileDialog();
            saveFileDialog.InitialDirectory = Environment.GetFolderPath(Environment.SpecialFolder.Personal);
            saveFileDialog.Filter = "Text Files (*.txt)|*.txt|All Files (*.*)|*.*";
            if (saveFileDialog.ShowDialog(this) == DialogResult.OK)
            {
                string FileName = saveFileDialog.FileName;
            }
        }

        private void ExitToolsStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();
        }


        private void ToolBarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            toolStrip.Visible = toolBarToolStripMenuItem.Checked;
        }

        private void StatusBarToolStripMenuItem_Click(object sender, EventArgs e)
        {
            statusStrip.Visible = statusBarToolStripMenuItem.Checked;
        }

        private void CascadeToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.Cascade);
        }

        private void TileVerticalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.TileVertical);
        }

        private void TileHorizontalToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.TileHorizontal);
        }

        private void ArrangeIconsToolStripMenuItem_Click(object sender, EventArgs e)
        {
            LayoutMdi(MdiLayout.ArrangeIcons);
        }

        private void CloseAllToolStripMenuItem_Click(object sender, EventArgs e)
        {
            foreach (Form childForm in MdiChildren)
            {
                childForm.Close();
            }
        }
#endregion
       
        private void tsExit_Click(object sender, EventArgs e)
        {
            ExitApplication();
        }

        private void fcCuotasM_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmPagoMto childFormCuotasManto = new frmPagoMto(2);
            childFormCuotasManto.MdiParent = this;
            childFormCuotasManto.StartPosition = FormStartPosition.CenterScreen;
            childFormCuotasManto.Text = "INGRESOS POR CUOTAS DE MANTENIMIENTO";
            childFormCuotasManto.Show();
        }

        private void searchToolStripMenuItem_Click(object sender, EventArgs e)
        {
            foreach (Form childForm in MdiChildren)
            {
                childForm.Close();
            }
        }        

        private void fcCuotasA_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmPagoMto childFormCuotasManto = new frmPagoMto(3);
            childFormCuotasManto.MdiParent = this;
            childFormCuotasManto.StartPosition = FormStartPosition.CenterScreen;
            childFormCuotasManto.Text = "INGRESOS POR CUOTAS DE AGUA";
            childFormCuotasManto.Show();
        }

        #region Muestra estatus
        public void muestraEstatus()
        {
            var BeanCEstatus = new Backend.Catalogos.CManzanaLotes();
            ResultadoTrnx resultado = new ResultadoTrnx();
            //ejecutamos el sp donde nos mostrara los siguientes datos como id del lote, nombre del colono, direccion, y superficie del lote
            resultado = BeanCEstatus.consultaPeriodos();
            //almacenamos el id del lote en la variable global local
            tsPeriodo.Text = resultado.periodoEstatus;
        }
        #endregion

        private void MDIPrincipal_Load(object sender, EventArgs e)
        {
            muestraEstatus();
        }
        
        private void MDIPrincipal_FormClosing(object sender, FormClosingEventArgs e)
        {

            Application.Exit();
        }
        public void ExitApplication()
        {
            // Display a message box asking users if they
            // want to exit the application.
            if (MessageBox.Show("Deseas salir?", "Sistema de Gestión de Cuotas",
                  MessageBoxButtons.YesNo, MessageBoxIcon.Question)
                  == DialogResult.Yes)
            {
                Application.Exit();
            }
        }

        private void cgBancos_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmCBancos childFormCatBancos = new frmCBancos();
            childFormCatBancos.MdiParent = this;
            childFormCatBancos.StartPosition = FormStartPosition.CenterScreen;
            childFormCatBancos.Size= new Size(543, 365);
            childFormCatBancos.Show();
        }

        private void cgColonos_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmCColonos childFormCatColonos = new frmCColonos();
            childFormCatColonos.MdiParent = this;
            childFormCatColonos.StartPosition = FormStartPosition.CenterScreen;
            childFormCatColonos.Size = new Size(573, 470);
            childFormCatColonos.Show();
        }

        private void cgManzanas_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmCManzanas childFormCatManzanas = new frmCManzanas();
            childFormCatManzanas.MdiParent = this;
            childFormCatManzanas.StartPosition = FormStartPosition.CenterScreen;
            childFormCatManzanas.Size = new Size(543, 365);
            childFormCatManzanas.Show();
        }

        private void cgLotes_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmCLotes childFormLotes = new frmCLotes();
            childFormLotes.MdiParent = this;
            childFormLotes.StartPosition = FormStartPosition.CenterScreen;
            childFormLotes.Size = new Size(543, 425);
            childFormLotes.Show();
        }

        private void cgMedidores_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmCMedidores childFormMedidores = new frmCMedidores();
            childFormMedidores.MdiParent = this;
            childFormMedidores.StartPosition = FormStartPosition.Manual;
            childFormMedidores.Size = new Size(560, 220);
            childFormMedidores.Show();
        }

        private void cgcMantenimiento_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmCCalculoManto childFormMantenimiento = new frmCCalculoManto();
            childFormMantenimiento.MdiParent = this;
            childFormMantenimiento.StartPosition = FormStartPosition.CenterScreen;
            childFormMantenimiento.Size = new Size(553, 340);
            childFormMantenimiento.Show();
        }

        private void csUsuarios_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmCUsuarios childFormCatUsuarios = new frmCUsuarios();

            childFormCatUsuarios.MdiParent = this;
            childFormCatUsuarios.Size = new Size(583, 365);
            childFormCatUsuarios.Show();
        }


        public void cerrarVentanas()
        {

            foreach (Form childForm in MdiChildren)
            {
                childForm.Close();
            }
        }

        private void csPuestos_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmCPuestos childFormCatPuestos = new frmCPuestos();

            childFormCatPuestos.MdiParent = this;
            childFormCatPuestos.Size = new Size(300, 365);
            childFormCatPuestos.Show();
        }

        private void csPerfiles_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmCPerfiles childFormCatPerfiles = new frmCPerfiles();

            childFormCatPerfiles.MdiParent = this;
            childFormCatPerfiles.Size = new Size(370, 365);
            childFormCatPerfiles.Show();
        }

        private void fcAManto_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmAnticipoMto childFormCatPerfiles = new frmAnticipoMto(2,false);
            childFormCatPerfiles.Text = "Anualidades y Anticipo de Mantenimiento";
            childFormCatPerfiles.StartPosition = FormStartPosition.CenterScreen;
            childFormCatPerfiles.MdiParent = this;
          //  childFormCatPerfiles.Size = new Size(370, 365);
            childFormCatPerfiles.Show();
        }

        private void acLecturas_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmRegLecturas childFormRegLect = new frmRegLecturas(usuario,1);
            childFormRegLect.StartPosition = FormStartPosition.CenterScreen;
            childFormRegLect.Text = "REGISTRO DE LECTURAS DEL MES";

            childFormRegLect.MdiParent = this;
            //  childFormCatPerfiles.Size = new Size(370, 365);
            childFormRegLect.Show();
        }

        private void acGeneracionCA_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmPrcCuotas childFormGenCuotas = new frmPrcCuotas(3, usuario);
            childFormGenCuotas.StartPosition = FormStartPosition.CenterScreen;
            //  childFormGenCuotas.Text=""
            childFormGenCuotas.MdiParent = this;
            childFormGenCuotas.Show();
        }

        private void fcAAgua_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmAnticipoMto childFormCatPerfiles = new frmAnticipoMto(3,false);
            childFormCatPerfiles.Text = "ANTICIPOS A CUOTAS DE AGUA";
            childFormCatPerfiles.StartPosition = FormStartPosition.CenterScreen;

            childFormCatPerfiles.MdiParent = this;
            //  childFormCatPerfiles.Size = new Size(370, 365);
            childFormCatPerfiles.Show();
        }
        private void arMedidores_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            rptMedidores childFormReporteLM = new rptMedidores();
            childFormReporteLM.MdiParent = this;
            childFormReporteLM.Show();
        }

        private void CSSistema_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmParametrosSys childFormParamSys = new frmParametrosSys();
            childFormParamSys.MdiParent = this;
            childFormParamSys.StartPosition = FormStartPosition.CenterScreen;
            childFormParamSys.Show();
        }

        private void cgcAgua_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmTarifasAgua childFormTarifaAgua = new frmTarifasAgua();
            childFormTarifaAgua.MdiParent = this;
            childFormTarifaAgua.StartPosition = FormStartPosition.CenterScreen;
            childFormTarifaAgua.Show();
        
        }

        private void fcCuotasEC_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmPagoMto childFormCuotasConvenio = new frmPagoMto(4);
            childFormCuotasConvenio.MdiParent = this;
            childFormCuotasConvenio.StartPosition = FormStartPosition.CenterScreen;
            childFormCuotasConvenio.Text = "INGRESOS POR CUOTAS DE CONVENIOS";
            childFormCuotasConvenio.Show();

        }

        private void fcCasaC_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmAnticipoMto childFormCatPerfiles = new frmAnticipoMto(5,false);
            childFormCatPerfiles.Text = "Ingresos por Servicios Casa Club";
            childFormCatPerfiles.StartPosition = FormStartPosition.CenterScreen;
            childFormCatPerfiles.MdiParent = this;

            childFormCatPerfiles.Size = new Size(849, 580);
            childFormCatPerfiles.Show();
        }

        private void arRegLecturas_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            rptReciboAgua childFormReporteRL = new rptReciboAgua(null,null,0);
            childFormReporteRL.MdiParent = this;
            childFormReporteRL.Show();
        }

        private void arRManto_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            rptReciboAgua childFormReporteRL = new rptReciboAgua(null,null,0);
            childFormReporteRL.MdiParent = this;
            childFormReporteRL.Show();
        }

       

        private void amImprimirAC_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmGeneraAvisos childAvisosCob = new frmGeneraAvisos();
            childAvisosCob.StartPosition = FormStartPosition.CenterScreen;
            childAvisosCob.MdiParent = this;
            childAvisosCob.Show();
        }

      

        private void acImprimirAC_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmGeneraAvisos childAvisosCob = new frmGeneraAvisos();
            childAvisosCob.StartPosition = FormStartPosition.CenterScreen;
            childAvisosCob.MdiParent = this;
            childAvisosCob.Show();
        }

        private void acCBA_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmRegLecturas childFormRegLect = new frmRegLecturas(usuario,2);
            childFormRegLect.StartPosition = FormStartPosition.CenterScreen;
            childFormRegLect.Text = "REGISTRO DE CBA MENSUAL";

            childFormRegLect.MdiParent = this;
            //  childFormCatPerfiles.Size = new Size(370, 365);
            childFormRegLect.Show();
        }

        private void fcCancelacionR_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmCancelacion childFormCatPerfiles = new frmCancelacion(5);
            childFormCatPerfiles.Text = "Cancelacion de recibos";
            childFormCatPerfiles.StartPosition = FormStartPosition.CenterScreen;
            childFormCatPerfiles.MdiParent = this;

            childFormCatPerfiles.Size = new Size(849, 580);
            childFormCatPerfiles.Show();

        }

        private void toolStripMenuItem11_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmPrcCuotas childFormGenCuotas = new frmPrcCuotas(0, usuario);
            childFormGenCuotas.StartPosition = FormStartPosition.CenterScreen;
            childFormGenCuotas.MdiParent = this;
            childFormGenCuotas.Show();
        }
        
        private void cierreDeMesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmPrcCuotas childFormGenCuotas = new frmPrcCuotas(0, usuario);
            childFormGenCuotas.StartPosition = FormStartPosition.CenterScreen;
            childFormGenCuotas.MdiParent = this;
            childFormGenCuotas.Show();
        }

        private void cgcCBA_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmCalculaCBAMensual childFormGenCBAMensual = new frmCalculaCBAMensual();
            childFormGenCBAMensual.StartPosition = FormStartPosition.CenterScreen;
            childFormGenCBAMensual.MdiParent = this;
            childFormGenCBAMensual.Show();
        }

        private void fcAAnualidades_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmAnticipoMto childFormCatPerfiles = new frmAnticipoMto(2, true);
            childFormCatPerfiles.Text = "Anticipos anuales";
            childFormCatPerfiles.StartPosition = FormStartPosition.CenterScreen;
            childFormCatPerfiles.MdiParent = this;

            childFormCatPerfiles.Size = new Size(849, 580);
            childFormCatPerfiles.Show();
        }
    }
    }
