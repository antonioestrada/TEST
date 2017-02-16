using AccesoDatos;
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

namespace WFPGranjas
{
    public partial class frmRegLecturas : Form
    {
        Int32 id_medidor = 0, id_manzana=0;
        int mesG = 0, anioG = 0;
        //|||||||||||||||inicio tonka-1216|||||||||||||||||
        String periodo = null;
      
    
        string usuario = null;
        int opcion = 0;
        //|||||||||||||||fin tonka-1216071216|||||||||||||||||
        public frmRegLecturas(string usuario, int opcion)
        {
            InitializeComponent();
            definicionDGListado();
            this.usuario = usuario;
            this.opcion = opcion;
            iniciaOpcion();


        }
        
        //opcion 1 reg lecturas 2 registro cba
        #region determina componentes con que opcion entro
        public void iniciaOpcion()
        {
            //carga los periodos activos para cada servicio.
            consultaPer(opcion);
            //es para registro lecturas
            if (this.opcion == 1)
            {
                lblEtiqueta.Text = "Lectura Actual:";
                lblLecAnterior.Visible = true;
                txtLecAnterior.Visible = true;
                lblConsumo.Visible = true;
                txtConsumo.Visible = true;
                pnlCaptura.BackColor = Color.SteelBlue;
                pnlPrinBancos.BackColor = Color.SteelBlue;
            }
            //es para registro lecturas
            if (this.opcion == 2)
            {
                lblEtiqueta.Text = "CBA Asignada:";
                lblLecAnterior.Visible = false;
                txtLecAnterior.Visible = false;
                lblConsumo.Visible = false;
                txtConsumo.Visible = false;
                pnlCaptura.BackColor = Color.Orange;
                pnlPrinBancos.BackColor = Color.Orange;
            }
        }
        #endregion

        //definicion de datagrid para la consulta
        #region Definicion de Estructura de Columnas DataGridView listado medidores
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGListado()
        {

            dgListado.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgListado, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgListado.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id_medidor",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Int32),
                                                  HeaderText = "id_manzana",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Nombre",
                                                  Width = 300
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Direccion",
                                                  Width = 110
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Contrato",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Medidor",
                                                  Width = 90
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "CBA",
                                                  Width = 90
                                              }
                                      });
            dgListado.Columns[0].Visible = false;
            dgListado.Columns[1].Visible = false;
            dgListado.Columns[4].Visible = false;
            //dgListado.Columns[4].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            //dgListado.Columns[4].DefaultCellStyle.Format = "##,##0.00";
            //dgListado.Columns[6].Visible = false;

        }
        #endregion

        #region listadoSP
        public void listadoDG(DataGridView dg, int op, int inIdMzana, string inLote, string inNombre)
        {
            var BeanListadoMed = new Backend.Procesos.CRegLecturas();
            BeanListadoMed.consultaListadoMedidores(dg, op,inIdMzana,inLote,inNombre);
            compruebaRenMedidor(dg);
            //id del medidor, mes, periodo, anio, opcion=2 es para consultar medidores y 3 para consultar CBA asignada
            valoresLecturas(id_medidor, mesG, anioG,this.opcion);
            calcula_consumo();
        }
        #endregion

        #region comprueba si hay  modificar Renglon medidor para lectura
        public int compruebaRenMedidor(DataGridView dGrid)
        {
            int retorno = 0;
            DataGridViewRow row = dGrid.CurrentRow;
            if (dGrid.RowCount > 0)
            {
                try
                {
                    // Obtenemos el valor de la columna
                    Object value = row.Cells[0].Value;
                    int currenR = dgListado.SelectedRows[0].Index;
                    // Establecemos el valor en el correspondiente control Label
                    if (value != null)
                    {
                        id_medidor = Convert.ToInt32(row.Cells[0].Value);
                        id_manzana = Convert.ToInt32(row.Cells[1].Value);
                        lblColono.Text = row.Cells[2].Value.ToString();
                        lblDireccion.Text = row.Cells[3].Value.ToString();
                        lblContrato.Text = row.Cells[4].Value.ToString();
                        lblMedidor.Text = row.Cells[5].Value.ToString();
                        valoresRen(dgListado, currenR);
                        calcula_consumo();
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

        #region toma valores de seleccion del listado
        public void valoresRen(DataGridView dg, int inRow)
        {
            id_medidor = Convert.ToInt32(dg.SelectedRows[0].Cells[0].Value.ToString());
            id_manzana = Convert.ToInt32(dg.SelectedRows[0].Cells[1].Value.ToString());
            lblColono.Text = dg.SelectedRows[0].Cells[2].Value.ToString();
            lblDireccion.Text = dg.SelectedRows[0].Cells[3].Value.ToString();
            lblContrato.Text = dg.SelectedRows[0].Cells[4].Value.ToString();
            lblMedidor.Text = dg.SelectedRows[0].Cells[5].Value.ToString();
            //id del medidor, mes, periodo, anio, opcion=2 es para consultar medidores y 3 para consultar CBA asignada
            valoresLecturas(id_medidor, mesG, anioG,this.opcion);
            calcula_consumo();
        }
        #endregion

        #region toma valores de Cada Medidor para lecturas
        public void valoresLecturas(int inIDMedidor, int inPeriodo, int inAnio, int inOp)
        {
            if (inOp == 1)
                inOp = 2;
            else if (inOp == 2)
                inOp = 3;
            //definimos los parametros que pasaran al sp
            Object[] parames = {
                inOp,
                inIDMedidor,//id_medidor solo agregamos el parametro id_lote para continuar con la ejecucion del sp
                inPeriodo,
                inAnio,
                0,//lectura la dejamos en cero no usamos en esta ocasion
                0//consumo en 0 no usamos en esta ocasion
            };
            //cachamos el valor que retorna nuestro sp
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            var BeanLecturas = new Backend.Procesos.CRegLecturas();
            resultado = BeanLecturas.muestraLecturasAgua(parames);
            lblLecAnterior.Text = "Lectura Anterior ["+resultado.periodoAnt.ToString().PadLeft(2, '0') + "/"+resultado.anioAnt.ToString().PadLeft(4, '0') +"]:";
            txtLecActual.Text = resultado.lectura.ToString();
            txtLecAnterior.Text = resultado.lecturaAnt.ToString();
            Conexion.FinalizarSesion();
        }
        #endregion

        #region Registra lecturas
        public void registraLecturas(int inIDMedidor, int inPeriodo, int inAnio, int inLectura,int inConsumo, int inOp)
        {
            //inOp=1 registra lecturas y retorna la lectura
            //inOp=4 registra CBA mensual y retorna el CBA asignado
            if (inOp == 1)
                inOp = 1;
            else if (inOp == 2)
                inOp = 4;
            //definimos los parametros que pasaran al sp
            Object[] parames = {
                inOp,
                inIDMedidor,//id_lote solo agregamos el parametro id_lote para continuar con la ejecucion del sp
                inPeriodo,
                inAnio,
                inLectura,
                inConsumo
            };
            //cachamos el valor que retorna nuestro sp
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            var BeanLecturas = new Backend.Procesos.CRegLecturas();
            resultado = BeanLecturas.muestraLecturasAgua(parames);
            //lblLecAnterior.Text = "Lectura Anterior [" + resultado.periodoAnt.ToString().PadLeft(2, '0') + "/" + resultado.anioAnt.ToString().PadLeft(4, '0') + "]:";
            //txtLecActual.Text = resultado.lectura.ToString();
            //txtLecAnterior.Text = resultado.lecturaAnt.ToString();
            Conexion.FinalizarSesion();
        }
        #endregion

        #region muestra y oculta Flujo
        public void muestraDatos()
        {
            cmbFiltroMza.SelectedIndex = 0;
            btnFiltrar.Enabled = true;
            dgListado.Enabled = true;
            txtColono.Enabled = true;
            //Object[] parames = { 1, 0, "", "" };
            listadoDG(dgListado,1,0,"","");
            compruebaRenMedidor(dgListado);
            //muestra lecturas y periodos
            //id del medidor, mes, periodo, anio, opcion=2 es para consultar medidores y 3 para consultar CBA asignada
            valoresLecturas(id_medidor, mesG, anioG,this.opcion);
            gbCaptura.Visible = true;
            calcula_consumo();
        }

        public void ocultaDatos()
        {
            btnFiltrar.Enabled = false;
            dgListado.Enabled = false;
            txtColono.Enabled = false;
            dgListado.Rows.Clear();
            gbCaptura.Visible = false;
        }
        #endregion

        private void mSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        public void cargaListado()
        {
            //carga grid listado de informacion para lectura
            //Object[] parames = { 1, 0, "", "" };

            var BeanListadoMed = new Backend.Procesos.CRegLecturas();
            BeanListadoMed.consultaListadoMedidores(dgListado, 1,0,"","");
        }
        private void frmRegLecturas_Load(object sender, EventArgs e)
        {
            //carga combo del catalogo de  manzanas 
            var BeanCLotesMza = new Backend.Catalogos.CManzanaLotes();
            BeanCLotesMza.consultaMazaComboRPT(cmbFiltroMza);
           
        }

        private void btnFiltrar_Click(object sender, EventArgs e)
        {
            //carga grid listado de informacion para lectura
            if (cmbFiltroMza.Text == "Todos")
            {
                //Object[] parames = { 1, 0, "", "" };
                listadoDG(dgListado, 1,0,"","");
            }
            else
            {
                //Object[] parames = { 2, Convert.ToInt32(cmbFiltroMza.SelectedValue.ToString()), "", "" };
                listadoDG(dgListado, 2, Convert.ToInt32(cmbFiltroMza.SelectedValue.ToString()), "", "");
            }
        }

        private void dgListado_CellMouseClick(object sender, DataGridViewCellMouseEventArgs e)
        {
            compruebaRenMedidor(dgListado);
        }

        private void btnPrimero_Click(object sender, EventArgs e)
        {
            if(dgListado.RowCount>0)
            {
               
                dgListado.Rows[0].Selected = true;
                dgListado.FirstDisplayedScrollingRowIndex = 0;
                valoresRen(dgListado, 0);
               //lblColono.Text= dgListado.Rows[1].Cells[2].Value.ToString();
            }

        }

        private void btnAnterior_Click(object sender, EventArgs e)
        {

            int countGrid = dgListado.RowCount;
            int currenR = dgListado.SelectedRows[0].Index;
            if (countGrid > 0)
            {
               
                if (currenR == 0)
                    MessageBox.Show("No hay mas registros");
                else
                {
                    dgListado.Focus();
                    dgListado.Rows[currenR - 1].Selected = true;
                    dgListado.FirstDisplayedScrollingRowIndex = currenR - 1;
                    valoresRen(dgListado, currenR - 1);

                }
            }
        }

        private void btnSiguiente_Click(object sender, EventArgs e)
        {
            int countGrid = dgListado.RowCount;
            int currenR = dgListado.SelectedRows[0].Index;
            if (countGrid > 0)
            {
                if (this.opcion == 1)
                {
                    //MessageBox.Show(txtLecActual.Text);
                    if (Int16.Parse(txtLecActual.Text) >= Int16.Parse(txtLecAnterior.Text))
                    {
                        calcula_consumo();
                        // MessageBox.Show(txtConsumo.Text);
                        if (Int16.Parse(txtLecActual.Text) == 0)
                        {
                            //opcion1 es para registrar LECTURAS
                            //opcion2 es para registrar CBA
                            registraLecturas(id_medidor, mesG, anioG, Int32.Parse(txtLecAnterior.Text), Int32.Parse(txtConsumo.Text), this.opcion);
                        }
                        else
                        {
                            //opcion1 es para registrar LECTURAS
                            //opcion2 es para registrar CBA
                            registraLecturas(id_medidor, mesG, anioG, Int32.Parse(txtLecActual.Text), Int32.Parse(txtConsumo.Text), this.opcion);
                        }

                        dgListado.Focus();
                        if (countGrid - 1 == currenR)
                            MessageBox.Show("No hay mas registros");
                        else
                        {

                            dgListado.Rows[currenR + 1].Selected = true;
                            dgListado.FirstDisplayedScrollingRowIndex = currenR;
                            valoresRen(dgListado, currenR + 1);
                        }
                    }
                    else
                        MessageBox.Show("La lectura debe ser mayor o igual a la lectura anterior.", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else if (this.opcion == 2)
                {
                    //MessageBox.Show(txtLecActual.Text);
                    if (Int16.Parse(txtLecActual.Text) >0)
                    {
                        calcula_consumo();
                        // MessageBox.Show(txtConsumo.Text);
                        if (Int16.Parse(txtLecActual.Text) == 0)
                        {
                            //opcion1 es para registrar LECTURAS
                            //opcion2 es para registrar CBA
                            registraLecturas(id_medidor, mesG, anioG, Int32.Parse(txtLecAnterior.Text), Int32.Parse(txtConsumo.Text), this.opcion);
                        }
                        else
                        {
                            //opcion1 es para registrar LECTURAS
                            //opcion2 es para registrar CBA
                            registraLecturas(id_medidor, mesG, anioG, Int32.Parse(txtLecActual.Text), Int32.Parse(txtConsumo.Text), this.opcion);
                        }

                        dgListado.Focus();
                        if (countGrid - 1 == currenR)
                            MessageBox.Show("No hay mas registros");
                        else
                        {

                            dgListado.Rows[currenR + 1].Selected = true;
                            dgListado.FirstDisplayedScrollingRowIndex = currenR;
                            valoresRen(dgListado, currenR + 1);
                        }
                    }
                    else
                        MessageBox.Show("Atención. CBA asignado debe ser mayor a CERO.", "Validación", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
            }
        }
        
        private void btnCapturaLec_Click(object sender, EventArgs e)
        {
            //define bean para obtener periodo actual de la tabla cat_periodos
            var BeanCPeriodoActual = new Backend.Procesos.PrcAnticipos();
            //obtiene el periodo actual de la tabla cat_periodos
            int periodoActual = BeanCPeriodoActual.obtienePeriodoActual();
            //parames es para la opcion 4 q es meses cerrados de gestion de cuotas para CBA
            Object[] parames = {4};
            int mesesCerrados = BeanCPeriodoActual.obtieneBitacoraCuotas(parames);
            

            periodo = cmbPeriodos.SelectedValue.ToString();
            //opcion 1 es para registro de lecturas
            if (opcion == 1)
            {
                if (periodoActual != int.Parse(periodo))
                {
                    object itemFirst = cmbPeriodos.SelectedItem;
                    Dictionary<String, String> periodos = new Dictionary<String, String>();
                    String mensajePeriodo = "Debe de realizar primero el cierre de mes, ";
                    mensajePeriodo += Environment.NewLine;
                    mensajePeriodo += "Antes del registro de lecturas del mes de " + cmbPeriodos.Text;
                    MessageBox.Show(mensajePeriodo);
                }
                else
                {


                    //MessageBox.Show("" + maskPeriodo.Text.Trim() + "- contenido", maskPeriodo.Text+" length"+ longCad);
                    //MessageBox.Show(""+Convert.ToInt16(cmbPeriodos.SelectedValue.ToString().Length + cmbAnios.SelectedValue.ToString().Length));
                    if (Convert.ToInt16(cmbPeriodos.SelectedValue.ToString().Length + cmbAnios.SelectedValue.ToString().Length) == 6)
                    {
                        //int mes = Int16.Parse(maskPeriodo.Text.Substring(0, 2));
                        //int anio = Int16.Parse(maskPeriodo.Text.Substring(3, 4));
                        // if (mes <= 12 && anio >= 2000)
                        //{
                        //MessageBox.Show("Mes: " + maskPeriodo.Text.Substring(0, 2) + " Año: " + maskPeriodo.Text.Substring(3, 4));
                        // mesG = Int16.Parse(maskPeriodo.Text.Substring(0, 2));
                        //anioG = Int16.Parse(maskPeriodo.Text.Substring(3, 4));
                        mesG = Int16.Parse(cmbPeriodos.SelectedValue.ToString());
                        anioG = Int16.Parse(cmbAnios.SelectedValue.ToString());
                        muestraDatos();

                        //}
                        //else
                        // {
                        // MessageBox.Show("Formato de Fecha incorrecta. Verifica que el año sea apartir del 2000");
                        //ocultaDatos();
                        //}
                    }
                    else
                    {
                        MessageBox.Show("Ingresa correctamente la fecha.");
                        ocultaDatos();
                    }
                }
            }
            //opcion 2 es para editar de CBA 
            else if (opcion == 2)
            {
                if (mesesCerrados == 12)
                {
                    MessageBox.Show("Ya se han asignado los CBA's de cada periodo del año en curso.");
                }
                else
                {
                    if (Convert.ToInt16(cmbPeriodos.SelectedValue.ToString().Length + cmbAnios.SelectedValue.ToString().Length) == 6)
                    {
                        //int mes = Int16.Parse(maskPeriodo.Text.Substring(0, 2));
                        //int anio = Int16.Parse(maskPeriodo.Text.Substring(3, 4));
                        // if (mes <= 12 && anio >= 2000)
                        //{
                        //MessageBox.Show("Mes: " + maskPeriodo.Text.Substring(0, 2) + " Año: " + maskPeriodo.Text.Substring(3, 4));
                        // mesG = Int16.Parse(maskPeriodo.Text.Substring(0, 2));
                        //anioG = Int16.Parse(maskPeriodo.Text.Substring(3, 4));
                        mesG = Int16.Parse(cmbPeriodos.SelectedValue.ToString());
                        anioG = Int16.Parse(cmbAnios.SelectedValue.ToString());
                        muestraDatos();

                        //}
                        //else
                        // {
                        // MessageBox.Show("Formato de Fecha incorrecta. Verifica que el año sea apartir del 2000");
                        //ocultaDatos();
                        //}
                    }
                    else
                    {
                        MessageBox.Show("Ingresa correctamente la fecha.");
                        ocultaDatos();
                    }
                }
            }
        }
        Backend.Utilerias util = new Backend.Utilerias();
        private void txtLecActual_KeyPress(object sender, KeyPressEventArgs e)
        {
            //util.validarNumeros(e, txtLecActual);
            util.validaEnteros(e, txtLecActual);
        }

        private void btnRegLecListado_Click(object sender, EventArgs e)
        {
            string mes = cmbPeriodos.SelectedValue.ToString();
            string anio = cmbAnios.SelectedValue.ToString();
            rptRegLecturas rpt = new rptRegLecturas(mes,anio);
            rpt.Show();

        }

        private void txtColono_TextChanged(object sender, EventArgs e)
        {
            // Object[] parames = { 3, "2", "HANS LAUTERFELD", "HANS LAUTERFELD" };
            listadoDG(dgListado, 3, 0, "", txtColono.Text);
            if (dgListado.RowCount > 0)
                gbCaptura.Visible = true;
            else
                gbCaptura.Visible = false;
        }

        private void mSalirBanco_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        double res = 0;
        public void calcula_consumo()
        {
            if (txtLecAnterior.Text == "" || txtLecActual.Text == "")
            {
                txtLecAnterior.Text = "0";
                txtLecActual.Text = "0";
            }
            res = double.Parse(txtLecActual.Text) - double.Parse(txtLecAnterior.Text);
            txtConsumo.Text = res.ToString();
        }
        private void txtLecActual_TextChanged(object sender, EventArgs e)
        {
           // calcula_consumo();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show("id_med:" + id_medidor + " mes:" + mesG + " anio:" + anioG);
            //id del medidor, mes, periodo, anio, opcion=2 es para consultar medidores y 3 para consultar CBA asignada
            valoresLecturas(id_medidor, mesG, anioG,this.opcion);
        }

        private void btnTerminaCap_Click(object sender, EventArgs e)
        {
            string message = "";
            string message2 = "";
            if (this.opcion == 1)
            {
                message = "Periodo a Cerrar Registro de Lecturas: Mes: " + cmbPeriodos.SelectedValue.ToString() + " Año: " + cmbAnios.SelectedValue.ToString() + "¿Estas Seguro?";
                message2 = "¡Aun faltan registrar lecturas!";
            }
            else if (this.opcion == 2)
            {
                message = "Periodo a Cerrar Asignacion de CBA: Mes: " + cmbPeriodos.SelectedValue.ToString() + " Año: " + cmbAnios.SelectedValue.ToString() + "¿Estas Seguro?";
                message2 = "¡Aun faltan asignar CBA's a los medidores para este periodo!";
            }

            string caption = "Confirmacion del Proceso ";
            MessageBoxButtons buttons = MessageBoxButtons.YesNo;
            DialogResult result;

            // Displays the MessageBox.

            result = MessageBox.Show(this, message, caption, buttons,
                MessageBoxIcon.Question, MessageBoxDefaultButton.Button1,
                 0, "mspaint.chm");

            if (result == DialogResult.Yes)
            {
                var BeanCValidaLec = new Backend.Procesos.CRegLecturas();
                Object[] parames = { this.opcion,cmbPeriodos.SelectedValue.ToString(), cmbAnios.SelectedValue.ToString(), usuario };
                //Object[] parames = { "07", "2016" };
                int validaReg = BeanCValidaLec.validaRegLecturas(parames);
                if (validaReg == 0)
                {
                    MessageBox.Show("El Periodo se cerró correctamente");
                    this.Close();
                }
                else
                {
                    MessageBox.Show(message2);
                }
            }
        }

        private void btnUltimo_Click(object sender, EventArgs e)
        {
            if (dgListado.RowCount > 0)
            {
               
                dgListado.Rows[dgListado.RowCount-1].Selected = true;
                dgListado.FirstDisplayedScrollingRowIndex = dgListado.RowCount - 1;
                valoresRen(dgListado, dgListado.RowCount - 1);
            }
        }
        //|||||||||||||||inicio tonka-1216|||||||||||||||||
        #region Consulta Periodo para el registro de Lecturas
        public void consultaPer(int op)
        {
            int consultaServicio=0;
            //consultaServicio 1 es para registro de lecturas
            //consultaServicio 2 es para Mantenimiento
            //consultaServicio 3 es para Agua
            //consultaServicio 4 es para Periodo de registro de CBA
            if (op == 1)
                consultaServicio = 1;
            else if (op == 2)
                consultaServicio = 4;
            // gbEstatus.Visible = false;
            var BeanCPeriodo = new Backend.Procesos.PrcCuotaMto();
            BeanCPeriodo.consultaPeriodos(cmbPeriodos, 1, consultaServicio);
            BeanCPeriodo.consultaPeriodos(cmbAnios, 2, consultaServicio);
        }
        #endregion
        //|||||||||||||||fin tonka-1216|||||||||||||||||


    }
}
