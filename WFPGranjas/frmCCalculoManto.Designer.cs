namespace WFPGranjas
{
    partial class frmCCalculoManto
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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmCCalculoManto));
            this.pnlPrinBancos = new System.Windows.Forms.Panel();
            this.menuStrip2 = new System.Windows.Forms.MenuStrip();
            this.otreToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip = new System.Windows.Forms.MenuStrip();
            this.mNuevo = new System.Windows.Forms.ToolStripMenuItem();
            this.mEditar = new System.Windows.Forms.ToolStripMenuItem();
            this.mEliminar = new System.Windows.Forms.ToolStripMenuItem();
            this.mSalir = new System.Windows.Forms.ToolStripMenuItem();
            this.label4 = new System.Windows.Forms.Label();
            this.gbGenerales = new System.Windows.Forms.GroupBox();
            this.linkHistorico = new System.Windows.Forms.LinkLabel();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.dgHistorico = new System.Windows.Forms.DataGridView();
            this.pnlResult = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lblMensaje = new System.Windows.Forms.Label();
            this.btnCancel = new System.Windows.Forms.Button();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lblCalculo = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.gbBases = new System.Windows.Forms.GroupBox();
            this.rbVariable = new System.Windows.Forms.RadioButton();
            this.rbFija = new System.Windows.Forms.RadioButton();
            this.label8 = new System.Windows.Forms.Label();
            this.txtBase = new System.Windows.Forms.TextBox();
            this.dFecha_Aplica = new System.Windows.Forms.DateTimePicker();
            this.label11 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.pnlEncabezado = new System.Windows.Forms.Panel();
            this.lblEncabezado = new System.Windows.Forms.Label();
            this.pnlPrinBancos.SuspendLayout();
            this.menuStrip2.SuspendLayout();
            this.menuStrip.SuspendLayout();
            this.gbGenerales.SuspendLayout();
            this.groupBox2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgHistorico)).BeginInit();
            this.pnlResult.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.groupBox1.SuspendLayout();
            this.gbBases.SuspendLayout();
            this.pnlEncabezado.SuspendLayout();
            this.SuspendLayout();
            // 
            // pnlPrinBancos
            // 
            this.pnlPrinBancos.BackColor = System.Drawing.Color.SteelBlue;
            this.pnlPrinBancos.Controls.Add(this.menuStrip2);
            this.pnlPrinBancos.Controls.Add(this.menuStrip);
            this.pnlPrinBancos.Controls.Add(this.label4);
            this.pnlPrinBancos.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlPrinBancos.Location = new System.Drawing.Point(0, 0);
            this.pnlPrinBancos.Margin = new System.Windows.Forms.Padding(5);
            this.pnlPrinBancos.Name = "pnlPrinBancos";
            this.pnlPrinBancos.Size = new System.Drawing.Size(854, 28);
            this.pnlPrinBancos.TabIndex = 8;
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
            this.mNuevo,
            this.mEditar,
            this.mEliminar,
            this.mSalir});
            this.menuStrip.Location = new System.Drawing.Point(0, 0);
            this.menuStrip.Name = "menuStrip";
            this.menuStrip.Padding = new System.Windows.Forms.Padding(15, 2, 0, 2);
            this.menuStrip.Size = new System.Drawing.Size(854, 24);
            this.menuStrip.TabIndex = 1;
            this.menuStrip.Text = "menuStrip1";
            // 
            // mNuevo
            // 
            this.mNuevo.Image = global::WFPGranjas.Properties.Resources.nuevo;
            this.mNuevo.Name = "mNuevo";
            this.mNuevo.Size = new System.Drawing.Size(70, 20);
            this.mNuevo.Text = "Nuevo";
            this.mNuevo.Visible = false;
            this.mNuevo.Click += new System.EventHandler(this.mNuevo_Click);
            // 
            // mEditar
            // 
            this.mEditar.Image = global::WFPGranjas.Properties.Resources.editar;
            this.mEditar.Name = "mEditar";
            this.mEditar.Size = new System.Drawing.Size(65, 20);
            this.mEditar.Text = "Editar";
            this.mEditar.Visible = false;
            this.mEditar.Click += new System.EventHandler(this.mEditar_Click);
            // 
            // mEliminar
            // 
            this.mEliminar.Image = global::WFPGranjas.Properties.Resources.eliminar;
            this.mEliminar.Name = "mEliminar";
            this.mEliminar.Size = new System.Drawing.Size(78, 20);
            this.mEliminar.Text = "Eliminar";
            this.mEliminar.Visible = false;
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
            this.label4.Location = new System.Drawing.Point(25, 6);
            this.label4.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(131, 16);
            this.label4.TabIndex = 0;
            this.label4.Text = "Catálogo: Bancos";
            // 
            // gbGenerales
            // 
            this.gbGenerales.Controls.Add(this.linkHistorico);
            this.gbGenerales.Controls.Add(this.groupBox2);
            this.gbGenerales.Controls.Add(this.pnlResult);
            this.gbGenerales.Controls.Add(this.btnCancel);
            this.gbGenerales.Controls.Add(this.btnGuardar);
            this.gbGenerales.Controls.Add(this.groupBox1);
            this.gbGenerales.Controls.Add(this.gbBases);
            this.gbGenerales.Controls.Add(this.dFecha_Aplica);
            this.gbGenerales.Controls.Add(this.label11);
            this.gbGenerales.Controls.Add(this.label10);
            this.gbGenerales.Controls.Add(this.pnlEncabezado);
            this.gbGenerales.Dock = System.Windows.Forms.DockStyle.Top;
            this.gbGenerales.Location = new System.Drawing.Point(0, 28);
            this.gbGenerales.Margin = new System.Windows.Forms.Padding(4);
            this.gbGenerales.Name = "gbGenerales";
            this.gbGenerales.Padding = new System.Windows.Forms.Padding(4);
            this.gbGenerales.Size = new System.Drawing.Size(854, 318);
            this.gbGenerales.TabIndex = 18;
            this.gbGenerales.TabStop = false;
            // 
            // linkHistorico
            // 
            this.linkHistorico.AutoSize = true;
            this.linkHistorico.Location = new System.Drawing.Point(427, 58);
            this.linkHistorico.Name = "linkHistorico";
            this.linkHistorico.Size = new System.Drawing.Size(94, 16);
            this.linkHistorico.TabIndex = 37;
            this.linkHistorico.TabStop = true;
            this.linkHistorico.Text = "Ver Historico...";
            this.linkHistorico.LinkClicked += new System.Windows.Forms.LinkLabelLinkClickedEventHandler(this.linkHistorico_LinkClicked);
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.dgHistorico);
            this.groupBox2.Location = new System.Drawing.Point(537, 58);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(310, 176);
            this.groupBox2.TabIndex = 36;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Historico";
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
            this.dgHistorico.Location = new System.Drawing.Point(3, 18);
            this.dgHistorico.MultiSelect = false;
            this.dgHistorico.Name = "dgHistorico";
            this.dgHistorico.ReadOnly = true;
            this.dgHistorico.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.dgHistorico.RowHeadersVisible = false;
            this.dgHistorico.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgHistorico.Size = new System.Drawing.Size(304, 155);
            this.dgHistorico.TabIndex = 37;
            this.dgHistorico.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dgHistorico_CellMouseClick);
            // 
            // pnlResult
            // 
            this.pnlResult.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.pnlResult.Controls.Add(this.pictureBox1);
            this.pnlResult.Controls.Add(this.lblMensaje);
            this.pnlResult.Location = new System.Drawing.Point(206, 244);
            this.pnlResult.Name = "pnlResult";
            this.pnlResult.Size = new System.Drawing.Size(442, 24);
            this.pnlResult.TabIndex = 35;
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
            // btnCancel
            // 
            this.btnCancel.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Image = global::WFPGranjas.Properties.Resources.cancelarIco;
            this.btnCancel.Location = new System.Drawing.Point(432, 279);
            this.btnCancel.Margin = new System.Windows.Forms.Padding(4);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(99, 30);
            this.btnCancel.TabIndex = 34;
            this.btnCancel.Text = "Cancelar";
            this.btnCancel.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // btnGuardar
            // 
            this.btnGuardar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnGuardar.Image = global::WFPGranjas.Properties.Resources.aceptar;
            this.btnGuardar.Location = new System.Drawing.Point(325, 279);
            this.btnGuardar.Margin = new System.Windows.Forms.Padding(4);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(99, 30);
            this.btnGuardar.TabIndex = 33;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.lblCalculo);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Location = new System.Drawing.Point(261, 88);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(270, 138);
            this.groupBox1.TabIndex = 32;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Base Registrada";
            // 
            // lblCalculo
            // 
            this.lblCalculo.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.lblCalculo.AutoSize = true;
            this.lblCalculo.Location = new System.Drawing.Point(9, 73);
            this.lblCalculo.Margin = new System.Windows.Forms.Padding(11, 0, 11, 0);
            this.lblCalculo.Name = "lblCalculo";
            this.lblCalculo.Size = new System.Drawing.Size(231, 16);
            this.lblCalculo.TabIndex = 22;
            this.lblCalculo.Text = "Registra una Base de mantenimiento.";
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(6, 32);
            this.label1.Margin = new System.Windows.Forms.Padding(11, 0, 11, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(56, 16);
            this.label1.TabIndex = 21;
            this.label1.Text = "Cálculo:";
            // 
            // gbBases
            // 
            this.gbBases.Controls.Add(this.rbVariable);
            this.gbBases.Controls.Add(this.rbFija);
            this.gbBases.Controls.Add(this.label8);
            this.gbBases.Controls.Add(this.txtBase);
            this.gbBases.Enabled = false;
            this.gbBases.Location = new System.Drawing.Point(12, 88);
            this.gbBases.Name = "gbBases";
            this.gbBases.Size = new System.Drawing.Size(243, 138);
            this.gbBases.TabIndex = 31;
            this.gbBases.TabStop = false;
            this.gbBases.Text = "Base para Cuotas";
            // 
            // rbVariable
            // 
            this.rbVariable.AutoSize = true;
            this.rbVariable.Location = new System.Drawing.Point(16, 58);
            this.rbVariable.Name = "rbVariable";
            this.rbVariable.Size = new System.Drawing.Size(201, 20);
            this.rbVariable.TabIndex = 3;
            this.rbVariable.TabStop = true;
            this.rbVariable.Text = "Cuota por Metros del Terreno";
            this.rbVariable.UseVisualStyleBackColor = true;
            this.rbVariable.CheckedChanged += new System.EventHandler(this.rbVariable_CheckedChanged);
            // 
            // rbFija
            // 
            this.rbFija.AutoSize = true;
            this.rbFija.Location = new System.Drawing.Point(16, 32);
            this.rbFija.Name = "rbFija";
            this.rbFija.Size = new System.Drawing.Size(86, 20);
            this.rbFija.TabIndex = 2;
            this.rbFija.TabStop = true;
            this.rbFija.Text = "Cuota Fija";
            this.rbFija.UseVisualStyleBackColor = true;
            this.rbFija.CheckedChanged += new System.EventHandler(this.rbFija_CheckedChanged);
            // 
            // label8
            // 
            this.label8.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label8.AutoSize = true;
            this.label8.Location = new System.Drawing.Point(13, 94);
            this.label8.Margin = new System.Windows.Forms.Padding(11, 0, 11, 0);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(118, 16);
            this.label8.TabIndex = 21;
            this.label8.Text = "* Base de Cálculo:";
            // 
            // txtBase
            // 
            this.txtBase.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.txtBase.Location = new System.Drawing.Point(134, 92);
            this.txtBase.Margin = new System.Windows.Forms.Padding(11, 7, 11, 7);
            this.txtBase.MaxLength = 25;
            this.txtBase.Name = "txtBase";
            this.txtBase.Size = new System.Drawing.Size(97, 22);
            this.txtBase.TabIndex = 8;
            this.txtBase.TabStop = false;
            this.txtBase.Text = "0.00";
            // 
            // dFecha_Aplica
            // 
            this.dFecha_Aplica.Enabled = false;
            this.dFecha_Aplica.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dFecha_Aplica.Location = new System.Drawing.Point(155, 58);
            this.dFecha_Aplica.MinDate = new System.DateTime(2010, 1, 1, 0, 0, 0, 0);
            this.dFecha_Aplica.Name = "dFecha_Aplica";
            this.dFecha_Aplica.Size = new System.Drawing.Size(115, 22);
            this.dFecha_Aplica.TabIndex = 30;
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Location = new System.Drawing.Point(10, 229);
            this.label11.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(834, 16);
            this.label11.TabIndex = 29;
            this.label11.Text = resources.GetString("label11.Text");
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Location = new System.Drawing.Point(11, 61);
            this.label10.Margin = new System.Windows.Forms.Padding(11, 0, 11, 0);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(142, 16);
            this.label10.TabIndex = 27;
            this.label10.Text = "* Inicio de la Vigencia :";
            // 
            // pnlEncabezado
            // 
            this.pnlEncabezado.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.pnlEncabezado.BackColor = System.Drawing.Color.SteelBlue;
            this.pnlEncabezado.Controls.Add(this.lblEncabezado);
            this.pnlEncabezado.Location = new System.Drawing.Point(8, 12);
            this.pnlEncabezado.Margin = new System.Windows.Forms.Padding(5);
            this.pnlEncabezado.Name = "pnlEncabezado";
            this.pnlEncabezado.Size = new System.Drawing.Size(838, 30);
            this.pnlEncabezado.TabIndex = 17;
            // 
            // lblEncabezado
            // 
            this.lblEncabezado.Anchor = ((System.Windows.Forms.AnchorStyles)(((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.lblEncabezado.AutoSize = true;
            this.lblEncabezado.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEncabezado.ForeColor = System.Drawing.SystemColors.Window;
            this.lblEncabezado.Location = new System.Drawing.Point(135, 7);
            this.lblEncabezado.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.lblEncabezado.Name = "lblEncabezado";
            this.lblEncabezado.Size = new System.Drawing.Size(361, 16);
            this.lblEncabezado.TabIndex = 0;
            this.lblEncabezado.Text = "Bases para el Cálculo de Cuotas de Mantenimiento";
            this.lblEncabezado.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // frmCCalculoManto
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(854, 351);
            this.Controls.Add(this.gbGenerales);
            this.Controls.Add(this.pnlPrinBancos);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.Name = "frmCCalculoManto";
            this.Text = "frmCCalculoManto";
            this.Load += new System.EventHandler(this.frmCCalculoManto_Load);
            this.pnlPrinBancos.ResumeLayout(false);
            this.pnlPrinBancos.PerformLayout();
            this.menuStrip2.ResumeLayout(false);
            this.menuStrip2.PerformLayout();
            this.menuStrip.ResumeLayout(false);
            this.menuStrip.PerformLayout();
            this.gbGenerales.ResumeLayout(false);
            this.gbGenerales.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgHistorico)).EndInit();
            this.pnlResult.ResumeLayout(false);
            this.pnlResult.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.gbBases.ResumeLayout(false);
            this.gbBases.PerformLayout();
            this.pnlEncabezado.ResumeLayout(false);
            this.pnlEncabezado.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlPrinBancos;
        private System.Windows.Forms.MenuStrip menuStrip2;
        private System.Windows.Forms.ToolStripMenuItem otreToolStripMenuItem;
        private System.Windows.Forms.MenuStrip menuStrip;
        private System.Windows.Forms.ToolStripMenuItem mNuevo;
        private System.Windows.Forms.ToolStripMenuItem mEditar;
        private System.Windows.Forms.ToolStripMenuItem mEliminar;
        private System.Windows.Forms.ToolStripMenuItem mSalir;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.GroupBox gbGenerales;
        private System.Windows.Forms.GroupBox gbBases;
        private System.Windows.Forms.RadioButton rbFija;
        private System.Windows.Forms.DateTimePicker dFecha_Aplica;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.TextBox txtBase;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Panel pnlEncabezado;
        private System.Windows.Forms.Label lblEncabezado;
        private System.Windows.Forms.RadioButton rbVariable;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label lblCalculo;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Panel pnlResult;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lblMensaje;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.DataGridView dgHistorico;
        private System.Windows.Forms.LinkLabel linkHistorico;
    }
}