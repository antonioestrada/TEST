namespace WFPGranjas
{
    partial class frmCalculaCBAMensual
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
            this.mPreview = new System.Windows.Forms.ToolStripMenuItem();
            this.mNuevo = new System.Windows.Forms.ToolStripMenuItem();
            this.mEditar = new System.Windows.Forms.ToolStripMenuItem();
            this.toolStripMenuItem1 = new System.Windows.Forms.ToolStripMenuItem();
            this.mSalir = new System.Windows.Forms.ToolStripMenuItem();
            this.label4 = new System.Windows.Forms.Label();
            this.pnlEncabezado = new System.Windows.Forms.Panel();
            this.lblEncabezado = new System.Windows.Forms.Label();
            this.cmbAnios = new System.Windows.Forms.ComboBox();
            this.cmbPeriodos = new System.Windows.Forms.ComboBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.panelProduccion = new System.Windows.Forms.Panel();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.btnCapturaProduccion = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.dgProduccion = new System.Windows.Forms.DataGridView();
            this.label5 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.txtM3 = new System.Windows.Forms.TextBox();
            this.cmbBombas = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.gpValidacion = new System.Windows.Forms.GroupBox();
            this.dgValidacion = new System.Windows.Forms.DataGridView();
            this.btnValidar = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.cmbAnioVal = new System.Windows.Forms.ComboBox();
            this.dgHistorico = new System.Windows.Forms.DataGridView();
            this.pnlResult = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lblMensaje = new System.Windows.Forms.Label();
            this.pnlPrinBancos.SuspendLayout();
            this.menuStrip2.SuspendLayout();
            this.menuStrip.SuspendLayout();
            this.pnlEncabezado.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.panelProduccion.SuspendLayout();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgProduccion)).BeginInit();
            this.tabPage2.SuspendLayout();
            this.gpValidacion.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgValidacion)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgHistorico)).BeginInit();
            this.pnlResult.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlPrinBancos
            // 
            this.pnlPrinBancos.BackColor = System.Drawing.Color.DarkKhaki;
            this.pnlPrinBancos.Controls.Add(this.menuStrip2);
            this.pnlPrinBancos.Controls.Add(this.menuStrip);
            this.pnlPrinBancos.Controls.Add(this.label4);
            this.pnlPrinBancos.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlPrinBancos.Location = new System.Drawing.Point(0, 0);
            this.pnlPrinBancos.Margin = new System.Windows.Forms.Padding(5);
            this.pnlPrinBancos.Name = "pnlPrinBancos";
            this.pnlPrinBancos.Size = new System.Drawing.Size(820, 28);
            this.pnlPrinBancos.TabIndex = 9;
            // 
            // menuStrip2
            // 
            this.menuStrip2.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.otreToolStripMenuItem});
            this.menuStrip2.Location = new System.Drawing.Point(0, 0);
            this.menuStrip2.Name = "menuStrip2";
            this.menuStrip2.Padding = new System.Windows.Forms.Padding(15, 2, 0, 2);
            this.menuStrip2.Size = new System.Drawing.Size(727, 30);
            this.menuStrip2.TabIndex = 11;
            this.menuStrip2.Text = "menuStrip2";
            this.menuStrip2.Visible = false;
            // 
            // otreToolStripMenuItem
            // 
            this.otreToolStripMenuItem.Name = "otreToolStripMenuItem";
            this.otreToolStripMenuItem.Size = new System.Drawing.Size(40, 26);
            this.otreToolStripMenuItem.Text = "otre";
            // 
            // menuStrip
            // 
            this.menuStrip.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mPreview,
            this.mNuevo,
            this.mEditar,
            this.toolStripMenuItem1,
            this.mSalir});
            this.menuStrip.Location = new System.Drawing.Point(0, 0);
            this.menuStrip.Name = "menuStrip";
            this.menuStrip.Padding = new System.Windows.Forms.Padding(15, 2, 0, 2);
            this.menuStrip.Size = new System.Drawing.Size(820, 24);
            this.menuStrip.TabIndex = 1;
            this.menuStrip.Text = "menuStrip1";
            // 
            // mPreview
            // 
            this.mPreview.Image = global::WFPGranjas.Properties.Resources.eliminar;
            this.mPreview.Name = "mPreview";
            this.mPreview.Size = new System.Drawing.Size(138, 20);
            this.mPreview.Text = "Revisar Cuotas CBA";
            this.mPreview.Click += new System.EventHandler(this.mPreview_Click_1);
            // 
            // mNuevo
            // 
            this.mNuevo.Image = global::WFPGranjas.Properties.Resources.nuevo;
            this.mNuevo.Name = "mNuevo";
            this.mNuevo.Size = new System.Drawing.Size(116, 20);
            this.mNuevo.Text = "Generar Cuotas";
            this.mNuevo.Click += new System.EventHandler(this.mNuevo_Click);
            // 
            // mEditar
            // 
            this.mEditar.Image = global::WFPGranjas.Properties.Resources.impresora;
            this.mEditar.Name = "mEditar";
            this.mEditar.Size = new System.Drawing.Size(165, 20);
            this.mEditar.Text = "Consulta CBA Asignadas";
            this.mEditar.Click += new System.EventHandler(this.mEditar_Click);
            // 
            // toolStripMenuItem1
            // 
            this.toolStripMenuItem1.Image = global::WFPGranjas.Properties.Resources.impresora;
            this.toolStripMenuItem1.Name = "toolStripMenuItem1";
            this.toolStripMenuItem1.Size = new System.Drawing.Size(127, 20);
            this.toolStripMenuItem1.Text = "Produccion Agua";
            this.toolStripMenuItem1.Click += new System.EventHandler(this.toolStripMenuItem1_Click);
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
            this.label4.Location = new System.Drawing.Point(25, 6);
            this.label4.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(131, 16);
            this.label4.TabIndex = 0;
            this.label4.Text = "Catálogo: Bancos";
            // 
            // pnlEncabezado
            // 
            this.pnlEncabezado.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pnlEncabezado.BackColor = System.Drawing.Color.DarkKhaki;
            this.pnlEncabezado.Controls.Add(this.lblEncabezado);
            this.pnlEncabezado.Location = new System.Drawing.Point(0, 38);
            this.pnlEncabezado.Margin = new System.Windows.Forms.Padding(5);
            this.pnlEncabezado.Name = "pnlEncabezado";
            this.pnlEncabezado.Size = new System.Drawing.Size(820, 30);
            this.pnlEncabezado.TabIndex = 18;
            // 
            // lblEncabezado
            // 
            this.lblEncabezado.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblEncabezado.AutoSize = true;
            this.lblEncabezado.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEncabezado.ForeColor = System.Drawing.SystemColors.MenuText;
            this.lblEncabezado.Location = new System.Drawing.Point(35, 8);
            this.lblEncabezado.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.lblEncabezado.Name = "lblEncabezado";
            this.lblEncabezado.Size = new System.Drawing.Size(100, 16);
            this.lblEncabezado.TabIndex = 0;
            this.lblEncabezado.Text = "CBA mensual";
            this.lblEncabezado.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // cmbAnios
            // 
            this.cmbAnios.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbAnios.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbAnios.FormattingEnabled = true;
            this.cmbAnios.Location = new System.Drawing.Point(111, 6);
            this.cmbAnios.Name = "cmbAnios";
            this.cmbAnios.Size = new System.Drawing.Size(152, 24);
            this.cmbAnios.TabIndex = 57;
            this.cmbAnios.SelectionChangeCommitted += new System.EventHandler(this.cmbAnios_SelectionChangeCommitted);
            this.cmbAnios.SelectedValueChanged += new System.EventHandler(this.cmbAnios_SelectedValueChanged);
            // 
            // cmbPeriodos
            // 
            this.cmbPeriodos.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbPeriodos.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbPeriodos.FormattingEnabled = true;
            this.cmbPeriodos.Location = new System.Drawing.Point(163, 48);
            this.cmbPeriodos.Name = "cmbPeriodos";
            this.cmbPeriodos.Size = new System.Drawing.Size(152, 24);
            this.cmbPeriodos.TabIndex = 56;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.panelProduccion);
            this.groupBox2.Controls.Add(this.dgHistorico);
            this.groupBox2.Location = new System.Drawing.Point(12, 76);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(799, 291);
            this.groupBox2.TabIndex = 37;
            this.groupBox2.TabStop = false;
            // 
            // panelProduccion
            // 
            this.panelProduccion.Controls.Add(this.tabControl1);
            this.panelProduccion.Location = new System.Drawing.Point(3, 16);
            this.panelProduccion.Name = "panelProduccion";
            this.panelProduccion.Size = new System.Drawing.Size(790, 269);
            this.panelProduccion.TabIndex = 38;
            this.panelProduccion.Visible = false;
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(0, 6);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(787, 266);
            this.tabControl1.TabIndex = 65;
            this.tabControl1.SelectedIndexChanged += new System.EventHandler(this.tabControl1_SelectedIndexChanged);
            // 
            // tabPage1
            // 
            this.tabPage1.BackColor = System.Drawing.Color.WhiteSmoke;
            this.tabPage1.Controls.Add(this.btnCapturaProduccion);
            this.tabPage1.Controls.Add(this.groupBox1);
            this.tabPage1.Controls.Add(this.label5);
            this.tabPage1.Controls.Add(this.label2);
            this.tabPage1.Controls.Add(this.txtM3);
            this.tabPage1.Controls.Add(this.cmbAnios);
            this.tabPage1.Controls.Add(this.cmbBombas);
            this.tabPage1.Controls.Add(this.cmbPeriodos);
            this.tabPage1.Controls.Add(this.label1);
            this.tabPage1.Controls.Add(this.label3);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(779, 240);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Registrar produccion";
            // 
            // btnCapturaProduccion
            // 
            this.btnCapturaProduccion.Image = global::WFPGranjas.Properties.Resources.aceptar;
            this.btnCapturaProduccion.Location = new System.Drawing.Point(99, 152);
            this.btnCapturaProduccion.Name = "btnCapturaProduccion";
            this.btnCapturaProduccion.Size = new System.Drawing.Size(164, 32);
            this.btnCapturaProduccion.TabIndex = 61;
            this.btnCapturaProduccion.Text = "Guardar";
            this.btnCapturaProduccion.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCapturaProduccion.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCapturaProduccion.UseVisualStyleBackColor = true;
            this.btnCapturaProduccion.Click += new System.EventHandler(this.btnCapturaProduccion_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.dgProduccion);
            this.groupBox1.Location = new System.Drawing.Point(353, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(420, 231);
            this.groupBox1.TabIndex = 62;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Registro de m3";
            // 
            // dgProduccion
            // 
            this.dgProduccion.AllowUserToAddRows = false;
            this.dgProduccion.AllowUserToDeleteRows = false;
            this.dgProduccion.AllowUserToResizeColumns = false;
            this.dgProduccion.AllowUserToResizeRows = false;
            this.dgProduccion.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgProduccion.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgProduccion.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgProduccion.Location = new System.Drawing.Point(3, 16);
            this.dgProduccion.MultiSelect = false;
            this.dgProduccion.Name = "dgProduccion";
            this.dgProduccion.ReadOnly = true;
            this.dgProduccion.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.dgProduccion.RowHeadersVisible = false;
            this.dgProduccion.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgProduccion.Size = new System.Drawing.Size(414, 212);
            this.dgProduccion.TabIndex = 37;
            this.dgProduccion.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dgProduccion_CellMouseClick);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(56, 99);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(101, 13);
            this.label5.TabIndex = 64;
            this.label5.Text = "Seleccione bomba :";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(9, 12);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(87, 13);
            this.label2.TabIndex = 59;
            this.label2.Text = "Seleccione año :";
            // 
            // txtM3
            // 
            this.txtM3.Location = new System.Drawing.Point(163, 126);
            this.txtM3.Name = "txtM3";
            this.txtM3.Size = new System.Drawing.Size(100, 20);
            this.txtM3.TabIndex = 0;
            // 
            // cmbBombas
            // 
            this.cmbBombas.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbBombas.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbBombas.FormattingEnabled = true;
            this.cmbBombas.Location = new System.Drawing.Point(163, 90);
            this.cmbBombas.Name = "cmbBombas";
            this.cmbBombas.Size = new System.Drawing.Size(152, 24);
            this.cmbBombas.TabIndex = 63;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(56, 59);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(88, 13);
            this.label1.TabIndex = 58;
            this.label1.Text = "Seleccione mes :";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(56, 130);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 13);
            this.label3.TabIndex = 60;
            this.label3.Text = "Ingrese m3 :";
            // 
            // tabPage2
            // 
            this.tabPage2.BackColor = System.Drawing.Color.WhiteSmoke;
            this.tabPage2.Controls.Add(this.gpValidacion);
            this.tabPage2.Controls.Add(this.btnValidar);
            this.tabPage2.Controls.Add(this.label6);
            this.tabPage2.Controls.Add(this.cmbAnioVal);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(779, 240);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Generar proceso";
            // 
            // gpValidacion
            // 
            this.gpValidacion.Controls.Add(this.dgValidacion);
            this.gpValidacion.Location = new System.Drawing.Point(359, 0);
            this.gpValidacion.Name = "gpValidacion";
            this.gpValidacion.Size = new System.Drawing.Size(420, 231);
            this.gpValidacion.TabIndex = 63;
            this.gpValidacion.TabStop = false;
            this.gpValidacion.Text = "Registro de m3";
            this.gpValidacion.Visible = false;
            // 
            // dgValidacion
            // 
            this.dgValidacion.AllowUserToAddRows = false;
            this.dgValidacion.AllowUserToDeleteRows = false;
            this.dgValidacion.AllowUserToResizeColumns = false;
            this.dgValidacion.AllowUserToResizeRows = false;
            this.dgValidacion.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgValidacion.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgValidacion.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgValidacion.Location = new System.Drawing.Point(3, 16);
            this.dgValidacion.MultiSelect = false;
            this.dgValidacion.Name = "dgValidacion";
            this.dgValidacion.ReadOnly = true;
            this.dgValidacion.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.dgValidacion.RowHeadersVisible = false;
            this.dgValidacion.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgValidacion.Size = new System.Drawing.Size(414, 212);
            this.dgValidacion.TabIndex = 37;
            // 
            // btnValidar
            // 
            this.btnValidar.Image = global::WFPGranjas.Properties.Resources.firma_del_contrato24;
            this.btnValidar.Location = new System.Drawing.Point(131, 71);
            this.btnValidar.Name = "btnValidar";
            this.btnValidar.Size = new System.Drawing.Size(152, 34);
            this.btnValidar.TabIndex = 62;
            this.btnValidar.Text = "Validar ";
            this.btnValidar.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnValidar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnValidar.UseVisualStyleBackColor = true;
            this.btnValidar.Visible = false;
            this.btnValidar.Click += new System.EventHandler(this.btnValidar_Click);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(29, 25);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(87, 13);
            this.label6.TabIndex = 61;
            this.label6.Text = "Seleccione año :";
            // 
            // cmbAnioVal
            // 
            this.cmbAnioVal.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbAnioVal.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbAnioVal.FormattingEnabled = true;
            this.cmbAnioVal.Location = new System.Drawing.Point(131, 19);
            this.cmbAnioVal.Name = "cmbAnioVal";
            this.cmbAnioVal.Size = new System.Drawing.Size(152, 24);
            this.cmbAnioVal.TabIndex = 60;
            this.cmbAnioVal.SelectionChangeCommitted += new System.EventHandler(this.cmbAnioVal_SelectionChangeCommitted);
            // 
            // dgHistorico
            // 
            this.dgHistorico.AllowUserToAddRows = false;
            this.dgHistorico.AllowUserToDeleteRows = false;
            this.dgHistorico.AllowUserToResizeColumns = false;
            this.dgHistorico.AllowUserToResizeRows = false;
            this.dgHistorico.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgHistorico.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgHistorico.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgHistorico.Location = new System.Drawing.Point(3, 16);
            this.dgHistorico.MultiSelect = false;
            this.dgHistorico.Name = "dgHistorico";
            this.dgHistorico.ReadOnly = true;
            this.dgHistorico.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.dgHistorico.RowHeadersVisible = false;
            this.dgHistorico.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgHistorico.Size = new System.Drawing.Size(793, 272);
            this.dgHistorico.TabIndex = 37;
            // 
            // pnlResult
            // 
            this.pnlResult.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.pnlResult.Controls.Add(this.pictureBox1);
            this.pnlResult.Controls.Add(this.lblMensaje);
            this.pnlResult.Location = new System.Drawing.Point(366, 375);
            this.pnlResult.Name = "pnlResult";
            this.pnlResult.Size = new System.Drawing.Size(442, 24);
            this.pnlResult.TabIndex = 40;
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
            this.lblMensaje.Size = new System.Drawing.Size(133, 13);
            this.lblMensaje.TabIndex = 0;
            this.lblMensaje.Text = "¡Se guardo correcatmente!";
            // 
            // frmCalculaCBAMensual
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(820, 404);
            this.Controls.Add(this.pnlResult);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.pnlEncabezado);
            this.Controls.Add(this.pnlPrinBancos);
            this.Name = "frmCalculaCBAMensual";
            this.Text = "Calculo de CBA Mensual";
            this.Load += new System.EventHandler(this.frmCalculaCBAMensual_Load_1);
            this.pnlPrinBancos.ResumeLayout(false);
            this.pnlPrinBancos.PerformLayout();
            this.menuStrip2.ResumeLayout(false);
            this.menuStrip2.PerformLayout();
            this.menuStrip.ResumeLayout(false);
            this.menuStrip.PerformLayout();
            this.pnlEncabezado.ResumeLayout(false);
            this.pnlEncabezado.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.panelProduccion.ResumeLayout(false);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgProduccion)).EndInit();
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            this.gpValidacion.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgValidacion)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgHistorico)).EndInit();
            this.pnlResult.ResumeLayout(false);
            this.pnlResult.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlPrinBancos;
        private System.Windows.Forms.MenuStrip menuStrip2;
        private System.Windows.Forms.ToolStripMenuItem otreToolStripMenuItem;
        private System.Windows.Forms.MenuStrip menuStrip;
        private System.Windows.Forms.ToolStripMenuItem mNuevo;
        private System.Windows.Forms.ToolStripMenuItem mEditar;
        private System.Windows.Forms.ToolStripMenuItem mPreview;
        private System.Windows.Forms.ToolStripMenuItem mSalir;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Panel pnlEncabezado;
        private System.Windows.Forms.Label lblEncabezado;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DataGridView dgHistorico;
        private System.Windows.Forms.Panel pnlResult;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lblMensaje;
        private System.Windows.Forms.ComboBox cmbAnios;
        private System.Windows.Forms.ComboBox cmbPeriodos;
        private System.Windows.Forms.ToolStripMenuItem toolStripMenuItem1;
        private System.Windows.Forms.Panel panelProduccion;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txtM3;
        private System.Windows.Forms.Button btnCapturaProduccion;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.DataGridView dgProduccion;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox cmbBombas;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Button btnValidar;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.ComboBox cmbAnioVal;
        private System.Windows.Forms.GroupBox gpValidacion;
        private System.Windows.Forms.DataGridView dgValidacion;
    }
}