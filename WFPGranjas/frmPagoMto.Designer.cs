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
            this.btnCapturaPago = new System.Windows.Forms.Button();
            this.label12 = new System.Windows.Forms.Label();
            this.txtImpFicha = new System.Windows.Forms.TextBox();
            this.cmbBancoFicha = new System.Windows.Forms.ComboBox();
            this.label11 = new System.Windows.Forms.Label();
            this.txtFicha = new System.Windows.Forms.TextBox();
            this.cmbBancoCheq = new System.Windows.Forms.ComboBox();
            this.label10 = new System.Windows.Forms.Label();
            this.txtCheque = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.txtImpChq = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtImpEf = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.txtTotal = new System.Windows.Forms.TextBox();
            this.txtMultas = new System.Windows.Forms.TextBox();
            this.txtImporte = new System.Windows.Forms.TextBox();
            this.panelCapturaTop = new System.Windows.Forms.Panel();
            this.btnAddCuota = new System.Windows.Forms.Button();
            this.label13 = new System.Windows.Forms.Label();
            this.cmbPeriodos = new System.Windows.Forms.ComboBox();
            this.panelTop = new System.Windows.Forms.Panel();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.txtLote = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.cmbManzana = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.txtColono = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.btnCapturaR = new System.Windows.Forms.Button();
            this.dgPropietario = new System.Windows.Forms.DataGridView();
            this.groupDColono.SuspendLayout();
            this.groupCuota.SuspendLayout();
            this.panelCapturaCenter.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgPartidasR)).BeginInit();
            this.panelCapturaButtom.SuspendLayout();
            this.panelCapturaTop.SuspendLayout();
            this.panelTop.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgPropietario)).BeginInit();
            this.SuspendLayout();
            // 
            // groupDColono
            // 
            this.groupDColono.Controls.Add(this.lblMzaLote);
            this.groupDColono.Controls.Add(this.lblDireccion);
            this.groupDColono.Controls.Add(this.lblColono);
            this.groupDColono.Location = new System.Drawing.Point(12, 60);
            this.groupDColono.Name = "groupDColono";
            this.groupDColono.Size = new System.Drawing.Size(774, 85);
            this.groupDColono.TabIndex = 6;
            this.groupDColono.TabStop = false;
            this.groupDColono.Text = "Datos del Colono";
            this.groupDColono.Visible = false;
            // 
            // lblMzaLote
            // 
            this.lblMzaLote.AutoSize = true;
            this.lblMzaLote.Location = new System.Drawing.Point(6, 63);
            this.lblMzaLote.Name = "lblMzaLote";
            this.lblMzaLote.Size = new System.Drawing.Size(121, 16);
            this.lblMzaLote.TabIndex = 2;
            this.lblMzaLote.Text = "Manzana: I Lote: 25";
            // 
            // lblDireccion
            // 
            this.lblDireccion.AutoSize = true;
            this.lblDireccion.Location = new System.Drawing.Point(6, 47);
            this.lblDireccion.Name = "lblDireccion";
            this.lblDireccion.Size = new System.Drawing.Size(291, 16);
            this.lblDireccion.TabIndex = 1;
            this.lblDireccion.Text = "Gregorio Moreno SN, Col. Adolfo Lopez Mateos";
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
            this.groupCuota.Location = new System.Drawing.Point(12, 165);
            this.groupCuota.Name = "groupCuota";
            this.groupCuota.Size = new System.Drawing.Size(826, 359);
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
            this.panelCapturaCenter.Size = new System.Drawing.Size(820, 104);
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
            this.dgPartidasR.Size = new System.Drawing.Size(820, 104);
            this.dgPartidasR.TabIndex = 0;
            // 
            // panelCapturaButtom
            // 
            this.panelCapturaButtom.Controls.Add(this.btnCapturaPago);
            this.panelCapturaButtom.Controls.Add(this.label12);
            this.panelCapturaButtom.Controls.Add(this.txtImpFicha);
            this.panelCapturaButtom.Controls.Add(this.cmbBancoFicha);
            this.panelCapturaButtom.Controls.Add(this.label11);
            this.panelCapturaButtom.Controls.Add(this.txtFicha);
            this.panelCapturaButtom.Controls.Add(this.cmbBancoCheq);
            this.panelCapturaButtom.Controls.Add(this.label10);
            this.panelCapturaButtom.Controls.Add(this.txtCheque);
            this.panelCapturaButtom.Controls.Add(this.label9);
            this.panelCapturaButtom.Controls.Add(this.txtImpChq);
            this.panelCapturaButtom.Controls.Add(this.label8);
            this.panelCapturaButtom.Controls.Add(this.txtImpEf);
            this.panelCapturaButtom.Controls.Add(this.label7);
            this.panelCapturaButtom.Controls.Add(this.label6);
            this.panelCapturaButtom.Controls.Add(this.label4);
            this.panelCapturaButtom.Controls.Add(this.txtTotal);
            this.panelCapturaButtom.Controls.Add(this.txtMultas);
            this.panelCapturaButtom.Controls.Add(this.txtImporte);
            this.panelCapturaButtom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelCapturaButtom.Location = new System.Drawing.Point(3, 165);
            this.panelCapturaButtom.Name = "panelCapturaButtom";
            this.panelCapturaButtom.Size = new System.Drawing.Size(820, 191);
            this.panelCapturaButtom.TabIndex = 14;
            // 
            // btnCapturaPago
            // 
            this.btnCapturaPago.Image = global::WFPGranjas.Properties.Resources.gastos;
            this.btnCapturaPago.ImageAlign = System.Drawing.ContentAlignment.TopLeft;
            this.btnCapturaPago.Location = new System.Drawing.Point(675, 87);
            this.btnCapturaPago.Name = "btnCapturaPago";
            this.btnCapturaPago.Size = new System.Drawing.Size(144, 33);
            this.btnCapturaPago.TabIndex = 18;
            this.btnCapturaPago.Text = "Capturar Pago";
            this.btnCapturaPago.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCapturaPago.UseVisualStyleBackColor = true;
            this.btnCapturaPago.Click += new System.EventHandler(this.btnCapturaPago_Click);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Location = new System.Drawing.Point(595, 163);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(117, 16);
            this.label12.TabIndex = 17;
            this.label12.Text = "Importe de Ficha : ";
            // 
            // txtImpFicha
            // 
            this.txtImpFicha.Location = new System.Drawing.Point(718, 160);
            this.txtImpFicha.Name = "txtImpFicha";
            this.txtImpFicha.Size = new System.Drawing.Size(100, 22);
            this.txtImpFicha.TabIndex = 16;
            this.txtImpFicha.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtImpFicha_KeyPress);
            // 
            // cmbBancoFicha
            // 
            this.cmbBancoFicha.FormattingEnabled = true;
            this.cmbBancoFicha.Location = new System.Drawing.Point(718, 125);
            this.cmbBancoFicha.Name = "cmbBancoFicha";
            this.cmbBancoFicha.Size = new System.Drawing.Size(101, 24);
            this.cmbBancoFicha.TabIndex = 15;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(559, 133);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(65, 16);
            this.label11.TabIndex = 14;
            this.label11.Text = "Ficha No.";
            // 
            // txtFicha
            // 
            this.txtFicha.Location = new System.Drawing.Point(625, 127);
            this.txtFicha.Name = "txtFicha";
            this.txtFicha.Size = new System.Drawing.Size(87, 22);
            this.txtFicha.TabIndex = 13;
            // 
            // cmbBancoCheq
            // 
            this.cmbBancoCheq.FormattingEnabled = true;
            this.cmbBancoCheq.Location = new System.Drawing.Point(449, 127);
            this.cmbBancoCheq.Name = "cmbBancoCheq";
            this.cmbBancoCheq.Size = new System.Drawing.Size(101, 24);
            this.cmbBancoCheq.TabIndex = 12;
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(275, 135);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(79, 16);
            this.label10.TabIndex = 11;
            this.label10.Text = "Cheque No.";
            // 
            // txtCheque
            // 
            this.txtCheque.Location = new System.Drawing.Point(356, 129);
            this.txtCheque.Name = "txtCheque";
            this.txtCheque.Size = new System.Drawing.Size(87, 22);
            this.txtCheque.TabIndex = 10;
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(313, 163);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(131, 16);
            this.label9.TabIndex = 9;
            this.label9.Text = "Importe de Cheque : ";
            // 
            // txtImpChq
            // 
            this.txtImpChq.Location = new System.Drawing.Point(450, 160);
            this.txtImpChq.Name = "txtImpChq";
            this.txtImpChq.Size = new System.Drawing.Size(100, 22);
            this.txtImpChq.TabIndex = 8;
            this.txtImpChq.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtImpChq_KeyPress);
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(9, 132);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(131, 16);
            this.label8.TabIndex = 7;
            this.label8.Text = "Importe en Efectivo : ";
            // 
            // txtImpEf
            // 
            this.txtImpEf.Location = new System.Drawing.Point(146, 129);
            this.txtImpEf.Name = "txtImpEf";
            this.txtImpEf.Size = new System.Drawing.Size(100, 22);
            this.txtImpEf.TabIndex = 6;
            this.txtImpEf.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtImpEf_KeyPress);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(621, 68);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(96, 16);
            this.label7.TabIndex = 5;
            this.label7.Text = "Total a Pagar :";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(570, 34);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(148, 16);
            this.label6.TabIndex = 4;
            this.label6.Text = "Actualizacion y Multas : ";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(650, 6);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(62, 16);
            this.label4.TabIndex = 3;
            this.label4.Text = "Importe : ";
            // 
            // txtTotal
            // 
            this.txtTotal.Enabled = false;
            this.txtTotal.Location = new System.Drawing.Point(719, 62);
            this.txtTotal.Name = "txtTotal";
            this.txtTotal.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.txtTotal.Size = new System.Drawing.Size(100, 22);
            this.txtTotal.TabIndex = 2;
            // 
            // txtMultas
            // 
            this.txtMultas.Location = new System.Drawing.Point(718, 34);
            this.txtMultas.Name = "txtMultas";
            this.txtMultas.RightToLeft = System.Windows.Forms.RightToLeft.Yes;
            this.txtMultas.Size = new System.Drawing.Size(100, 22);
            this.txtMultas.TabIndex = 1;
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
            // 
            // panelCapturaTop
            // 
            this.panelCapturaTop.Controls.Add(this.btnAddCuota);
            this.panelCapturaTop.Controls.Add(this.label13);
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
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Location = new System.Drawing.Point(329, 15);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(161, 16);
            this.label13.TabIndex = 1;
            this.label13.Text = "Cuota de Mantenimiento : ";
            // 
            // cmbPeriodos
            // 
            this.cmbPeriodos.Location = new System.Drawing.Point(492, 12);
            this.cmbPeriodos.Name = "cmbPeriodos";
            this.cmbPeriodos.Size = new System.Drawing.Size(178, 24);
            this.cmbPeriodos.TabIndex = 0;
            // 
            // panelTop
            // 
            this.panelTop.BackColor = System.Drawing.Color.MistyRose;
            this.panelTop.Controls.Add(this.btnBuscar);
            this.panelTop.Controls.Add(this.txtLote);
            this.panelTop.Controls.Add(this.label1);
            this.panelTop.Controls.Add(this.cmbManzana);
            this.panelTop.Controls.Add(this.label2);
            this.panelTop.Controls.Add(this.txtColono);
            this.panelTop.Controls.Add(this.label5);
            this.panelTop.Controls.Add(this.btnCapturaR);
            this.panelTop.Location = new System.Drawing.Point(12, 4);
            this.panelTop.Name = "panelTop";
            this.panelTop.Size = new System.Drawing.Size(897, 50);
            this.panelTop.TabIndex = 8;
            // 
            // btnBuscar
            // 
            this.btnBuscar.Image = global::WFPGranjas.Properties.Resources.busca_mini;
            this.btnBuscar.Location = new System.Drawing.Point(745, 15);
            this.btnBuscar.Margin = new System.Windows.Forms.Padding(4);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(25, 23);
            this.btnBuscar.TabIndex = 19;
            this.btnBuscar.TabStop = false;
            this.btnBuscar.UseVisualStyleBackColor = true;
            // 
            // txtLote
            // 
            this.txtLote.Location = new System.Drawing.Point(663, 16);
            this.txtLote.Margin = new System.Windows.Forms.Padding(8, 6, 8, 6);
            this.txtLote.MaxLength = 10;
            this.txtLote.Name = "txtLote";
            this.txtLote.Size = new System.Drawing.Size(74, 22);
            this.txtLote.TabIndex = 17;
            this.txtLote.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtLote_KeyPress);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(474, 17);
            this.label1.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(66, 16);
            this.label1.TabIndex = 15;
            this.label1.Text = "Manzana:";
            // 
            // cmbManzana
            // 
            this.cmbManzana.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbManzana.FormattingEnabled = true;
            this.cmbManzana.Location = new System.Drawing.Point(541, 14);
            this.cmbManzana.Margin = new System.Windows.Forms.Padding(4);
            this.cmbManzana.Name = "cmbManzana";
            this.cmbManzana.Size = new System.Drawing.Size(72, 24);
            this.cmbManzana.TabIndex = 16;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(625, 19);
            this.label2.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(37, 16);
            this.label2.TabIndex = 18;
            this.label2.Text = "Lote:";
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
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(8, 16);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(128, 16);
            this.label5.TabIndex = 14;
            this.label5.Text = "Nombre del Colono:";
            // 
            // btnCapturaR
            // 
            this.btnCapturaR.Enabled = false;
            this.btnCapturaR.Image = global::WFPGranjas.Properties.Resources.expediente;
            this.btnCapturaR.Location = new System.Drawing.Point(796, 4);
            this.btnCapturaR.Name = "btnCapturaR";
            this.btnCapturaR.Size = new System.Drawing.Size(85, 41);
            this.btnCapturaR.TabIndex = 10;
            this.btnCapturaR.Text = "Capturar Recibo";
            this.btnCapturaR.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCapturaR.UseVisualStyleBackColor = true;
            this.btnCapturaR.Click += new System.EventHandler(this.btnCapturaR_Click);
            // 
            // dgPropietario
            // 
            this.dgPropietario.AllowUserToAddRows = false;
            this.dgPropietario.AllowUserToDeleteRows = false;
            this.dgPropietario.AllowUserToResizeRows = false;
            this.dgPropietario.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgPropietario.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.dgPropietario.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgPropietario.Location = new System.Drawing.Point(148, 39);
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
            // frmPagoMto
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(921, 543);
            this.Controls.Add(this.dgPropietario);
            this.Controls.Add(this.groupCuota);
            this.Controls.Add(this.groupDColono);
            this.Controls.Add(this.panelTop);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Margin = new System.Windows.Forms.Padding(4);
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
            this.panelCapturaTop.ResumeLayout(false);
            this.panelCapturaTop.PerformLayout();
            this.panelTop.ResumeLayout(false);
            this.panelTop.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgPropietario)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.GroupBox groupDColono;
        private System.Windows.Forms.GroupBox groupCuota;
        private System.Windows.Forms.Panel panelTop;
        private System.Windows.Forms.Button btnCapturaR;
        private System.Windows.Forms.Label lblMzaLote;
        private System.Windows.Forms.Label lblDireccion;
        private System.Windows.Forms.Label lblColono;
        private System.Windows.Forms.Panel panelCapturaCenter;
        private System.Windows.Forms.DataGridView dgPartidasR;
        private System.Windows.Forms.Panel panelCapturaButtom;
        private System.Windows.Forms.Panel panelCapturaTop;
        private System.Windows.Forms.TextBox txtColono;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.DataGridView dgPropietario;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label label6;
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
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.TextBox txtLote;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cmbManzana;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Button btnAddCuota;
        private System.Windows.Forms.ComboBox cmbPeriodos;
    }
}