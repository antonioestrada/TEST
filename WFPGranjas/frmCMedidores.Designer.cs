namespace WFPGranjas
{
    partial class frmCMedidores
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
            this.pnlPrinBancos = new System.Windows.Forms.Panel();
            this.menuStrip2 = new System.Windows.Forms.MenuStrip();
            this.otreToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip = new System.Windows.Forms.MenuStrip();
            this.mNuevo = new System.Windows.Forms.ToolStripMenuItem();
            this.mEditar = new System.Windows.Forms.ToolStripMenuItem();
            this.mEliminar = new System.Windows.Forms.ToolStripMenuItem();
            this.mSalir = new System.Windows.Forms.ToolStripMenuItem();
            this.label4 = new System.Windows.Forms.Label();
            this.gbBusca = new System.Windows.Forms.GroupBox();
            this.btnVer = new System.Windows.Forms.Button();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.lblContrato = new System.Windows.Forms.Label();
            this.cmbContratos = new System.Windows.Forms.ComboBox();
            this.txtLote = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.cmbManzana = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnCancel = new System.Windows.Forms.Button();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.gbGenerales = new System.Windows.Forms.GroupBox();
            this.label11 = new System.Windows.Forms.Label();
            this.btnAdd = new System.Windows.Forms.Button();
            this.txtContrato = new System.Windows.Forms.TextBox();
            this.label10 = new System.Windows.Forms.Label();
            this.txtBaseCNA = new System.Windows.Forms.TextBox();
            this.label9 = new System.Windows.Forms.Label();
            this.txtM2 = new System.Windows.Forms.TextBox();
            this.label7 = new System.Windows.Forms.Label();
            this.txtMedidor = new System.Windows.Forms.TextBox();
            this.label8 = new System.Windows.Forms.Label();
            this.txtDireccion = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.txtColono = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.pnlEncabezado = new System.Windows.Forms.Panel();
            this.lblEncabezado = new System.Windows.Forms.Label();
            this.pnlResult = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lblMensaje = new System.Windows.Forms.Label();
            this.pnlPrinBancos.SuspendLayout();
            this.menuStrip2.SuspendLayout();
            this.menuStrip.SuspendLayout();
            this.gbBusca.SuspendLayout();
            this.gbGenerales.SuspendLayout();
            this.pnlEncabezado.SuspendLayout();
            this.pnlResult.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlPrinBancos
            // 
            this.pnlPrinBancos.BackColor = System.Drawing.Color.Green;
            this.pnlPrinBancos.Controls.Add(this.menuStrip2);
            this.pnlPrinBancos.Controls.Add(this.menuStrip);
            this.pnlPrinBancos.Controls.Add(this.label4);
            this.pnlPrinBancos.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlPrinBancos.Location = new System.Drawing.Point(0, 0);
            this.pnlPrinBancos.Margin = new System.Windows.Forms.Padding(4);
            this.pnlPrinBancos.Name = "pnlPrinBancos";
            this.pnlPrinBancos.Size = new System.Drawing.Size(544, 28);
            this.pnlPrinBancos.TabIndex = 7;
            // 
            // menuStrip2
            // 
            this.menuStrip2.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.otreToolStripMenuItem});
            this.menuStrip2.Location = new System.Drawing.Point(0, 0);
            this.menuStrip2.Name = "menuStrip2";
            this.menuStrip2.Padding = new System.Windows.Forms.Padding(11, 2, 0, 2);
            this.menuStrip2.Size = new System.Drawing.Size(545, 24);
            this.menuStrip2.TabIndex = 11;
            this.menuStrip2.Text = "menuStrip2";
            this.menuStrip2.Visible = false;
            // 
            // otreToolStripMenuItem
            // 
            this.otreToolStripMenuItem.Name = "otreToolStripMenuItem";
            this.otreToolStripMenuItem.Size = new System.Drawing.Size(40, 20);
            this.otreToolStripMenuItem.Text = "otre";
            // 
            // menuStrip
            // 
            this.menuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mNuevo,
            this.mEditar,
            this.mEliminar,
            this.mSalir});
            this.menuStrip.Location = new System.Drawing.Point(0, 0);
            this.menuStrip.Name = "menuStrip";
            this.menuStrip.Padding = new System.Windows.Forms.Padding(11, 2, 0, 2);
            this.menuStrip.Size = new System.Drawing.Size(544, 24);
            this.menuStrip.TabIndex = 1;
            this.menuStrip.Text = "menuStrip1";
            // 
            // mNuevo
            // 
            this.mNuevo.Image = global::WFPGranjas.Properties.Resources.nuevo;
            this.mNuevo.Name = "mNuevo";
            this.mNuevo.Size = new System.Drawing.Size(70, 20);
            this.mNuevo.Text = "Nuevo";
            this.mNuevo.Click += new System.EventHandler(this.mNuevo_Click);
            // 
            // mEditar
            // 
            this.mEditar.Image = global::WFPGranjas.Properties.Resources.editar;
            this.mEditar.Name = "mEditar";
            this.mEditar.Size = new System.Drawing.Size(65, 20);
            this.mEditar.Text = "Editar";
            this.mEditar.Click += new System.EventHandler(this.mEditar_Click);
            // 
            // mEliminar
            // 
            this.mEliminar.Image = global::WFPGranjas.Properties.Resources.eliminar;
            this.mEliminar.Name = "mEliminar";
            this.mEliminar.Size = new System.Drawing.Size(78, 20);
            this.mEliminar.Text = "Eliminar";
            this.mEliminar.Click += new System.EventHandler(this.mEliminar_Click);
            // 
            // mSalir
            // 
            this.mSalir.Image = global::WFPGranjas.Properties.Resources.cerrar;
            this.mSalir.Name = "mSalir";
            this.mSalir.Size = new System.Drawing.Size(67, 20);
            this.mSalir.Text = "Cerrar";
            this.mSalir.Click += new System.EventHandler(this.mSalir_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.label4.Location = new System.Drawing.Point(19, 5);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(131, 16);
            this.label4.TabIndex = 0;
            this.label4.Text = "Catálogo: Bancos";
            // 
            // gbBusca
            // 
            this.gbBusca.Controls.Add(this.btnVer);
            this.gbBusca.Controls.Add(this.btnBuscar);
            this.gbBusca.Controls.Add(this.lblContrato);
            this.gbBusca.Controls.Add(this.cmbContratos);
            this.gbBusca.Controls.Add(this.txtLote);
            this.gbBusca.Controls.Add(this.label1);
            this.gbBusca.Controls.Add(this.cmbManzana);
            this.gbBusca.Controls.Add(this.label2);
            this.gbBusca.Dock = System.Windows.Forms.DockStyle.Top;
            this.gbBusca.Location = new System.Drawing.Point(0, 28);
            this.gbBusca.Name = "gbBusca";
            this.gbBusca.Size = new System.Drawing.Size(544, 63);
            this.gbBusca.TabIndex = 15;
            this.gbBusca.TabStop = false;
            this.gbBusca.Text = "Registros";
            // 
            // btnVer
            // 
            this.btnVer.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnVer.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnVer.Location = new System.Drawing.Point(501, 25);
            this.btnVer.Margin = new System.Windows.Forms.Padding(4);
            this.btnVer.Name = "btnVer";
            this.btnVer.Size = new System.Drawing.Size(37, 26);
            this.btnVer.TabIndex = 5;
            this.btnVer.Text = "Ver";
            this.btnVer.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnVer.UseVisualStyleBackColor = true;
            this.btnVer.Visible = false;
            this.btnVer.Click += new System.EventHandler(this.btnVer_Click);
            // 
            // btnBuscar
            // 
            this.btnBuscar.Image = global::WFPGranjas.Properties.Resources.busca_mini;
            this.btnBuscar.Location = new System.Drawing.Point(282, 27);
            this.btnBuscar.Margin = new System.Windows.Forms.Padding(4);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(25, 23);
            this.btnBuscar.TabIndex = 7;
            this.btnBuscar.TabStop = false;
            this.btnBuscar.UseVisualStyleBackColor = true;
            // 
            // lblContrato
            // 
            this.lblContrato.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.lblContrato.AutoSize = true;
            this.lblContrato.Location = new System.Drawing.Point(340, 30);
            this.lblContrato.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.lblContrato.Name = "lblContrato";
            this.lblContrato.Size = new System.Drawing.Size(61, 16);
            this.lblContrato.TabIndex = 6;
            this.lblContrato.Text = "Contrato:";
            this.lblContrato.Visible = false;
            // 
            // cmbContratos
            // 
            this.cmbContratos.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.cmbContratos.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbContratos.FormattingEnabled = true;
            this.cmbContratos.ItemHeight = 16;
            this.cmbContratos.Location = new System.Drawing.Point(402, 26);
            this.cmbContratos.Margin = new System.Windows.Forms.Padding(4);
            this.cmbContratos.Name = "cmbContratos";
            this.cmbContratos.Size = new System.Drawing.Size(98, 24);
            this.cmbContratos.TabIndex = 4;
            this.cmbContratos.Visible = false;
            // 
            // txtLote
            // 
            this.txtLote.Location = new System.Drawing.Point(200, 28);
            this.txtLote.Margin = new System.Windows.Forms.Padding(8, 6, 8, 6);
            this.txtLote.MaxLength = 10;
            this.txtLote.Name = "txtLote";
            this.txtLote.Size = new System.Drawing.Size(74, 22);
            this.txtLote.TabIndex = 3;
            this.txtLote.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtLote_KeyPress);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(11, 29);
            this.label1.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(66, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Manzana:";
            // 
            // cmbManzana
            // 
            this.cmbManzana.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbManzana.FormattingEnabled = true;
            this.cmbManzana.Location = new System.Drawing.Point(78, 26);
            this.cmbManzana.Margin = new System.Windows.Forms.Padding(4);
            this.cmbManzana.Name = "cmbManzana";
            this.cmbManzana.Size = new System.Drawing.Size(72, 24);
            this.cmbManzana.TabIndex = 2;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(162, 31);
            this.label2.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(37, 16);
            this.label2.TabIndex = 3;
            this.label2.Text = "Lote:";
            // 
            // btnCancel
            // 
            this.btnCancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Image = global::WFPGranjas.Properties.Resources.cancelarIco;
            this.btnCancel.Location = new System.Drawing.Point(291, 386);
            this.btnCancel.Margin = new System.Windows.Forms.Padding(4);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(99, 30);
            this.btnCancel.TabIndex = 10;
            this.btnCancel.Text = "Cancelar";
            this.btnCancel.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnGuardar
            // 
            this.btnGuardar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnGuardar.Image = global::WFPGranjas.Properties.Resources.aceptar;
            this.btnGuardar.Location = new System.Drawing.Point(184, 386);
            this.btnGuardar.Margin = new System.Windows.Forms.Padding(4);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(99, 30);
            this.btnGuardar.TabIndex = 9;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // gbGenerales
            // 
            this.gbGenerales.Controls.Add(this.label11);
            this.gbGenerales.Controls.Add(this.btnAdd);
            this.gbGenerales.Controls.Add(this.txtContrato);
            this.gbGenerales.Controls.Add(this.label10);
            this.gbGenerales.Controls.Add(this.txtBaseCNA);
            this.gbGenerales.Controls.Add(this.label9);
            this.gbGenerales.Controls.Add(this.txtM2);
            this.gbGenerales.Controls.Add(this.label7);
            this.gbGenerales.Controls.Add(this.txtMedidor);
            this.gbGenerales.Controls.Add(this.label8);
            this.gbGenerales.Controls.Add(this.txtDireccion);
            this.gbGenerales.Controls.Add(this.label6);
            this.gbGenerales.Controls.Add(this.txtColono);
            this.gbGenerales.Controls.Add(this.label3);
            this.gbGenerales.Controls.Add(this.pnlEncabezado);
            this.gbGenerales.Dock = System.Windows.Forms.DockStyle.Top;
            this.gbGenerales.Location = new System.Drawing.Point(0, 91);
            this.gbGenerales.Name = "gbGenerales";
            this.gbGenerales.Size = new System.Drawing.Size(544, 258);
            this.gbGenerales.TabIndex = 17;
            this.gbGenerales.TabStop = false;
            this.gbGenerales.Text = "Datos Generales";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(9, 86);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(530, 16);
            this.label11.TabIndex = 29;
            this.label11.Text = "- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -" +
    " - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -";
            // 
            // btnAdd
            // 
            this.btnAdd.BackgroundImage = global::WFPGranjas.Properties.Resources.add;
            this.btnAdd.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.btnAdd.Location = new System.Drawing.Point(229, 139);
            this.btnAdd.Name = "btnAdd";
            this.btnAdd.Size = new System.Drawing.Size(24, 25);
            this.btnAdd.TabIndex = 28;
            this.btnAdd.UseVisualStyleBackColor = true;
            this.btnAdd.Visible = false;
            // 
            // txtContrato
            // 
            this.txtContrato.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.txtContrato.Location = new System.Drawing.Point(379, 142);
            this.txtContrato.Margin = new System.Windows.Forms.Padding(8, 6, 8, 6);
            this.txtContrato.MaxLength = 25;
            this.txtContrato.Name = "txtContrato";
            this.txtContrato.ReadOnly = true;
            this.txtContrato.Size = new System.Drawing.Size(144, 22);
            this.txtContrato.TabIndex = 7;
            // 
            // label10
            // 
            this.label10.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(307, 145);
            this.label10.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(69, 16);
            this.label10.TabIndex = 27;
            this.label10.Text = "* Contrato:";
            // 
            // txtBaseCNA
            // 
            this.txtBaseCNA.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.txtBaseCNA.Location = new System.Drawing.Point(379, 227);
            this.txtBaseCNA.Margin = new System.Windows.Forms.Padding(8, 6, 8, 6);
            this.txtBaseCNA.Name = "txtBaseCNA";
            this.txtBaseCNA.ReadOnly = true;
            this.txtBaseCNA.Size = new System.Drawing.Size(145, 22);
            this.txtBaseCNA.TabIndex = 24;
            this.txtBaseCNA.TabStop = false;
            // 
            // label9
            // 
            this.label9.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label9.AutoSize = true;
            this.label9.Location = new System.Drawing.Point(226, 230);
            this.label9.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(150, 16);
            this.label9.TabIndex = 25;
            this.label9.Text = "Cuota Autorizada C.N.A:";
            // 
            // txtM2
            // 
            this.txtM2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.txtM2.Location = new System.Drawing.Point(379, 201);
            this.txtM2.Margin = new System.Windows.Forms.Padding(8, 6, 8, 6);
            this.txtM2.Name = "txtM2";
            this.txtM2.ReadOnly = true;
            this.txtM2.Size = new System.Drawing.Size(145, 22);
            this.txtM2.TabIndex = 22;
            this.txtM2.TabStop = false;
            // 
            // label7
            // 
            this.label7.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(280, 204);
            this.label7.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(96, 16);
            this.label7.TabIndex = 23;
            this.label7.Text = "M2 del terreno:";
            // 
            // txtMedidor
            // 
            this.txtMedidor.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.txtMedidor.Location = new System.Drawing.Point(379, 174);
            this.txtMedidor.Margin = new System.Windows.Forms.Padding(8, 6, 8, 6);
            this.txtMedidor.MaxLength = 25;
            this.txtMedidor.Name = "txtMedidor";
            this.txtMedidor.ReadOnly = true;
            this.txtMedidor.Size = new System.Drawing.Size(145, 22);
            this.txtMedidor.TabIndex = 8;
            // 
            // label8
            // 
            this.label8.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(239, 177);
            this.label8.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(139, 16);
            this.label8.TabIndex = 21;
            this.label8.Text = "* Numero de Medidor:";
            // 
            // txtDireccion
            // 
            this.txtDireccion.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtDireccion.Location = new System.Drawing.Point(164, 57);
            this.txtDireccion.Margin = new System.Windows.Forms.Padding(8, 6, 8, 6);
            this.txtDireccion.Name = "txtDireccion";
            this.txtDireccion.ReadOnly = true;
            this.txtDireccion.Size = new System.Drawing.Size(359, 22);
            this.txtDireccion.TabIndex = 6;
            this.txtDireccion.TabStop = false;
            // 
            // label6
            // 
            this.label6.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(83, 60);
            this.label6.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(68, 16);
            this.label6.TabIndex = 19;
            this.label6.Text = "Dirección:";
            // 
            // txtColono
            // 
            this.txtColono.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.txtColono.Location = new System.Drawing.Point(164, 27);
            this.txtColono.Margin = new System.Windows.Forms.Padding(8, 6, 8, 6);
            this.txtColono.Name = "txtColono";
            this.txtColono.ReadOnly = true;
            this.txtColono.Size = new System.Drawing.Size(359, 22);
            this.txtColono.TabIndex = 5;
            this.txtColono.TabStop = false;
            // 
            // label3
            // 
            this.label3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(83, 30);
            this.label3.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(77, 16);
            this.label3.TabIndex = 16;
            this.label3.Text = "Propietario:";
            // 
            // pnlEncabezado
            // 
            this.pnlEncabezado.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pnlEncabezado.BackColor = System.Drawing.Color.LightGreen;
            this.pnlEncabezado.Controls.Add(this.lblEncabezado);
            this.pnlEncabezado.Location = new System.Drawing.Point(6, 104);
            this.pnlEncabezado.Margin = new System.Windows.Forms.Padding(4);
            this.pnlEncabezado.Name = "pnlEncabezado";
            this.pnlEncabezado.Size = new System.Drawing.Size(532, 24);
            this.pnlEncabezado.TabIndex = 17;
            // 
            // lblEncabezado
            // 
            this.lblEncabezado.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblEncabezado.AutoSize = true;
            this.lblEncabezado.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEncabezado.ForeColor = System.Drawing.SystemColors.Window;
            this.lblEncabezado.Location = new System.Drawing.Point(217, 5);
            this.lblEncabezado.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblEncabezado.Name = "lblEncabezado";
            this.lblEncabezado.Size = new System.Drawing.Size(114, 16);
            this.lblEncabezado.TabIndex = 0;
            this.lblEncabezado.Text = "Nuevo Medidor";
            this.lblEncabezado.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // pnlResult
            // 
            this.pnlResult.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.pnlResult.Controls.Add(this.pictureBox1);
            this.pnlResult.Controls.Add(this.lblMensaje);
            this.pnlResult.Location = new System.Drawing.Point(104, 353);
            this.pnlResult.Name = "pnlResult";
            this.pnlResult.Size = new System.Drawing.Size(363, 24);
            this.pnlResult.TabIndex = 18;
            this.pnlResult.Visible = false;
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackgroundImage = global::WFPGranjas.Properties.Resources.info;
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pictureBox1.Location = new System.Drawing.Point(7, 1);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(25, 22);
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // lblMensaje
            // 
            this.lblMensaje.AutoSize = true;
            this.lblMensaje.ForeColor = System.Drawing.SystemColors.Window;
            this.lblMensaje.Location = new System.Drawing.Point(40, 4);
            this.lblMensaje.Name = "lblMensaje";
            this.lblMensaje.Size = new System.Drawing.Size(166, 16);
            this.lblMensaje.TabIndex = 0;
            this.lblMensaje.Text = "¡Se guardo correcatmente!";
            // 
            // frmCMedidores
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(544, 421);
            this.Controls.Add(this.pnlResult);
            this.Controls.Add(this.gbGenerales);
            this.Controls.Add(this.gbBusca);
            this.Controls.Add(this.btnCancel);
            this.Controls.Add(this.btnGuardar);
            this.Controls.Add(this.pnlPrinBancos);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.Name = "frmCMedidores";
            this.Text = "Catálogo: Medidores";
            this.Load += new System.EventHandler(this.frmCMedidores_Load);
            this.pnlPrinBancos.ResumeLayout(false);
            this.pnlPrinBancos.PerformLayout();
            this.menuStrip2.ResumeLayout(false);
            this.menuStrip2.PerformLayout();
            this.menuStrip.ResumeLayout(false);
            this.menuStrip.PerformLayout();
            this.gbBusca.ResumeLayout(false);
            this.gbBusca.PerformLayout();
            this.gbGenerales.ResumeLayout(false);
            this.gbGenerales.PerformLayout();
            this.pnlEncabezado.ResumeLayout(false);
            this.pnlEncabezado.PerformLayout();
            this.pnlResult.ResumeLayout(false);
            this.pnlResult.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlPrinBancos;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.GroupBox gbBusca;
        private System.Windows.Forms.Label lblContrato;
        private System.Windows.Forms.ComboBox cmbContratos;
        private System.Windows.Forms.TextBox txtLote;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cmbManzana;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.GroupBox gbGenerales;
        private System.Windows.Forms.TextBox txtColono;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Panel pnlEncabezado;
        private System.Windows.Forms.Label lblEncabezado;
        private System.Windows.Forms.TextBox txtM2;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.TextBox txtMedidor;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.TextBox txtDireccion;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.TextBox txtContrato;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtBaseCNA;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Button btnAdd;
        private System.Windows.Forms.MenuStrip menuStrip2;
        private System.Windows.Forms.ToolStripMenuItem otreToolStripMenuItem;
        private System.Windows.Forms.MenuStrip menuStrip;
        private System.Windows.Forms.ToolStripMenuItem mNuevo;
        private System.Windows.Forms.ToolStripMenuItem mEditar;
        private System.Windows.Forms.ToolStripMenuItem mEliminar;
        private System.Windows.Forms.ToolStripMenuItem mSalir;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.Panel pnlResult;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lblMensaje;
        private System.Windows.Forms.Button btnVer;
    }
}