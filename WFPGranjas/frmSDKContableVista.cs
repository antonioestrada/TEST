using System;
using System.Reflection;
using System.Windows.Forms;
using SDKCONTPAQNGLib;


namespace WFPGranjas
{
    public partial class frmSDKContableVista : Form
    {

        //instanciamos el objeto de inicio de sesion
        public static TSdkSesion lsdkSesion = new TSdkSesion();
        //nombre empresa
        public static string empresa = "";
        //manejo de errores
        public static int lResult = 0;
        //instanciamos el objeto decuenta
        public TSdkCuenta lsdkCuenta = new TSdkCuenta();
        //nombre cuenta
        public string cuentas;


        //opcion
        int op;
        int opConsulta;
        int opMZ;

        public frmSDKContableVista(int inOP)
        {
            op = inOP;
            InitializeComponent();
            //mantenimiento
            if (op == 1)
            {
                //carga definicion del datagridview mtto
                definicionDGCuotas();
                //opcion 1 es para cuotas mtto en sp
                opConsulta = 1;
                //opcion 2 es para obtener manzanas de mtto en sp
                opMZ = 2;
            }
            //agua
            else if (op == 2)
            {
                //carga definicion del datagridview agua
                definicionDGCuotas();
                //opcion 3 es para cuotas agua en sp
                opConsulta = 3;
                //opcion 4 es para obtener manzanas de mtto en sp
                opMZ = 4;
            }

            //ingresos diarios
            else if (op == 3)
            {
                //carga definicion del datagridview agua
                definicionDGIngresosDiarios();
                //opcion 9 es para ingresos diarios de cuotas en sp
                opConsulta = 11;
                //opcion 10 es para obtener manzanas de mtto en sp
                //-- opMZ = 10;
                opMZ = 12;
            }
            //polizas mensuales
            else if (op == 4)
            {
                definicionDGPolizasDiario();
                //llamar sp: gestion_granjas.sp_frm_SDK_Contable_vr2(op-3)
                opConsulta = 3;

                //en esta ocacion no ocuparemos esta opcion
                opMZ = 12;
                //no se ocupara esta opcion
            }
            //polizas ingresos diarios
            else if (op == 5)
            {
                definicionDGPolizasIngresos();
                //llamar sp: gestion_granjas.sp_frm_SDK_Contable_vr2(op-3)
                opConsulta = 4;

                //en esta ocacion no ocuparemos esta opcion
                opMZ = 12;
                //no se ocupara esta opcion
            }
        }

        /// <summary>
        ///  DEFICNION DE COLUMNAS PARA POLIZAS DE DIARIO (GESTION DE CUOTAS)
        /// </summary>
        /// 
        #region Definicion de Estructura de Columnas POLIZAS DIARIO POR CUOTAS
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO DE SALIDAS DEL ALMACEN
        public void definicionDGPolizasDiario()
        {

            dgCuotas.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgCuotas, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgCuotas.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "CTA CARGO",
                                                  Width = 150
                                              }
                                              ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "CTA ABONO",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (decimal),
                                                  HeaderText = "IMPORTE",
                                                  Width = 70
                                              }
                                      });


            dgCuotas.Columns[2].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            dgCuotas.Columns[2].DefaultCellStyle.Format = "##,##0.0000";
            dgCuotas.Columns[2].DefaultCellStyle.Format = "N";
        }
        #endregion

        /// <summary>
        ///  DEFICNION DE COLUMNAS PARA POLIZAS DE DIARIO (GESTION DE CUOTAS)
        /// </summary>
        /// 
        #region Definicion de Estructura de Columnas POLIZAS DIARIO POR CUOTAS
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO DE SALIDAS DEL ALMACEN
        public void definicionDGPolizasIngresos()
        {

            dgCuotas.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgCuotas, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgCuotas.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                            new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "FECHA PAGO",
                                                  Width = 150
                                              }
                                              ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "CARGO_ABONO",
                                                  Width = 150
                                              }
                                              ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "CTA CARGO",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "CTA ABONO",
                                                  Width = 150
                                              },
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "DESCRIPCION",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (decimal),
                                                  HeaderText = "CARGO",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (decimal),
                                                  HeaderText = "ABONO",
                                                  Width = 70
                                              }
                                      });


            dgCuotas.Columns[5].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            dgCuotas.Columns[5].DefaultCellStyle.Format = "##,##0.0000";
            dgCuotas.Columns[5].DefaultCellStyle.Format = "N";
            dgCuotas.Columns[6].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            dgCuotas.Columns[6].DefaultCellStyle.Format = "##,##0.0000";
            dgCuotas.Columns[6].DefaultCellStyle.Format = "N";

        }
        #endregion

        #region Definicion de Estructura de Columnas DataGridView MANTENIMIENTO
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO DE SALIDAS DEL ALMACEN
        public void definicionDGCuotas()
        {

            dgCuotas.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgCuotas, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgCuotas.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                           new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (int),
                                                  HeaderText = "id",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Servicio",
                                                  Width = 150
                                              }
                                              ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "id_manzana",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Manzana",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Lote",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Periodo",
                                                  Width = 80
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Año",
                                                  Width = 80
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Decimal),
                                                  HeaderText = "Importe",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Decimal),
                                                  HeaderText = "Moratorio",
                                                  Width = 150
                                              }
                                              ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Estatus",
                                                  Width = 100
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            //dgCuotas.Columns[0].Visible = false;
            //dgBancos.Columns[5].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            dgCuotas.Columns[7].DefaultCellStyle.Format = "##,##0.0000";
            dgCuotas.Columns[7].DefaultCellStyle.Format = "N";
            dgCuotas.Columns[8].DefaultCellStyle.Format = "##,##0.0000";
            dgCuotas.Columns[8].DefaultCellStyle.Format = "N";
        }
        #endregion

        #region Definicion de Estructura de Columnas DataGridView INGRESOS DIARIOS
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO DE SALIDAS DEL ALMACEN
        public void definicionDGIngresosDiarios()
        {

            dgCuotas.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgCuotas, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgCuotas.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                           new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (int),
                                                  HeaderText = "folio_pago",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "No. Recibo",
                                                  Width = 150
                                              }
                                              ,
                                               new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Fecha Pago",
                                                  Width = 150
                                              }
                                              ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Folio Movimiento",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Manzana",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Lote",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Periodo",
                                                  Width = 80
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Año",
                                                  Width = 80
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Decimal),
                                                  HeaderText = "Importe",
                                                  Width = 150
                                              }
                                              ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Decimal),
                                                  HeaderText = "Multa",
                                                  Width = 150
                                              }
                                              ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Decimal),
                                                  HeaderText = "Cuota",
                                                  Width = 150
                                              }
                                              ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Tipo Pago",
                                                  Width = 100
                                              }
                                              ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Estatus",
                                                  Width = 100
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Servicio",
                                                  Width = 100
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            //dgCuotas.Columns[0].Visible = false;
            //dgBancos.Columns[5].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            dgCuotas.Columns[6].DefaultCellStyle.Format = "##,##0.0000";
            dgCuotas.Columns[6].DefaultCellStyle.Format = "N";
        }
        #endregion

        #region Definicion de Estructura de Columnas DataGridView MTTO
        //DEFINIMOS LA ESTRUCTURA DE NUESTRO GRID LISTADO
        public void definicionDGCuotasMtto()
        {

            dgCuotas.GetType().GetProperty("DoubleBuffered", BindingFlags.Instance | BindingFlags.NonPublic).SetValue(dgCuotas, true, null);

            // grid.RowHeadersWidth = 20;
            // int colWidth = ((grid.ClientSize.Width - grid.RowHeadersWidth) >> 1) - 1;
            dgCuotas.Columns.AddRange(new DataGridViewColumn[]
                                      {
                                           new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (int),
                                                  HeaderText = "id",
                                                  Width = 150,
                                                  Name="id"
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Servicio",
                                                  Width = 150
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Manzana",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Lote",
                                                  Width = 70
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Periodo",
                                                  Width = 80
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Año",
                                                  Width = 80
                                              },
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (Decimal),
                                                  HeaderText = "Importe",
                                                  Width = 150
                                              }
                                              ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Tipo Pago",
                                                  Width = 150
                                              }
                                              ,
                                              new DataGridViewTextBoxColumn
                                              {
                                                  ValueType = typeof (string),
                                                  HeaderText = "Estatus",
                                                  Width = 100
                                              }
                                      });

            //dgBancos.RowHeadersDefaultCellStyle.Alignment = DataGridViewContentAlignment.TopRight;
            //dgBancos.RowHeadersDefaultCellStyle.Padding = new Padding(0);
            //dgCuotas.Columns[0].Visible = false;
            //dgBancos.Columns[5].DefaultCellStyle.Alignment = DataGridViewContentAlignment.MiddleRight;
            dgCuotas.Columns[6].DefaultCellStyle.Format = "##,##0.0000";
            dgCuotas.Columns[6].DefaultCellStyle.Format = "N";
        }
        #endregion




        private void frmSDKContableVista_Load(object sender, EventArgs e)
        {
            //carga meses y anio
            //carga combo del catalogo de  manzanas 
            var BeanCLotesMza = new Backend.Catalogos.CManzanaLotes();
            BeanCLotesMza.consultaMes(cmbMes);
            BeanCLotesMza.consultaAnio(cmbAnio);
        }

        private void button1_Click(object sender, EventArgs e)
        {
            //var BeanCBanco = new Backend.Catalogos.CBancos();
            //BeanCBanco.consultaCuotas(dgCuotas, cmbMes.SelectedValue.ToString(), cmbAnio.SelectedValue.ToString(), op);
            var BeanCPoliza_Mtto = new Backend.SDK.CPoliza_Mtto();
            //MTTO
            if (op == 1)
            {
                BeanCPoliza_Mtto.consultaCuotas(dgCuotas, cmbMes.SelectedValue.ToString(), cmbAnio.SelectedValue.ToString(), opConsulta);
            }
            //AGUA
            else if (op == 2)
            {
                BeanCPoliza_Mtto.consultaCuotasAgua(dgCuotas, cmbMes.SelectedValue.ToString(), cmbAnio.SelectedValue.ToString(), opConsulta);
            }
            //INGRESOS DIARIOS
            else if (op == 3)
            {
                BeanCPoliza_Mtto.consultaIngresosDiarios(dgCuotas, cmbMes.SelectedValue.ToString(), cmbAnio.SelectedValue.ToString(), opConsulta);
            }
            //POLIZAS MENSUALES DE CUOTAS
            else if (op == 4)
            {
                BeanCPoliza_Mtto.consultaPolCuotasMensuales(dgCuotas, cmbMes.SelectedValue.ToString(), cmbAnio.SelectedValue.ToString(), opConsulta);
            }
            //POLIZAS MENSUALES DE CUOTAS
            else if (op == 5)
            {
                BeanCPoliza_Mtto.consultaPolIngrDiarios(dgCuotas, "30", cmbMes.SelectedValue.ToString(), cmbAnio.SelectedValue.ToString(), opConsulta);
            }
        }

        private void btnAbrirEmpresa_Click(object sender, EventArgs e)
        {
            inicioSesion(txtAliasEmpresa);
        }

        //C-INTERACCIONES CON SDK CONTABLE
        //inicio inicioSesion
        public void inicioSesion(TextBox textEmpresa)
        {
            //verificar la conexion con el sdk
            if (lsdkSesion.conexionActiva == 0)
            {
                //conecta con el sdk y el servidor de app
                lsdkSesion.iniciaConexion();
            }
            if (lsdkSesion.conexionActiva == 1 && lsdkSesion.ingresoUsuario == 0)
            {
                //firmamos usuario
                lsdkSesion.firmaUsuarioParams("SUPERVISOR", "");
            }
            //veriricamnos que conexion activa y usuario firmado abrimos empresa
            if (lsdkSesion.conexionActiva == 1 && lsdkSesion.ingresoUsuario == 1)
            {
                //abrir empresa
                abreEmpresa(textEmpresa.Text);
            }
        }
        //fin inicioSesion

        //inicio abreEmpresa
        public void abreEmpresa(string empresaString)
        {
            empresa = empresaString;
            lResult = lsdkSesion.abreEmpresa(empresa);
            if (lResult == 0)
            {
                lblEstatus.Text = "Error: " + lsdkSesion.UltimoMsjError;
            }
            else
                lblEstatus.Text = "Se abrio con éxito empresa: " + empresa;
        }

        private void btnCerrarEmpresa_Click(object sender, EventArgs e)
        {
            //cerrar empresa
            lsdkSesion.cierraEmpresa();
            lblEstatus.Text = "La empresa se cerro correctamente";

            //termina SDK
            //lsdkSesion.finalizaConexion();
            //lblEstatus.Text = "El SDK se finalizo correcatmente";
        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (lsdkSesion.conexionActiva == 1 && lsdkSesion.ingresoUsuario == 0)
            {
                MessageBox.Show("verifique inicio de sesion o firma de usuario");
            }
            else
            {
                var BeanCPoliza_Mtto = new Backend.SDK.CPoliza_Mtto();
                if (op == 4)
                {
                    //INICIA GENERACION DE POLIZAS DE DIARIO MENSUALES
                    BeanCPoliza_Mtto.prcPolizaCuotas(dgCuotas, cmbMes.SelectedValue.ToString(), cmbAnio.SelectedValue.ToString());
                }
                if (op == 5)
                {
                    //INICIA GENERACION DE POLIZAS DE DIARIO MENSUALES
                    BeanCPoliza_Mtto.prcPolizaIngresos(dgCuotas, cmbMes.SelectedValue.ToString(), cmbAnio.SelectedValue.ToString());
                }

            }
        }
    

        private void bMtto_Test_Click(object sender, EventArgs e)
        {
            var BeanCPoliza_Mtto = new Backend.SDK.CPoliza_Mtto();
            BeanCPoliza_Mtto.consultaCuotas(dgCuotas, cmbMes.SelectedValue.ToString(), cmbAnio.SelectedValue.ToString(), op);
        }

        private void bArray_Click(object sender, EventArgs e)
        {
            var BeanCPoliza_Mtto = new Backend.SDK.CPoliza_Mtto();
            //INICIA PROCESO DE CREACION POLIZAS MTTO
            if (op == 1)
            {
                //la opcion 2 nos sirve para obener el listado de manzanas involucradas en la consulta
                BeanCPoliza_Mtto.consultaPolMZ(dgCuotas, cmbMes.SelectedValue.ToString(), cmbAnio.SelectedValue.ToString(), opMZ, "MANTENIMIENTO", "220401", "410101", "410102");
            }
            //INICIA PROCESO DE CREACION POLIZAS AGUA
            else if (op == 2)
            {
                //la opcion 4 nos sirve para obener el listado de manzanas involucradas en la consulta
                BeanCPoliza_Mtto.consultaPolMZ(dgCuotas, cmbMes.SelectedValue.ToString(), cmbAnio.SelectedValue.ToString(), opMZ, "AGUA", "220402", "410201", "410202");
            }
            //INICIA PROCESO DE CREACION POLIZAS INGRESOS
            else if (op == 3)
            {
                //la opcion 2 nos sirve para obener el listado de manzanas involucradas en la consulta
                //CUENTA EFECTIVO A DEPOSITAR
                //CUENTA PARA MULTAS
                //CUENTA PARA ABONO POR CUOTAS
                //CUENTA PARA ANTICIPOS (ANUALIDADES MANTENIMIENTO)
                //CUENTA PARA MORATORIOS
                /*
                    Aqui es por Recibo
                    BeanCPoliza_Mtto.consultaPolNoRecibo(dgCuotas, cmbMes.SelectedValue.ToString(), cmbAnio.SelectedValue.ToString(), opMZ, "MANTENIMIENTO", "10101000", "40102000", "10602000", "20601000", "40101000");
                    Fin aqui es por Recibo
                */
                //Aqui es por fecha (XDIA)
                BeanCPoliza_Mtto.consultaPolFechaRecibo(dgCuotas, cmbMes.SelectedValue.ToString(), cmbAnio.SelectedValue.ToString(), opMZ, "MANTENIMIENTO", "10101000", "40102000", "10602000", "20601000", "40101000");

            }

        }
    }
}
