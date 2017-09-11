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
            //childFormGenCuotas.MdiParent = this;
            childFormGenCuotas.ShowDialog();
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
            childFormCatColonos.StartPosition = FormStartPosition.Manual;
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
            frmCMedidores childFormMedidores = new frmCMedidores(1);
            childFormMedidores.MdiParent = this;
            childFormMedidores.StartPosition = FormStartPosition.Manual;
            childFormMedidores.Size = new Size(642, 220);
            childFormMedidores.Show();
        }

        private void cgcMantenimiento_Click(object sender, EventArgs e)
        {
            
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
           // childFormGenCuotas.MdiParent = this;
            childFormGenCuotas.ShowDialog();
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
            rptMedidoresL childFormReporteLM = new rptMedidoresL(1);
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
            
        }

        private void arRegLecturas_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            rptVarios childFormReporteRL = new rptVarios(1);
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
            frmImprimeAvisos childAvisosCob = new frmImprimeAvisos();
            childAvisosCob.StartPosition = FormStartPosition.CenterScreen;
            childAvisosCob.MdiParent = this;
            childAvisosCob.Show();
        }

      

        private void acImprimirAC_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmImprimeAvisos childAvisosCob = new frmImprimeAvisos();
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
            
        }

        private void cgcCBA_Click(object sender, EventArgs e)
        {
            
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

        private void cuotasExtraordinariasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmPagoMto childFormCuotasConvenio = new frmPagoMto(6);
            childFormCuotasConvenio.MdiParent = this;
            childFormCuotasConvenio.StartPosition = FormStartPosition.CenterScreen;
            childFormCuotasConvenio.Text = "Cuotas extraordinarias";
            childFormCuotasConvenio.Show();
        }

        private void ingresosCasaClubToolStripMenuItem_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmPagoMto childFormCuotasConvenio = new frmPagoMto(5);
            childFormCuotasConvenio.MdiParent = this;
            childFormCuotasConvenio.StartPosition = FormStartPosition.CenterScreen;
            childFormCuotasConvenio.Text = "INGRESOS CASA CLUB";
            childFormCuotasConvenio.Show();
        }

        private void cuotasCasaClubToolStripMenuItem_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmAnticipoMto childFormCatPerfiles = new frmAnticipoMto(5, false);
            childFormCatPerfiles.Text = "Ingresos por Servicios Casa Club";
            childFormCatPerfiles.StartPosition = FormStartPosition.CenterScreen;
            childFormCatPerfiles.MdiParent = this;

            childFormCatPerfiles.Size = new Size(849, 580);
            childFormCatPerfiles.Show();
        }

        private void menuAAyuda_Click(object sender, EventArgs e)
        {

        }

        private void toolsMenu_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmPrcCuotas childFormGenCuotas = new frmPrcCuotas(0, usuario);
            childFormGenCuotas.StartPosition = FormStartPosition.CenterScreen;
            childFormGenCuotas.Text = "Cierre Mensual";
            //childFormGenCuotas.MdiParent = this;
            childFormGenCuotas.ShowDialog();
        }

        private void calculoDeCBAToolStripMenuItem_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmCalculaCBAMensual childFormGenCBAMensual = new frmCalculaCBAMensual();
            childFormGenCBAMensual.StartPosition = FormStartPosition.CenterScreen;
            childFormGenCBAMensual.MdiParent = this;
            childFormGenCBAMensual.Show();
        }

        private void cgcaTarifas_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //opcion 1 es para tarifas de agua
            frmTarifasAgua childFormTarifaAgua = new frmTarifasAgua(1);
            childFormTarifaAgua.MdiParent = this;
            childFormTarifaAgua.StartPosition = FormStartPosition.CenterScreen;
            childFormTarifaAgua.Text = "Tarifas de Cuotas de Agua";
            childFormTarifaAgua.Show();
        }

        private void cgcmTarifas_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmCCalculoManto childFormMantenimiento = new frmCCalculoManto();
            childFormMantenimiento.MdiParent = this;
            childFormMantenimiento.StartPosition = FormStartPosition.CenterScreen;
            childFormMantenimiento.Size = new Size(553, 340);
            childFormMantenimiento.Show();
        }

        private void cgcmDescuentos_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //opcion 2 es para descuentos en anualidades de mantenimiento
            frmTarifasAgua childFormTarifaAgua = new frmTarifasAgua(2);
            childFormTarifaAgua.MdiParent = this;
            childFormTarifaAgua.StartPosition = FormStartPosition.CenterScreen;
            childFormTarifaAgua.Text = "Porcentaje de Descuento en Anualidades";
            childFormTarifaAgua.Show();
        }

        private void cgConceptosCC_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmCConceptosCC childFormCatColonos = new frmCConceptosCC();
            childFormCatColonos.MdiParent = this;
            childFormCatColonos.StartPosition = FormStartPosition.Manual;
            childFormCatColonos.Size = new Size(506, 367);

            childFormCatColonos.Show();
        }

        private void aaImprimirAv_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmImprimeAvisos childAvisosCob = new frmImprimeAvisos();
            childAvisosCob.StartPosition = FormStartPosition.CenterScreen;
            childAvisosCob.MdiParent = this;
            childAvisosCob.Show();
        }

        private void aaAvisos_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmGeneraAvisos childGenAvisos = new frmGeneraAvisos(1);
            childGenAvisos.StartPosition = FormStartPosition.Manual;
            childGenAvisos.MdiParent = this;
            childGenAvisos.Show();
        }

        private void acCambioMedidor_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmCMedidores childFormMedidores = new frmCMedidores(2);
            childFormMedidores.MdiParent = this;
            childFormMedidores.StartPosition = FormStartPosition.Manual;
            childFormMedidores.Size = new Size(642, 220); 
            childFormMedidores.Show();
        }

        private void menuFReportes_Click(object sender, EventArgs e)
        {

        }

        private void frIngresosDiarios_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            rptIngresosD childGenAvisos = new rptIngresosD();
            childGenAvisos.StartPosition = FormStartPosition.Manual;
            childGenAvisos.MdiParent = this;
            childGenAvisos.Show();
        }

        private void cgcaACBA_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmAsignaCBA childGenAvisos = new frmAsignaCBA();
            childGenAvisos.StartPosition = FormStartPosition.Manual;
            childGenAvisos.MdiParent = this;
            childGenAvisos.Show();
        }

        private void menuAReportes_Click(object sender, EventArgs e)
        {

        }

        private void frAdeudos_Click(object sender, EventArgs e)
        {
            
        }

        private void mantenimientoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            rptMedidoresL childFormReporteLM = new rptMedidoresL(2);
            childFormReporteLM.MdiParent = this;
            childFormReporteLM.Show();
        }

        private void consumoDeAguaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            rptMedidoresL childFormReporteLM = new rptMedidoresL(3);
            childFormReporteLM.MdiParent = this;
            childFormReporteLM.Show();
        }

        private void cuotasExtraordinariasToolStripMenuItem_Click_1(object sender, EventArgs e)
        {
           
            cerrarVentanas();
            rptMedidoresL childFormReporteLM = new rptMedidoresL(6);
            childFormReporteLM.MdiParent = this;
            childFormReporteLM.Show();
        
    }

        private void cuotasCasaClubToolStripMenuItem1_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            rptMedidoresL childFormReporteLM = new rptMedidoresL(5);
            childFormReporteLM.MdiParent = this;
            childFormReporteLM.Show();
        }

        private void conveniosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            rptMedidoresL childFormReporteLM = new rptMedidoresL(4);
            childFormReporteLM.MdiParent = this;
            childFormReporteLM.Show();
        }

        private void fcConsultaR_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmConsultaRecibo childFormCatPerfiles = new frmConsultaRecibo(5);
            childFormCatPerfiles.Text = "Consulta de Recibos";
            childFormCatPerfiles.StartPosition = FormStartPosition.CenterScreen;
            childFormCatPerfiles.MdiParent = this;

            childFormCatPerfiles.Size = new Size(849, 580);
            childFormCatPerfiles.Show();
        }

        private void bonificacionesToolStripMenuItem_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            //if (childFormCatUsuarios ==null)
            frmAnticipoMto childFormCatPerfiles = new frmAnticipoMto(8, false);
            childFormCatPerfiles.Text = "Bonificaciones de Agua";
            childFormCatPerfiles.StartPosition = FormStartPosition.CenterScreen;

            childFormCatPerfiles.MdiParent = this;
            //  childFormCatPerfiles.Size = new Size(370, 365);
            childFormCatPerfiles.Show();
        }

        private void arConsumos_Click(object sender, EventArgs e)
        {

            
        }

        private void menuCGeneral_Click(object sender, EventArgs e)
        {

        }

        private void menuSGenerar_Click(object sender, EventArgs e)
        {
            
        }

        private void consumosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            rptConsumos_Filtros rpt = new rptConsumos_Filtros();
            rpt.MdiParent = this;
            rpt.Show();
        }

        private void arcConsumoCBA_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmReporte_Consumos childFormConsumos = new frmReporte_Consumos(1);
            childFormConsumos.MdiParent = this;
            childFormConsumos.StartPosition = FormStartPosition.CenterScreen;
            childFormConsumos.Show();
        }

        private void arcConsumosFact_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmReporte_Consumos childFormConsumos = new frmReporte_Consumos(2);
            childFormConsumos.MdiParent = this;
            childFormConsumos.StartPosition = FormStartPosition.CenterScreen;
            childFormConsumos.Show();
        }

        private void sdkGMantenimiento_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmSDKContableVista childFormSDK = new frmSDKContableVista(1);
            childFormSDK.MdiParent = this;
            childFormSDK.StartPosition = FormStartPosition.CenterScreen;
            childFormSDK.Show();
        }

        private void sdkGAgua_Click(object sender, EventArgs e)
        {
            cerrarVentanas();
            frmSDKContableVista childFormSDK = new frmSDKContableVista(2);
            childFormSDK.MdiParent = this;
            childFormSDK.StartPosition = FormStartPosition.CenterScreen;
            childFormSDK.Show();
        }
    }
    }
