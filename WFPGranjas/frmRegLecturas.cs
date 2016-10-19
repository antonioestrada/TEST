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
        public frmRegLecturas()
        {
            InitializeComponent();
            definicionDGListado();
        }

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

                    // Establecemos el valor en el correspondiente control Label
                    if (value != null)
                    {
                        id_medidor = Convert.ToInt32(row.Cells[0].Value);
                        id_manzana = Convert.ToInt32(row.Cells[1].Value);
                        lblColono.Text = row.Cells[2].Value.ToString();
                        lblDireccion.Text = row.Cells[3].Value.ToString();
                        lblContrato.Text = row.Cells[4].Value.ToString();
                        lblMedidor.Text = row.Cells[5].Value.ToString();
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
            valoresLecturas(id_medidor, mesG, anioG);
        }
        #endregion

        #region toma valores de Cada Medidor para lecturas
        public void valoresLecturas(int inIDMedidor, int inPeriodo, int inAnio)
        {
            //definimos los parametros que pasaran al sp
            Object[] parames = {
                2,
                inIDMedidor,//id_lote solo agregamos el parametro id_lote para continuar con la ejecucion del sp
                inPeriodo,
                inAnio,
                0//lectura la dejamos en cero
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
        public void registraLecturas(int inIDMedidor, int inPeriodo, int inAnio, int inLectura)
        {
            //definimos los parametros que pasaran al sp
            Object[] parames = {
                1,
                inIDMedidor,//id_lote solo agregamos el parametro id_lote para continuar con la ejecucion del sp
                inPeriodo,
                inAnio,
                inLectura
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
            valoresLecturas(id_medidor, mesG, anioG);
            gbCaptura.Visible = true;
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
                //MessageBox.Show(txtLecActual.Text);
                if (Int16.Parse(txtLecActual.Text) > Int16.Parse(txtLecAnterior.Text))
                {
                    if (Int16.Parse(txtLecActual.Text) == 0)
                        registraLecturas(id_medidor, mesG, anioG, Int16.Parse(txtLecAnterior.Text));
                    else
                        registraLecturas(id_medidor, mesG, anioG, Int16.Parse(txtLecActual.Text));
                
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
                    MessageBox.Show("La lectura debe ser mayor a la lectura anterior");
            }
        }
        
        private void btnCapturaLec_Click(object sender, EventArgs e)
        {
            int longCad = maskPeriodo.Text.Trim().Length;
            //MessageBox.Show("" + maskPeriodo.Text.Trim() + "- contenido", maskPeriodo.Text+" length"+ longCad);
            if (longCad == 7)
            {
                int mes = Int16.Parse(maskPeriodo.Text.Substring(0, 2));
                int anio = Int16.Parse(maskPeriodo.Text.Substring(3, 4));
                if (mes <= 12 && anio >= 2000)
                {
                    //MessageBox.Show("Mes: " + maskPeriodo.Text.Substring(0, 2) + " Año: " + maskPeriodo.Text.Substring(3, 4));
                    mesG = Int16.Parse(maskPeriodo.Text.Substring(0, 2));
                    anioG = Int16.Parse(maskPeriodo.Text.Substring(3, 4));
                    muestraDatos();
                    
                }
                else
                {
                    MessageBox.Show("Formato de Fecha incorrecta. Verifica que el año sea apartir del 2000");
                    ocultaDatos();
                }
            }
            else
            {
                MessageBox.Show("Ingresa correctamente la fecha.");
                ocultaDatos();
            }
        }
        Backend.Utilerias util = new Backend.Utilerias();
        private void txtLecActual_KeyPress(object sender, KeyPressEventArgs e)
        {
            util.validarNumeros(e, txtLecActual);
        }

        private void btnRegLecListado_Click(object sender, EventArgs e)
        {
            string mes = maskPeriodo.Text.Substring(0, 2);
            string anio = maskPeriodo.Text.Substring(3, 4);
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


        private void button1_Click(object sender, EventArgs e)
        {
            MessageBox.Show("id_med0" + id_medidor + " mes:" + mesG + " anio:" + anioG);
            valoresLecturas(id_medidor, mesG, anioG);
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
        
        

   
    }
}
