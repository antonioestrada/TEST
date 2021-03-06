﻿using AccesoDatos;
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
    public partial class frmCMedidores : Form
    {
        int resulCambio = 1;
        int opcionM = 0;
        int tipo_mov = 0, id_medidor=0, id_lote = 0;
        double m2=0, m2Lote=0, cantMed = 0;

        public frmCMedidores(int op)
        {
            InitializeComponent();
            this.opcionM = op;
        }

        #region Busca por lote
        public void BuscaIdLote()
        {
            //Al momento de dar enter en el lote manda los parametros de consulta
            Object[] parames = {
                2,//opcion 2 busca por id de manzana y nombre de lote
                Convert.ToInt32(cmbManzana.SelectedValue.ToString()),//id manzana
                txtLote.Text,//nombre de lote
                "",
            };
           
            var BeanCBeanManzana = new Backend.Catalogos.CManzanaLotes();
            ResultadoTrnx resultado = new ResultadoTrnx();
            //ejecutamos el sp donde nos mostrara los siguientes datos como id del lote, nombre del colono, direccion, y superficie del lote
            resultado = BeanCBeanManzana.consultaLoteColonos(parames);
            //almacenamos el id del lote en la variable global local
            id_lote = resultado.idLoteDTO;
            txtColono.Text = resultado.conoloDTO;
            txtDireccion.Text = resultado.direccionDTO;
            m2 = resultado.m2DTO;
            cantMed = resultado.resultCanMed;
            m2Lote = resultado.resultM2Lote;

            var BeanCBeanMedidor = new Backend.Catalogos.CMedidores();
            //la ejecucion de este sp nos mostrara los contratos asignas a este lote
            //nos trae en el value del combo el id del medidor, en el display el numero del contrato
            BeanCBeanMedidor.consultaContratos(cmbContratos,2,id_lote);
            btnVer.Visible = true;
            cmbContratos.Visible = true;
            lblContrato.Visible = true;
        }
        #endregion

        #region Busca por medidor
        public void buscaMedidor()
        {
            var BeanCMedidor = new Backend.Catalogos.CMedidores();
            ResultadoTrnx resultado2 = new ResultadoTrnx();
            resultado2 = BeanCMedidor.consultaConInfo(Convert.ToInt32(cmbContratos.SelectedValue.ToString()));
            id_medidor =Convert.ToInt32( resultado2.idMedidorDTO);
            txtContrato.Text = resultado2.contratoDTO;
            txtMedidor.Text = resultado2.medidorDTO;
            txtM2.Text =Convert.ToString(m2);
            txtBaseCNA.Text = Convert.ToString(resultado2.cnaDTO);
        }
        #endregion

        #region medidores ABC
        public void abcMedidores(int tipoMov, int idMedidor, int idLote, TextBox contrato, TextBox medidor, TextBox cna, int lecMedAnt, int lecMedNue)
        {
            var BeanMedidor = new Backend.Catalogos.CMedidores();
            var BeanCMedidor = new Backend.Catalogos.CMedidores();

            //definimos los parametros que pasaran al sp
            Object[] parames = {
                tipoMov,
                idMedidor,//id_manzana solo agregamos el parametro id_manzana para continuar con la ejecucion del sp
                idLote,
                contrato.Text,
                medidor.Text,
                cna.Text,
                lecMedAnt,
                lecMedNue
            };
            //cachamos el valor que retorna nuestro sp
            //result=0 Alta, Baja o Cambio exitoso
            //result=2 el registro ya existe
            //result=2 el registro no existe
            Backend.Catalogos.ResultadoTrnx resultado = new Backend.Catalogos.ResultadoTrnx();
            resultado = BeanMedidor.abcMedidor(parames);
            pnlResult.Visible = true;
            lblMensaje.Text = resultado.Mensaje;
            resulCambio = resultado.Cve_resultado;
            if (resultado.Cve_resultado == 0)
            {
                Conexion.FinalizarSesion();
                pnlResult.BackColor = Color.DeepSkyBlue;
                lblMensaje.ForeColor = Color.White;
                limpiaF();
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

            }else if(resultado.Cve_resultado == 4)
            {
                //si es para consulta del contrato
                pnlResult.Visible = false;
                this.Size = new Size(560, 220);
                txtContrato.Text = "";
                txtMedidor.Text = "";
                txtBaseCNA.Text = "";
                txtM2.Text = "";
                cmbContratos.Enabled = true;
                mNuevo.Enabled = true;

            }
            Conexion.FinalizarSesion();
        }
        #endregion

        #region Limpia formulario
        public void limpiaF()
        {
            Backend.Utilerias limpia = new Backend.Utilerias();
            limpia.limpiarTextboxGroupBox(gbGenerales);
            this.Size = new Size(624, 220);
            pnlPrinBancos.BackColor = Color.Green;
            pnlResult.Visible = false;
            mNuevo.Enabled = true;
            mEditar.Enabled = true;
            mEliminar.Enabled = true;
            txtLote.Enabled = true;
            cmbContratos.Enabled=true;
            cmbContratos.DataSource = null;
            cmbContratos.Items.Clear();
            txtLote.Text = "";
            cmbContratos.Visible = false;
            lblContrato.Visible = false;
            btnVer.Visible = false;
        }
        #endregion

        #region opcion de formulario define colores y tamaño de formulario
        public void opForm(int op, string encabezadoMov, Color colorT, string opcion, int mov, ToolStripMenuItem bloqueaA, ToolStripMenuItem bloqueaB)
        {
            this.Size = new Size(642, 460);
            lblEncabezado.Text = encabezadoMov;
            pnlPrinBancos.BackColor = colorT;
            pnlEncabezado.BackColor = colorT;
            btnGuardar.Text = opcion;
            bloqueaA.Enabled = false;
            bloqueaB.Enabled = false;
            txtLote.Enabled = false;
            cmbContratos.Enabled = false;
            tipo_mov = mov;
            cargaInicial(op);

        }
        #endregion

        public void cargaInicial(int op)
        {
            if (op == 1)
            {
                mNuevo.Visible = true;
                mEditar.Visible = true;
                mEliminar.Visible = true;
                mCambiarMedidor.Visible = false;

            }
            else if (op == 2)
            {
                mNuevo.Visible = false;
                mEditar.Visible = false;
                mEliminar.Visible = false;
                mCambiarMedidor.Visible = true;
            }
        }

        private void mNuevo_Click(object sender, EventArgs e)
        {
            // btnAdd.Visible = true;
            if (id_lote != 0)
            {
                txtContrato.ReadOnly = false;
                txtMedidor.ReadOnly = false;
                double superficieEquiv = 0;
                superficieEquiv = (m2Lote) / (cantMed+1);
                txtM2.Text = Convert.ToString(superficieEquiv);
                Globales vGlobal = new Globales();
                double baseCNAF = 0;
                baseCNAF = Math.Round(((Convert.ToDouble(txtM2.Text) * (vGlobal.cna_param1) * (vGlobal.cna_param2)) / 1000) + (vGlobal.cna_param3), 2);
                txtBaseCNA.Text = Convert.ToString(baseCNAF);
                opForm(opcionM, "Nuevo Medidor", Color.LightGreen, "Registrar", 1, mEditar, mEliminar);
            }
        }

        private void mEditar_Click(object sender, EventArgs e)
        {
            if (cmbContratos.Items.Count > 0)
            {
                buscaMedidor();
                txtContrato.ReadOnly = false;
                txtMedidor.ReadOnly = false;
                opForm(opcionM, "Modificar Datos del Medidor", Color.Peru, "Guardar", 3, mNuevo, mEliminar);
            }
        }

        private void mEliminar_Click(object sender, EventArgs e)
        {
            if (cmbContratos.Items.Count > 0)
            {
                buscaMedidor();
                opForm(opcionM,"Eliminar Medidor", Color.IndianRed, "Eliminar", 2, mNuevo, mEditar);
                txtContrato.ReadOnly = true;
                txtMedidor.ReadOnly = true;
            }
        }

        private void btnGuardar_Click(object sender, EventArgs e)
        {
            

            if (txtContrato.Text == "" || txtMedidor.Text == "")
            {
                pnlResult.Visible = true;
                pnlResult.BackColor = Color.OrangeRed;
                lblMensaje.Text = "¡Ingresa los campos obligatorios!";
                lblMensaje.ForeColor = Color.White;
            }
            else
            {
                if (opcionM == 1)
                    abcMedidores(tipo_mov, id_medidor, id_lote, txtContrato, txtMedidor, txtBaseCNA, 0, 0);
                else if (opcionM == 2)
                {
                    if (txtNuevoMedidor.Text == "" || txtLecAnterior.Text == "" || txtLecActual.Text == "")
                    {
                        pnlResult.Visible = true;
                        pnlResult.BackColor = Color.Orange;
                        lblMensaje.ForeColor = Color.White;
                        lblMensaje.Text = "Ingresa los campos obligatorios";
                    }
                    else
                    {
                        int i = 0;
                        bool esEntero = Int32.TryParse(txtLecActual.Text, out i), esEntero2 = Int32.TryParse(txtLecAnterior.Text, out i); ;
                        if (esEntero && esEntero2)
                        {
                            abcMedidores(tipo_mov, id_medidor, id_lote, txtContrato, txtNuevoMedidor, txtBaseCNA, int.Parse(txtLecAnterior.Text), int.Parse(txtLecActual.Text));
                            if (resulCambio == 0)
                            {
                                rptReciboAgua BeanRPTMedidor = new rptReciboAgua("" + id_lote, "" + txtContrato, 20);
                                BeanRPTMedidor.Show();
                            }
                        }
                        else
                            MessageBox.Show("Formato incorrecto en lecturas");
                    }
                }
            }
        }

        private void btnVer_Click(object sender, EventArgs e)
        {
            if (cmbContratos.Items.Count > 0)
            {
                buscaMedidor();
                opForm(opcionM, "Consultar Contrato", Color.SteelBlue, "OK", 4, mNuevo, mNuevo);
                txtContrato.ReadOnly = true;
                txtMedidor.ReadOnly = true;
                // btnGuardar.Enabled = false;
                opciones(1);
            }
        }

        private void btnCancel_Click(object sender, EventArgs e)
        {
            limpiaF();
            id_lote = 0;
        }

        private void mSalir_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void btnBuscar_Click(object sender, EventArgs e)
        {
            if (cmbManzana.Items.Count > 0)
                BuscaIdLote();
            else
                MessageBox.Show("No hay Registro de Lotes. Favor de registrar Colonos, Manzanas y Lotes antes de registrar Medidores.");
        }

        private void btnBuscar_Click_1(object sender, EventArgs e)
        {
            if (cmbManzana.Items.Count > 0)
                BuscaIdLote();
            else
                MessageBox.Show("No hay Registro de Lotes. Favor de registrar Colonos, Manzanas y Lotes antes de registrar Medidores.");
        }

        private void frmCMedidores_Load(object sender, EventArgs e)
        {
            var BeanCLotesMza = new Backend.Catalogos.CManzanaLotes();
            BeanCLotesMza.consultaMazaCombo(cmbManzana);
            cargaInicial(opcionM);
        }

        private void mCambiarMedidor_Click(object sender, EventArgs e)
        {
            if (cmbContratos.Items.Count > 0)
            {
                buscaMedidor();
                opForm(opcionM, "Cambiar Medidor", Color.SandyBrown, "Cambiar", 5, mNuevo, mEditar);
                txtContrato.ReadOnly = true;
                txtMedidor.ReadOnly = true;
                opciones(2);
            }
        }
        Backend.Utilerias util = new Backend.Utilerias();
        private void txtLecAnterior_KeyPress(object sender, KeyPressEventArgs e)
        {
            util.validaEnteros(e, txtLecActual);
        }

        private void txtLecActual_KeyPress(object sender, KeyPressEventArgs e)
        {
            util.validaEnteros(e, txtLecActual);
        }

        public void opciones(int op)
        {
            if(op==1)
            {
                txtM2.Visible = true;
                lblM2.Visible = true;
                txtBaseCNA.Visible = true;
                lblBaseCNA.Visible = true;
                txtNuevoMedidor.Visible = false;
                lblNuevoMed.Visible = false;
                txtLecAnterior.Visible = false;
                lblLectAnterior.Visible = false;
                txtLecActual.Visible = false;
                lblLecActual.Visible = false;
                pnlCambio.Visible = false;
            }
            else if(op==2)
            {
                txtM2.Visible = false;
                lblM2.Visible = false;
                txtBaseCNA.Visible = false;
                lblBaseCNA.Visible = false;
                lblNuevoMed.Visible = true;
                txtNuevoMedidor.Visible = true;
                lblNuevoMed.Visible = true;
                txtLecAnterior.Visible = true;
                lblLectAnterior.Visible = true;
                txtLecActual.Visible = true;
                lblLecActual.Visible = true;
                pnlCambio.Visible = true;
            }
        }

        

        private void txtLote_KeyPress(object sender, KeyPressEventArgs e)
        {
            if ((int)e.KeyChar == (int)Keys.Enter)
            {
                //aqui codigo
                BuscaIdLote();
                
            }
        }
    }
}
