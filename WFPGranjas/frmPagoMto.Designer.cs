namespace WFPGranjas
{
    partial class frmPagoMto
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.groupDColono = new System.Windows.Forms.GroupBox();
            this.lblMzaLote = new System.Windows.Forms.Label();
            this.lblDireccion = new System.Windows.Forms.Label();
            this.lblColono = new System.Windows.Forms.Label();
            this.groupCuota = new System.Windows.Forms.GroupBox();
            this.panelCapturaCenter = new System.Windows.Forms.Panel();
            this.dgPartidasR = new System.Windows.Forms.DataGridView();
            this.panelCapturaButtom = new System.Windows.Forms.Panel();
            this.pnlMetodoPago = new System.Windows.Forms.Panel();
            this.label6 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.label3 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.btnCapturaPago = new System.Windows.Forms.Button();
            this.txtImpEf = new System.Windows.Forms.TextBox();
            this.label12 = new System.Windows.Forms.Label();
            this.txtImpChq = new System.Windows.Forms.TextBox();
            this.txtImpFicha = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.cmbBancoFicha = new System.Windows.Forms.ComboBox();
            this.txtCheque = new System.Windows.Forms.TextBox();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.txtFicha = new System.Windows.Forms.TextBox();
            this.cmbBancoCheq = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.lblMultas = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtTotal = new System.Windows.Forms.TextBox();
            this.txtMultas = new System.Windows.Forms.TextBox();
            this.txtImporte = new System.Windows.Forms.TextBox();
            this.panelCapturaTop = new System.Windows.Forms.Panel();
            this.btnAddCuota = new System.Windows.Forms.Button();
            this.lblMsj = new System.Windows.Forms.Label();
            this.cmbPeriodos = new System.Windows.Forms.ComboBox();
            this.dgPropietario = new System.Windows.Forms.DataGridView();
            this.label5 = new System.Windows.Forms.Label();
            this.txtColono = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.cmbManzana = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txtLote = new System.Windows.Forms.TextBox();
            this.panelTop = new System.Windows.Forms.Panel();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.gbDRecibo = new System.Windows.Forms.GroupBox();
            this.lblFechaSys = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.btnCapturaR = new System.Windows.Forms.Button();
            this.lblMora = new System.Windows.Forms.Label();
            this.txtMora = new System.Windows.Forms.TextBox();
            this.groupDColono.SuspendLayout();
            this.groupCuota.SuspendLayout();
            this.panelCapturaCenter.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgPartidasR)).BeginInit();
            this.panelCapturaButtom.SuspendLayout();
            this.pnlMetodoPago.SuspendLayout();
            this.panel2.SuspendLayout();
            this.panelCapturaTop.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgPropietario)).BeginInit();
            this.panelTop.SuspendLayout();
            this.gbDRecibo.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupDColono
            // 
            this.groupDColono.Controls.Add(this.lblMzaLote);
            this.groupDColono.Controls.Add(this.lblDireccion);
            this.groupDColono.Controls.Add(this.lblColono);
            this.groupDColono.Location = new System.Drawing.Point(4, 60);
            this.groupDColono.Name = "groupDColono";
            this.groupDColono.Size = new System.Drawing.Size(604, 85);
            this.groupDColono.TabIndex = 6;
            this.groupDColono.TabStop = false;
            this.groupDColono.Text = "Datos del Colono";
            this.groupDColono.Visible = false;
            // 
            // lblMzaLote
            // 
            this.lblMzaLote.AutoSize = true;
            this.lblMzaLote.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMzaLote.Location = new System.Drawing.Point(6, 49);
            this.lblMzaLote.Name = "lblMzaLote";
            this.lblMzaLote.Size = new System.Drawing.Size(118, 18);
            this.lblMzaLote.TabIndex = 2;
            this.lblMzaLote.Text = "Manzana:  Lote: ";
            // 
            // lblDireccion
            // 
            this.lblDireccion.AutoSize = true;
            this.lblDireccion.Location = new System.Drawing.Point(6, 66);
            this.lblDireccion.Name = "lblDireccion";
            this.lblDireccion.Size = new System.Drawing.Size(25, 16);
            this.lblDireccion.TabIndex = 1;
            this.lblDireccion.Text = "Dir";
            this.lblDireccion.Visible = false;
            // 
            // lblColono
            // 
            this.lblColono.AutoSize = true;
            this.lblColono.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblColono.Location = new System.Drawing.Point(6, 27);
            this.lblColono.Name = "lblColono";
            this.lblColono.Size = new System.Drawing.Size(140, 16);
            this.lblColono.TabIndex = 0;
            this.lblColono.Text = "Raul Robles LLano";
            // 
            // groupCuota
            // 
            this.groupCuota.Controls.Add(this.panelCapturaCenter);
            this.groupCuota.Controls.Add(this.panelCapturaButtom);
            this.groupCuota.Controls.Add(this.panelCapturaTop);
            this.groupCuota.Location = new System.Drawing.Point(4, 150);
            this.groupCuota.Name = "groupCuota";
            this.groupCuota.Size = new System.Drawing.Size(826, 350);
            this.groupCuota.TabIndex = 7;
            this.groupCuota.TabStop = false;
            this.groupCuota.Text = "Datos de Captura";
            this.groupCuota.Visible = false;
            // 
            // panelCapturaCenter
            // 
            this.panelCapturaCenter.Controls.Add(this.dgPartidasR);
            this.panelCapturaCenter.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelCapturaCenter.Location = new System.Drawing.Point(3, 61);
            this.panelCapturaCenter.Name = "panelCapturaCenter";
            this.panelCapturaCenter.Size = new System.Drawing.Size(820, 125);
            this.panelCapturaCenter.TabIndex = 15;
            // 
            // dgPartidasR
            // 
            this.dgPartidasR.AllowUserToAddRows = false;
            this.dgPartidasR.AllowUserToDeleteRows = false;
            this.dgPartidasR.AllowUserToResizeColumns = false;
            this.dgPartidasR.AllowUserToResizeRows = false;
            this.dgPartidasR.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgPartidasR.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgPartidasR.Location = new System.Drawing.Point(0, 0);
            this.dgPartidasR.Name = "dgPartidasR";
            this.dgPartidasR.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgPartidasR.Size = new System.Drawing.Size(820, 125);
            this.dgPartidasR.TabIndex = 0;
            this.dgPartidasR.TabStop = false;
            // 
            // panelCapturaButtom
            // 
            this.panelCapturaButtom.Controls.Add(this.lblMora);
            this.panelCapturaButtom.Controls.Add(this.txtMora);
            this.panelCapturaButtom.Controls.Add(this.pnlMetodoPago);
            this.panelCapturaButtom.Controls.Add(this.label7);
            this.panelCapturaButtom.Controls.Add(this.lblMultas);
            this.panelCapturaButtom.Controls.Add(this.label4);
            this.panelCapturaButtom.Controls.Add(this.txtTotal);
            this.panelCapturaButtom.Controls.Add(this.txtMultas);
            this.panelCapturaButtom.Controls.Add(this.txtImporte);
            this.panelCapturaButtom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelCapturaButtom.Location = new System.Drawing.Point(3, 186);
            this.panelCapturaButtom.Name = "panelCapturaButtom";
            this.panelCapturaButtom.Size = new System.Drawing.Size(820, 161);
            this.panelCapturaButtom.TabIndex = 14;
            // 
            // pnlMetodoPago
            // 
            this.pnlMetodoPago.Controls.Add(this.label6);
            this.pnlMetodoPago.Controls.Add(this.panel2);
            this.pnlMetodoPago.Controls.Add(this.label8);
            this.pnlMetodoPago.Controls.Add(this.btnCapturaPago);
            this.pnlMetodoPago.Controls.Add(this.txtImpEf);
            this.pnlMetodoPago.Controls.Add(this.label12);
            this.pnlMetodoPago.Controls.Add(this.txtImpChq);
            this.pnlMetodoPago.Controls.Add(this.txtImpFicha);
            this.pnlMetodoPago.Controls.Add(this.label9);
            this.pnlMetodoPago.Controls.Add(this.cmbBancoFicha);
            this.pnlMetodoPago.Controls.Add(this.txtCheque);
            this.pnlMetodoPago.Controls.Add(this.label11);
            this.pnlMetodoPago.Controls.Add(this.label10);
            this.pnlMetodoPago.Controls.Add(this.txtFicha);
            this.pnlMetodoPago.Controls.Add(this.cmbBancoCheq);
            this.pnlMetodoPago.Location = new System.Drawing.Point(3, 4);
            this.pnlMetodoPago.Name = "pnlMetodoPago";
            this.pnlMetodoPago.Size = new System.Drawing.Size(561, 152);
            this.pnlMetodoPago.TabIndex = 19;
            this.pnlMetodoPago.Visible = false;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(6, 132);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(138, 16);
            this.label6.TabIndex = 20;
            this.label6.Text = "*Campos obligatorios";
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.LightGreen;
            this.panel2.Controls.Add(this.label3);
            this.panel2.Location = new System.Drawing.Point(3, 4);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(548, 24);
            this.panel2.TabIndex = 19;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.SystemColors.WindowText;
            this.label3.Location = new System.Drawing.Point(215, 4);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(123, 16);
            this.label3.TabIndex = 1;
            this.label3.Text = "Metodo de Pago";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(303, 33);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(148, 15);
            this.label8.TabIndex = 7;
            this.label8.Text = "*Importe en Efectivo : ";
            // 
            // btnCapturaPago
            // 
            this.btnCapturaPago.Image = global::WFPGranjas.Properties.Resources.conseguir_dinero24;
            this.btnCapturaPago.Location = new System.Drawing.Point(311, 116);
            this.btnCapturaPago.Name = "btnCapturaPago";
            this.btnCapturaPago.Size = new System.Drawing.Size(240, 32);
            this.btnCapturaPago.TabIndex = 24;
            this.btnCapturaPago.Text = "Efectuar Pago";
            this.btnCapturaPago.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCapturaPago.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCapturaPago.UseVisualStyleBackColor = true;
            this.btnCapturaPago.Click += new System.EventHandler(this.btnCapturaPago_Click);
            // 
            // txtImpEf
            // 
            this.txtImpEf.Location = new System.Drawing.Point(451, 30);
            this.txtImpEf.Name = "txtImpEf";
            this.txtImpEf.Size = new System.Drawing.Size(100, 22);
            this.txtImpEf.TabIndex = 17;
            this.txtImpEf.Text = "0.00";
            this.txtImpEf.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtImpEf.MouseClick += new System.Windows.Forms.MouseEventHandler(this.txtImpEf_MouseClick);
            this.txtImpEf.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtImpEf_KeyPress);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(317, 92);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(133, 15);
            this.label12.TabIndex = 17;
            this.label12.Text = "*Importe de Ficha : ";
            // 
            // txtImpChq
            // 
            this.txtImpChq.Location = new System.Drawing.Point(451, 59);
            this.txtImpChq.Name = "txtImpChq";
            this.txtImpChq.Size = new System.Drawing.Size(100, 22);
            this.txtImpChq.TabIndex = 20;
            this.txtImpChq.Text = "0.00";
            this.txtImpChq.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtImpChq.MouseClick += new System.Windows.Forms.MouseEventHandler(this.txtImpChq_MouseClick);
            this.txtImpChq.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtImpChq_KeyPress);
            // 
            // txtImpFicha
            // 
            this.txtImpFicha.Location = new System.Drawing.Point(451, 89);
            this.txtImpFicha.Name = "txtImpFicha";
            this.txtImpFicha.Size = new System.Drawing.Size(100, 22);
            this.txtImpFicha.TabIndex = 23;
            this.txtImpFicha.Text = "0.00";
            this.txtImpFicha.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
            this.txtImpFicha.MouseClick += new System.Windows.Forms.MouseEventHandler(this.txtImpFicha_MouseClick);
            this.txtImpFicha.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtImpFicha_KeyPress);
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(308, 62);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(147, 15);
            this.label9.TabIndex = 9;
            this.label9.Text = "*Importe de Cheque : ";
            // 
            // cmbBancoFicha
            // 
            this.cmbBancoFicha.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbBancoFicha.FormattingEnabled = true;
            this.cmbBancoFicha.ItemHeight = 16;
            this.cmbBancoFicha.Location = new System.Drawing.Point(182, 89);
            this.cmbBancoFicha.Name = "cmbBancoFicha";
            this.cmbBancoFicha.Size = new System.Drawing.Size(101, 24);
            this.cmbBancoFicha.TabIndex = 22;
            // 
            // txtCheque
            // 
            this.txtCheque.Location = new System.Drawing.Point(89, 60);
            this.txtCheque.Name = "txtCheque";
            this.txtCheque.Size = new System.Drawing.Size(87, 22);
            this.txtCheque.TabIndex = 18;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(20, 94);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(68, 15);
            this.label11.TabIndex = 14;
            this.label11.Text = "Ficha No.";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(6, 63);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(82, 15);
            this.label10.TabIndex = 11;
            this.label10.Text = "Cheque No.";
            // 
            // txtFicha
            // 
            this.txtFicha.Location = new System.Drawing.Point(89, 90);
            this.txtFicha.Name = "txtFicha";
            this.txtFicha.Size = new System.Drawing.Size(87, 22);
            this.txtFicha.TabIndex = 21;
            // 
            // cmbBancoCheq
            // 
            this.cmbBancoCheq.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbBancoCheq.FormattingEnabled = true;
            this.cmbBancoCheq.ItemHeight = 16;
            this.cmbBancoCheq.Location = new System.Drawing.Point(182, 59);
            this.cmbBancoCheq.Name = "cmbBancoCheq";
            this.cmbBancoCheq.Size = new System.Drawing.Size(101, 24);
            this.cmbBancoCheq.TabIndex = 19;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(622, 95);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(96, 16);
            this.label7.TabIndex = 5;
            this.label7.Text = "Total a Pagar :";
            // 
            // lblMultas
            // 
            this.lblMultas.AutoSize = true;
            this.lblMultas.Location = new System.Drawing.Point(570, 64);
            this.lblMultas.Name = "lblMultas";
            this.lblMultas.Size = new System.Drawing.Size(148, 16);
            this.lblMultas.TabIndex = 4;
            this.lblMultas.Text = "Actualizacion y Multas : ";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(650, 8);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(62, 16);
            this.label4.TabIndex = 3;
            this.label4.Text = "Importe : ";
            // 
            // txtTotal
            // 
            this.txtTotal.Enabled = false;
            this.txtTotal.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtTotal.Location = new System.Drawing.Point(719, 91);
            this.txtTotal.Name = "txtTotal";
            this.txtTotal.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.txtTotal.Size = new System.Drawing.Size(100, 22);
            this.txtTotal.TabIndex = 2;
            this.txtTotal.Text = "0.00";
            // 
            // txtMultas
            // 
            this.txtMultas.Location = new System.Drawing.Point(719, 61);
            this.txtMultas.Name = "txtMultas";
            this.txtMultas.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.txtMultas.Size = new System.Drawing.Size(100, 22);
            this.txtMultas.TabIndex = 25;
            this.txtMultas.Text = "0.00";
            this.txtMultas.MouseClick += new System.Windows.Forms.MouseEventHandler(this.txtDescuento_MouseClick);
            this.txtMultas.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtDescuento_KeyPress);
            this.txtMultas.KeyUp += new System.Windows.Forms.KeyEventHandler(this.txtDescuento_KeyUp);
            // 
            // txtImporte
            // 
            this.txtImporte.Enabled = false;
            this.txtImporte.Location = new System.Drawing.Point(719, 6);
            this.txtImporte.Name = "txtImporte";
            this.txtImporte.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.txtImporte.Size = new System.Drawing.Size(100, 22);
            this.txtImporte.TabIndex = 0;
            this.txtImporte.Text = "0.00";
            // 
            // panelCapturaTop
            // 
            this.panelCapturaTop.Controls.Add(this.btnAddCuota);
            this.panelCapturaTop.Controls.Add(this.lblMsj);
            this.panelCapturaTop.Controls.Add(this.cmbPeriodos);
            this.panelCapturaTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelCapturaTop.Location = new System.Drawing.Point(3, 18);
            this.panelCapturaTop.Name = "panelCapturaTop";
            this.panelCapturaTop.Size = new System.Drawing.Size(820, 43);
            this.panelCapturaTop.TabIndex = 13;
            // 
            // btnAddCuota
            // 
            this.btnAddCuota.Image = global::WFPGranjas.Properties.Resources.agregar_notas;
            this.btnAddCuota.Location = new System.Drawing.Point(672, 9);
            this.btnAddCuota.Name = "btnAddCuota";
            this.btnAddCuota.Size = new System.Drawing.Size(137, 28);
            this.btnAddCuota.TabIndex = 16;
            this.btnAddCuota.Text = "Agregar Renglon";
            this.btnAddCuota.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnAddCuota.UseVisualStyleBackColor = true;
            this.btnAddCuota.Click += new System.EventHandler(this.btnAddCuota_Click);
            this.btnAddCuota.MouseDown += new System.Windows.Forms.MouseEventHandler(this.btnAddCuota_MouseDown);
            this.btnAddCuota.MouseUp += new System.Windows.Forms.MouseEventHandler(this.btnAddCuota_MouseUp);
            // 
            // lblMsj
            // 
            this.lblMsj.AutoSize = true;
            this.lblMsj.Location = new System.Drawing.Point(311, 15);
            this.lblMsj.Name = "lblMsj";
            this.lblMsj.Size = new System.Drawing.Size(161, 16);
            this.lblMsj.TabIndex = 1;
            this.lblMsj.Text = "Cuota de Mantenimiento : ";
            // 
            // cmbPeriodos
            // 
            this.cmbPeriodos.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbPeriodos.Location = new System.Drawing.Point(474, 12);
            this.cmbPeriodos.Name = "cmbPeriodos";
            this.cmbPeriodos.Size = new System.Drawing.Size(196, 24);
            this.cmbPeriodos.TabIndex = 0;
            // 
            // dgPropietario
            // 
            this.dgPropietario.AllowUserToAddRows = false;
            this.dgPropietario.AllowUserToDeleteRows = false;
            this.dgPropietario.AllowUserToResizeRows = false;
            this.dgPropietario.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgPropietario.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.dgPropietario.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgPropietario.Location = new System.Drawing.Point(142, 39);
            this.dgPropietario.MultiSelect = false;
            this.dgPropietario.Name = "dgPropietario";
            this.dgPropietario.ReadOnly = true;
            this.dgPropietario.RowHeadersVisible = false;
            this.dgPropietario.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.dgPropietario.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgPropietario.Size = new System.Drawing.Size(322, 97);
            this.dgPropietario.TabIndex = 9;
            this.dgPropietario.TabStop = false;
            this.dgPropietario.Visible = false;
            this.dgPropietario.CellMouseDoubleClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dgPropietario_CellMouseDoubleClick);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.SystemColors.Window;
            this.label5.Location = new System.Drawing.Point(3, 16);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(135, 15);
            this.label5.TabIndex = 14;
            this.label5.Text = "Nombre del Colono:";
            // 
            // txtColono
            // 
            this.txtColono.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtColono.Location = new System.Drawing.Point(136, 13);
            this.txtColono.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtColono.Name = "txtColono";
            this.txtColono.Size = new System.Drawing.Size(322, 22);
            this.txtColono.TabIndex = 12;
            this.txtColono.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtColono_KeyDown);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.Window;
            this.label2.Location = new System.Drawing.Point(663, 19);
            this.label2.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(39, 15);
            this.label2.TabIndex = 18;
            this.label2.Text = "Lote:";
            // 
            // cmbManzana
            // 
            this.cmbManzana.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbManzana.FormattingEnabled = true;
            this.cmbManzana.Location = new System.Drawing.Point(586, 14);
            this.cmbManzana.Margin = new System.Windows.Forms.Padding(4);
            this.cmbManzana.Name = "cmbManzana";
            this.cmbManzana.Size = new System.Drawing.Size(72, 24);
            this.cmbManzana.TabIndex = 16;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.Window;
            this.label1.Location = new System.Drawing.Point(517, 17);
            this.label1.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(70, 15);
            this.label1.TabIndex = 15;
            this.label1.Text = "Manzana:";
            // 
            // txtLote
            // 
            this.txtLote.Location = new System.Drawing.Point(703, 16);
            this.txtLote.Margin = new System.Windows.Forms.Padding(8, 6, 8, 6);
            this.txtLote.MaxLength = 10;
            this.txtLote.Name = "txtLote";
            this.txtLote.Size = new System.Drawing.Size(74, 22);
            this.txtLote.TabIndex = 17;
            this.txtLote.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtLote_KeyPress);
            // 
            // panelTop
            // 
            this.panelTop.BackColor = System.Drawing.Color.SteelBlue;
            this.panelTop.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelTop.Controls.Add(this.btnBuscar);
            this.panelTop.Controls.Add(this.txtLote);
            this.panelTop.Controls.Add(this.label1);
            this.panelTop.Controls.Add(this.cmbManzana);
            this.panelTop.Controls.Add(this.label2);
            this.panelTop.Controls.Add(this.txtColono);
            this.panelTop.Controls.Add(this.label5);
            this.panelTop.Location = new System.Drawing.Point(5, 4);
            this.panelTop.Name = "panelTop";
            this.panelTop.Size = new System.Drawing.Size(826, 50);
            this.panelTop.TabIndex = 8;
            // 
            // btnBuscar
            // 
            this.btnBuscar.Image = global::WFPGranjas.Properties.Resources.busca_mini;
            this.btnBuscar.Location = new System.Drawing.Point(776, 15);
            this.btnBuscar.Margin = new System.Windows.Forms.Padding(4);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(25, 23);
            this.btnBuscar.TabIndex = 19;
            this.btnBuscar.TabStop = false;
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // gbDRecibo
            // 
            this.gbDRecibo.Controls.Add(this.lblFechaSys);
            this.gbDRecibo.Controls.Add(this.label13);
            this.gbDRecibo.Controls.Add(this.btnCapturaR);
            this.gbDRecibo.Location = new System.Drawing.Point(609, 60);
            this.gbDRecibo.Name = "gbDRecibo";
            this.gbDRecibo.Size = new System.Drawing.Size(221, 85);
            this.gbDRecibo.TabIndex = 10;
            this.gbDRecibo.TabStop = false;
            this.gbDRecibo.Visible = false;
            // 
            // lblFechaSys
            // 
            this.lblFechaSys.AutoSize = true;
            this.lblFechaSys.Location = new System.Drawing.Point(11, 29);
            this.lblFechaSys.Name = "lblFechaSys";
            this.lblFechaSys.Size = new System.Drawing.Size(72, 16);
            this.lblFechaSys.TabIndex = 11;
            this.lblFechaSys.Text = "__-__-____";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.Location = new System.Drawing.Point(6, 15);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(135, 16);
            this.label13.TabIndex = 0;
            this.label13.Text = "Fecha del Recibo:";
            // 
            // btnCapturaR
            // 
            this.btnCapturaR.Enabled = false;
            this.btnCapturaR.Image = global::WFPGranjas.Properties.Resources.expediente;
            this.btnCapturaR.Location = new System.Drawing.Point(40, 50);
            this.btnCapturaR.Name = "btnCapturaR";
            this.btnCapturaR.Size = new System.Drawing.Size(156, 26);
            this.btnCapturaR.TabIndex = 10;
            this.btnCapturaR.Text = "Capturar Recibo";
            this.btnCapturaR.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCapturaR.UseVisualStyleBackColor = true;
            this.btnCapturaR.Click += new System.EventHandler(this.btnCapturaR_Click);
            // 
            // lblMora
            // 
            this.lblMora.AutoSize = true;
            this.lblMora.Location = new System.Drawing.Point(641, 37);
            this.lblMora.Name = "lblMora";
            this.lblMora.Size = new System.Drawing.Size(71, 16);
            this.lblMora.TabIndex = 26;
            this.lblMora.Text = "Moratorio :";
            // 
            // txtMora
            // 
            this.txtMora.Enabled = false;
            this.txtMora.Location = new System.Drawing.Point(719, 33);
            this.txtMora.Name = "txtMora";
            this.txtMora.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.txtMora.Size = new System.Drawing.Size(100, 22);
            this.txtMora.TabIndex = 27;
            this.txtMora.Text = "0.00";
            // 
            // frmPagoMto
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(834, 504);
            this.Controls.Add(this.gbDRecibo);
            this.Controls.Add(this.dgPropietario);
            this.Controls.Add(this.groupCuota);
            this.Controls.Add(this.groupDColono);
            this.Controls.Add(this.panelTop);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmPagoMto";
            this.Text = "Servicio Mantenimiento";
            this.Load += new System.EventHandler(this.frmAnticipoMto_Load);
            this.groupDColono.ResumeLayout(false);
            this.groupDColono.PerformLayout();
            this.groupCuota.ResumeLayout(false);
            this.panelCapturaCenter.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgPartidasR)).EndInit();
            this.panelCapturaButtom.ResumeLayout(false);
            this.panelCapturaButtom.PerformLayout();
            this.pnlMetodoPago.ResumeLayout(false);
            this.pnlMetodoPago.PerformLayout();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.panelCapturaTop.ResumeLayout(false);
            this.panelCapturaTop.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgPropietario)).EndInit();
            this.panelTop.ResumeLayout(false);
            this.panelTop.PerformLayout();
            this.gbDRecibo.ResumeLayout(false);
            this.gbDRecibo.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.GroupBox groupDColono;
        private System.Windows.Forms.GroupBox groupCuota;
        private System.Windows.Forms.Label lblMzaLote;
        private System.Windows.Forms.Label lblColono;
        private System.Windows.Forms.Panel panelCapturaCenter;
        private System.Windows.Forms.DataGridView dgPartidasR;
        private System.Windows.Forms.Panel panelCapturaButtom;
        private System.Windows.Forms.Panel panelCapturaTop;
        private System.Windows.Forms.DataGridView dgPropietario;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label lblMultas;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txtTotal;
        private System.Windows.Forms.TextBox txtMultas;
        private System.Windows.Forms.TextBox txtImporte;
        private System.Windows.Forms.TextBox txtImpEf;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.TextBox txtImpChq;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.TextBox txtImpFicha;
        private System.Windows.Forms.ComboBox cmbBancoFicha;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.TextBox txtFicha;
        private System.Windows.Forms.ComboBox cmbBancoCheq;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtCheque;
        private System.Windows.Forms.Button btnCapturaPago;
        private System.Windows.Forms.Label lblMsj;
        private System.Windows.Forms.Button btnAddCuota;
        private System.Windows.Forms.ComboBox cmbPeriodos;
        private System.Windows.Forms.Button btnCapturaR;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtColono;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.ComboBox cmbManzana;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtLote;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.Label lblDireccion;
        private System.Windows.Forms.GroupBox gbDRecibo;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label lblFechaSys;
        private System.Windows.Forms.Panel pnlMetodoPago;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label6;
        public System.Windows.Forms.Panel panelTop;
        private System.Windows.Forms.Label lblMora;
        private System.Windows.Forms.TextBox txtMora;
    }
}