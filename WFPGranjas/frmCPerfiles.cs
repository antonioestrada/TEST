using AccesoDatos;
using Backend;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using WFPGranjas.Backend.Catalogos;

namespace WFPGranjas
{
    public partial class frmCPerfiles : Form
    {
        int tipo_mov = 0, idPerf =0;
        //int idPerf = 0;
        private TreeViewCancelEventHandler checkForCheckedChildren;

        Globales vGlobal = new Globales();
        public frmCPerfiles()
        {
            InitializeComponent();
            definicionDGBancos();
        }

        #region Definicion de Estructura de Columnas DataGridView definicionDG salidas de almacén
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO DE SALIDAS DEL ALMACEN
        public void definicionDGBancos()
        {

            dgPerfiles.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgPerfiles, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgPerfiles.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id_perfil",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (String),
                                                  HeaderText = "Perfil",
                                                  Width = 200
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            dgPerfiles.Columns[0].Visible = false;
      
            //dgBancos.Columns[5].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            //dgBancos.Columns[5].DefaultCellStyle.Format = "##,##0.0000";

        }
        #endregion

        #region seleccionado de banco
        private void detalleBancos(DataGridView dGrid)
        {
            DataGridViewRow row = dGrid.CurrentRow;
            if (dGrid.RowCount > 0)
            {
                   try
                {
                    // Obtenemos el valor de la columna
                    Object value = row.Cells[0].Value;

                    // Establecemos el valor en el correspondiente control Label
                    if (value != null)
                    {
                        idPerf  =Convert.ToInt16(row.Cells[0].Value);
                        txtPerfil.Text = row.Cells[1].Value.ToString();
                      
                        MessageBox.Show("id: "+idPerf );
                    }

                }
                catch (Exception ext)
                {
                    MessageBox.Show("frmComprasMain || Error :" + ext);
                }
            }
        }
        #endregion

        #region comprueba si hay bancos a eliminar o modificar
        public int compruebaPuesto(DataGridView dGrid)
        {
            int retorno=0;
            DataGridViewRow row = dGrid.CurrentRow;
            if (dGrid.RowCount > 0)
            {
                try
                {
                    // Obtenemos el valor de la columna
                    Object value = row.Cells[0].Value;

                    // Establecemos el valor en el correspondiente control Label
                    if (value != null)
                    {
                        idPerf         = Convert.ToInt16(row.Cells[0].Value);
                        txtPerfil.Text     = row.Cells[1].Value.ToString();
                        
                    }

                }
                catch (Exception ext)
                {
                    MessageBox.Show("frmComprasMain || Error :" + ext);
                }
                retorno = 1;
            }
            return retorno;
        }
        #endregion

        #region movimientos ABC
        public void abcPerfiles(int tipoMov, String puesto)
        {
            var BeanUsuario = new Backend.Catalogos.CPerfiles();
            var BeanCUsuario = new Backend.Catalogos.CPerfiles();

            //definimos los parametros que pasaran al sp
            Object[] parames = {
                tipoMov,
                idPerf ,
                puesto

            };

          
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            resultado = BeanUsuario.altaBPerfil(parames);
            pnlResultBPuestos.Visible = true;
            lblMenPuestos.Text = resultado.Mensaje;
            
           if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlResultBPuestos.BackColor = Color.DeepSkyBlue;
                lblMenPuestos.ForeColor = Color.White;
                limpiaF();
                //actualiza el dgrid
                BeanCUsuario.consultaPerfiles(dgPerfiles,3);
            }
            else if (resultado.Cve_resultado == 2)
            {
                pnlResultBPuestos.BackColor = Color.Orange;
                lblMenPuestos.ForeColor = Color.White;
            }
            else if (resultado.Cve_resultado == 3)
            {
                pnlResultBPuestos.BackColor = Color.OrangeRed;
                lblMenPuestos.ForeColor = Color.White;

            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region Almacena permisos por perfil
        public void registraPermisos() {

            Boolean check = false;
            foreach (TreeNode nodeMenu in treeView1.Nodes)
            {
                check = nodeMenu.Checked;
                if (check)
                    registraMenuPerfil(idPerf, int.Parse(nodeMenu.Name)); // .Show(nodeMenu.Name);
                else
                    depuraMenuPerfil(idPerf, int.Parse(nodeMenu.Name));

                if (nodeMenu.Nodes.Count > 0)
                {
                    foreach (TreeNode nodeSubMenu in nodeMenu.Nodes)
                    {
                        check = nodeSubMenu.Checked;
                        if (check)
                            registraMenuPerfil(idPerf, int.Parse(nodeSubMenu.Name));  //MessageBox.Show(nodeSubMenu.Name);
                        else
                            depuraMenuPerfil(idPerf, int.Parse(nodeSubMenu.Name));

                        if (nodeSubMenu.Nodes.Count > 0)
                        {
                            foreach (TreeNode nodeModulo in nodeSubMenu.Nodes)
                            {
                                check = nodeModulo.Checked;
                                if (check)
                                    registraMenuPerfil(idPerf, int.Parse(nodeModulo.Name));// MessageBox.Show(nodeModulo.Name);
                                else
                                    depuraMenuPerfil(idPerf, int.Parse(nodeModulo.Name));

                            }
                            // If the current node has child nodes, call the CheckAllChildsNodes method recursively.
                            //  this.CheckAllChildNodes(node, nodeChecked);
                        }




                    }

                }
            }
            pnlResultBPuestos.Visible = true;
            lblMenPuestos.Text = "!Se han asignado los permisos correctamente¡";
            pnlResultBPuestos.BackColor = Color.DeepSkyBlue;
            lblMenPuestos.ForeColor = Color.White;


        }
        #endregion


        #region opcion de formulario define colores y tamaño de formulario
        public void opForm(string encabezadoMov, Color colorT, string opcion, int mov, ToolStripMenuItem bloqueaA, ToolStripMenuItem bloqueaB, ToolStripMenuItem bloqueaC)
        {
            if (mov == 4) 
                this.Size = new Size(755, 500);
            else
                this.Size = new Size(755, 400);
            lblEncabezadoPuesto.Text = encabezadoMov;
            pnlPrinBancos.BackColor =colorT;
            pnlEncabezado.BackColor =colorT;
            btnGuardarBancos.Text = opcion;
            bloqueaA.Enabled = false;
            bloqueaB.Enabled = false;
            bloqueaC.Enabled = false;
            btnGuardarBancos.Location = new Point(185, 117);
            btnCancelBancos.Location = new Point(266, 117);
            treeView1.Visible = false;
            pnlResultBPuestos.Location = new Point(29, 166);
            tipo_mov = mov;

        }
        #endregion

        private void mNuevoBanco_Click(object sender, EventArgs e)
        {
            opForm("Nuevo Perfil", Color.LightGreen, "Registrar", 1, mEditarUsuario, mEliminarUsuario, mPermisosUsuario);
        }
        private void mEditarBanco_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaPuesto(dgPerfiles);
            if(retornoB==1)
            opForm("Modificar Perfil", Color.Peru, "Guardar", 3, mNuevoUsuario, mEliminarUsuario, mPermisosUsuario);
        }

        private void mEliminarBanco_Click(object sender, EventArgs e)
        {
            int retornoB = compruebaPuesto(dgPerfiles);
            if (retornoB == 1)
                opForm("Eliminar Perfil", Color.IndianRed, "Eliminar", 2, mNuevoUsuario, mEditarUsuario, mPermisosUsuario);
        }

        public void limpiaF()
        {
            Backend.Utilerias limpia = new Backend.Utilerias();
            limpia.limpiarTextboxGroupBox(groupBoxForm);
            this.Size = new Size(370, 365);
            pnlPrinBancos.BackColor = Color.Green;
            pnlResultBPuestos.Visible = false;
            mNuevoUsuario.Enabled = true;
            mEditarUsuario.Enabled = true;
            mEliminarUsuario.Enabled = true;
            mPermisosUsuario.Enabled = true;
        }

        private void btnCancelBancos_Click(object sender, EventArgs e)
        {
            limpiaF();
        }

      

        private void mSalirBanco_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnGuardarBancos_Click(object sender, EventArgs e)
        {
            DateTime today = DateTime.Today;
            Backend.Utilerias util = new Backend.Utilerias();
            String fechaFormato = util.formatoFecha(today.ToString("d"));
            //1 para altas, 2 para bajas y 3 para cambios
            if (tipo_mov == 4)
                registraPermisos();                
             else
                abcPerfiles(tipo_mov, txtPerfil.Text);
        }

      

        private void dgUsuarios_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            pnlResultBPuestos.Visible = false;
            compruebaPuesto(dgPerfiles);
            // id_perf = idPerf ;
            if (tipo_mov == 4)
            {
                Dictionary<int, String> menus = generaMenu(1, 0);
                LlenadoMenu(menus);
                showCheckedNodesButton_Click();
            }
        }

        private void permisosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            opForm("Permisos Perfil", Color.Indigo, "Asignar", 4, mEditarUsuario, mEliminarUsuario, mNuevoUsuario);

            definicionTree();
        }

        private void frmUsuarios_Load(object sender, EventArgs e)
        {
            var BeanCUsuario = new Backend.Catalogos.CPuestos();
            // dgUsuarios.Rows.Clear();
            BeanCUsuario.consultaPuestos(dgPerfiles, 3);
 
        }
        public void definicionTree() {

            btnGuardarBancos.Location = new Point(185, 350);
            btnCancelBancos.Location = new Point(266, 350);
            pnlResultBPuestos.Location = new Point(29, 386);

            checkForCheckedChildren =
               new TreeViewCancelEventHandler(CheckForCheckedChildrenHandler);
            treeView1.Visible = true;
            treeView1.Location = new Point(10, 55);
            treeView1.Size = new Size(352, 258);
            treeView1.Anchor = AnchorStyles.Top | AnchorStyles.Left |
                AnchorStyles.Bottom | AnchorStyles.Right;
            treeView1.CheckBoxes = true;
            treeView1.AfterCheck += new System.Windows.Forms.TreeViewEventHandler(this.node_AfterCheck);

        }


        private void showCheckedNodesButton_Click()
        {
            // Disable redrawing of treeView1 to prevent flickering 
            // while changes are made.
            treeView1.BeginUpdate();

            // Collapse all nodes of treeView1.
            treeView1.CollapseAll();

            // Add the checkForCheckedChildren event handler to the BeforeExpand event.
            treeView1.BeforeExpand += checkForCheckedChildren;

            // Expand all nodes of treeView1. Nodes without checked children are 
            // prevented from expanding by the checkForCheckedChildren event handler.
            treeView1.ExpandAll();

            // Remove the checkForCheckedChildren event handler from the BeforeExpand 
            // event so manual node expansion will work correctly.
            treeView1.BeforeExpand -= checkForCheckedChildren;

            // Enable redrawing of treeView1.
            treeView1.EndUpdate();
        }
        // Prevent expansion of a node that does not have any checked child nodes.
        private void CheckForCheckedChildrenHandler(object sender,
            TreeViewCancelEventArgs e)
        {
            if (!HasCheckedChildNodes(e.Node)) e.Cancel = true;
        }

        // Returns a value indicating whether the specified 
        // TreeNode has checked child nodes.
        private bool HasCheckedChildNodes(TreeNode node)
        {
            if (node.Nodes.Count == 0) return false;
            foreach (TreeNode childNode in node.Nodes)
            {
                if (childNode.Checked)
                {
                 //   MessageBox.Show("-" + childNode.Name);
                    return true;
                }
                // Recursively check the children of the current child node.
                if (HasCheckedChildNodes(childNode)) return true;
            }
            return false;
        }


        private void CheckAllChildNodes(TreeNode treeNode, bool nodeChecked)
        {
            foreach (TreeNode node in treeNode.Nodes)
            {
                node.Checked = nodeChecked;
                if (node.Nodes.Count > 0)
                {
                    // If the current node has child nodes, call the CheckAllChildsNodes method recursively.
                    this.CheckAllChildNodes(node, nodeChecked);
                }
            }
        }

        // NOTE   This code can be added to the BeforeCheck event handler instead of the AfterCheck event.
        // After a tree node's Checked property is changed, all its child nodes are updated to the same value.
        private void node_AfterCheck(object sender, TreeViewEventArgs e)
        {
            // The code only executes if the user caused the checked state to change.
            if (e.Action != TreeViewAction.Unknown)
            {
                if (e.Node.Nodes.Count > 0)
                {
                    /* Calls the CheckAllChildNodes method, passing in the current 
                    Checked value of the TreeNode whose checked state changed. */
                    this.CheckAllChildNodes(e.Node, e.Node.Checked);
                }
            }
        }

        #region code Llena TreeView
        public void LlenadoMenu(Dictionary<int, String> menuRoot)
        {
            treeView1.Nodes.Clear();

            // Add nodes to treeView1.
            TreeNode nodeMenu, nodeSubMenu, nodeMdulo;
            Boolean validaMenu;
            int c2 = 0;
            for (int x = 0; x < menuRoot.Count; ++x)
            {
                // Add a root node.
                var item = menuRoot.ElementAt(x);

                c2++;
                nodeMenu = treeView1.Nodes.Add(item.Value.ToString());
                nodeMenu.Name = "" + item.Key;
                validaMenu = generaMenuPerfil(idPerf, item.Key);

                nodeMenu.Checked = validaMenu;


                Dictionary<int, String> subMenu = generaMenu(2, item.Key);
                for (int y = 0; y < subMenu.Count; ++y)
                {
                    c2++;
                    var subItem = subMenu.ElementAt(y);
                    // Add a node as a child of the previously added node.

                    nodeSubMenu = nodeMenu.Nodes.Add(subItem.Value.ToString());
                    nodeSubMenu.Name = "" + subItem.Key;
                    validaMenu = generaMenuPerfil(idPerf, subItem.Key);

                    nodeSubMenu.Checked = validaMenu;

                    Dictionary<int, String> modulos = generaMenu(3, subItem.Key);
                    for (int z = 0; z < modulos.Count; ++z)
                    {
                        c2++;
                        var itemMod = modulos.ElementAt(z);
                        nodeMdulo = nodeSubMenu.Nodes.Add(itemMod.Value.ToString());
                        nodeMdulo.Name = "" + itemMod.Key;
                        validaMenu = generaMenuPerfil(idPerf, itemMod.Key);

                        nodeMdulo.Checked = validaMenu;

                    }
                }
            }

        
        }
        #endregion

        #region code consulta menu
        public Dictionary<int, String> generaMenu(int tipo, int relacion)
        {
            Dictionary<int, String> menus;

            ////////////////////////////////////////////777
            ///     VALIDA MENU
            ///     

            Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            Object[] parames = { idPerf };
            IDataReader reader = Conexion.GDatos.TraerDataReaderSql("CALL gestion_granjas.sp_catalogo_CMenu(" + tipo + "," + relacion + ")");

            // List<String> menus = new List<string>();
            menus = new Dictionary<int, String>();
            while (reader.Read())
            {
                menus.Add(Convert.ToInt16(reader.GetValue(0)), reader.GetValue(1).ToString());
            }

            //  depuraMenuPrincipal(menus);
            Conexion.FinalizarSesion();
            return menus;
        }
        #endregion

        #region code consulta menu perfil
        public Boolean generaMenuPerfil(int perfil, int modulo)
        {
            Boolean result;

            ////////////////////////////////////////////777
            ///     VALIDA MENU
            ///     

            Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            Object[] parames = { perfil, modulo };
            IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_CGet_Menu", parames);
            result = Convert.ToBoolean(resul.GetValue(0));

            Conexion.FinalizarSesion();
            return result;
        }
        #endregion

        #region code registra menu perfil
        public Boolean registraMenuPerfil(int perfil, int modulo)
        {
            Boolean result;

            ////////////////////////////////////////////777
            ///     VALIDA MENU
            ///     

            Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            Object[] parames = { perfil, modulo };
            IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_CAdd_Permisos", parames);
            result = Convert.ToBoolean(resul.GetValue(0));

            Conexion.FinalizarSesion();
            return result;
        }
        #endregion

        #region code despura menu perfil
        public Boolean depuraMenuPerfil(int perfil, int modulo)
        {
            Boolean result;

            ////////////////////////////////////////////777
            ///     VALIDA MENU
            ///     

            Conexion.IniciarSesion(vGlobal.Server, vGlobal.BD, vGlobal.Usr, vGlobal.Pwd, vGlobal.BD);
            Object[] parames = { perfil, modulo };
            IDataReader resul = Conexion.GDatos.TraerDataReader("gestion_granjas.sp_catalogo_CDel_Permisos", parames);
            result = Convert.ToBoolean(resul.GetValue(0));

            Conexion.FinalizarSesion();
            return result;
        }
        #endregion



    }
}
