namespace WFPGranjas
{
    partial class frmCLotes
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
            this.groupBoxForm = new System.Windows.Forms.GroupBox();
            this.lblPropietario = new System.Windows.Forms.Label();
            this.txtPropietario = new System.Windows.Forms.TextBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.txtM2 = new System.Windows.Forms.TextBox();
            this.cmbManzana = new System.Windows.Forms.ComboBox();
            this.btnCancel = new System.Windows.Forms.Button();
            this.pnlEncabezado = new System.Windows.Forms.Panel();
            this.lblEncabezado = new System.Windows.Forms.Label();
            this.pnlResult = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lblMensaje = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.txtLote = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.dgPropietario = new System.Windows.Forms.DataGridView();
            this.dgLotes = new System.Windows.Forms.DataGridView();
            this.cmbFiltroMza = new System.Windows.Forms.ComboBox();
            this.label7 = new System.Windows.Forms.Label();
            this.btnFiltrar = new System.Windows.Forms.Button();
            this.groupBoxDG = new System.Windows.Forms.GroupBox();
            this.pnlPrinBancos.SuspendLayout();
            this.menuStrip2.SuspendLayout();
            this.menuStrip.SuspendLayout();
            this.groupBoxForm.SuspendLayout();
            this.pnlEncabezado.SuspendLayout();
            this.pnlResult.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgPropietario)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgLotes)).BeginInit();
            this.groupBoxDG.SuspendLayout();
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
            this.pnlPrinBancos.Name = "pnlPrinBancos";
            this.pnlPrinBancos.Size = new System.Drawing.Size(882, 28);
            this.pnlPrinBancos.TabIndex = 6;
            // 
            // menuStrip2
            // 
            this.menuStrip2.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.otreToolStripMenuItem});
            this.menuStrip2.Location = new System.Drawing.Point(0, 30);
            this.menuStrip2.Name = "menuStrip2";
            this.menuStrip2.Padding = new System.Windows.Forms.Padding(8, 2, 0, 2);
            this.menuStrip2.Size = new System.Drawing.Size(1175, 30);
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
            this.menuStrip.Padding = new System.Windows.Forms.Padding(8, 2, 0, 2);
            this.menuStrip.Size = new System.Drawing.Size(882, 24);
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
            this.label4.Location = new System.Drawing.Point(14, 7);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(131, 16);
            this.label4.TabIndex = 0;
            this.label4.Text = "Catálogo: Bancos";
            // 
            // groupBoxForm
            // 
            this.groupBoxForm.Controls.Add(this.lblPropietario);
            this.groupBoxForm.Controls.Add(this.txtPropietario);
            this.groupBoxForm.Controls.Add(this.label6);
            this.groupBoxForm.Controls.Add(this.label5);
            this.groupBoxForm.Controls.Add(this.txtM2);
            this.groupBoxForm.Controls.Add(this.cmbManzana);
            this.groupBoxForm.Controls.Add(this.btnCancel);
            this.groupBoxForm.Controls.Add(this.pnlEncabezado);
            this.groupBoxForm.Controls.Add(this.pnlResult);
            this.groupBoxForm.Controls.Add(this.label3);
            this.groupBoxForm.Controls.Add(this.txtLote);
            this.groupBoxForm.Controls.Add(this.label2);
            this.groupBoxForm.Controls.Add(this.btnGuardar);
            this.groupBoxForm.Controls.Add(this.label1);
            this.groupBoxForm.Controls.Add(this.dgPropietario);
            this.groupBoxForm.Dock = System.Windows.Forms.DockStyle.Left;
            this.groupBoxForm.Location = new System.Drawing.Point(525, 28);
            this.groupBoxForm.Margin = new System.Windows.Forms.Padding(6, 5, 6, 5);
            this.groupBoxForm.Name = "groupBoxForm";
            this.groupBoxForm.Padding = new System.Windows.Forms.Padding(6, 13, 6, 13);
            this.groupBoxForm.Size = new System.Drawing.Size(353, 358);
            this.groupBoxForm.TabIndex = 10;
            this.groupBoxForm.TabStop = false;
            this.groupBoxForm.Text = "Registro";
            // 
            // lblPropietario
            // 
            this.lblPropietario.AutoSize = true;
            this.lblPropietario.Location = new System.Drawing.Point(12, 225);
            this.lblPropietario.Margin = new System.Windows.Forms.Padding(6, 0, 6, 0);
            this.lblPropietario.Name = "lblPropietario";
            this.lblPropietario.Size = new System.Drawing.Size(130, 16);
            this.lblPropietario.TabIndex = 16;
            this.lblPropietario.Text = "Nombre_Propietario";
            this.lblPropietario.Visible = false;
            // 
            // txtPropietario
            // 
            this.txtPropietario.Location = new System.Drawing.Point(138, 194);
            this.txtPropietario.Margin = new System.Windows.Forms.Padding(6, 5, 6, 5);
            this.txtPropietario.Name = "txtPropietario";
            this.txtPropietario.Size = new System.Drawing.Size(204, 22);
            this.txtPropietario.TabIndex = 6;
            this.txtPropietario.TextChanged += new System.EventHandler(this.txtPropietario_TextChanged);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(52, 197);
            this.label6.Margin = new System.Windows.Forms.Padding(6, 0, 6, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(85, 16);
            this.label6.TabIndex = 15;
            this.label6.Text = "* Propietario:";
            // 
            // label5
            // 
            this.label5.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(199, 329);
            this.label5.Margin = new System.Windows.Forms.Padding(6, 0, 6, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(143, 16);
            this.label5.TabIndex = 12;
            this.label5.Text = "* Campos Obligatorios";
            // 
            // txtM2
            // 
            this.txtM2.Location = new System.Drawing.Point(137, 162);
            this.txtM2.Margin = new System.Windows.Forms.Padding(6, 5, 6, 5);
            this.txtM2.Name = "txtM2";
            this.txtM2.Size = new System.Drawing.Size(204, 22);
            this.txtM2.TabIndex = 5;
            this.txtM2.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtM2_KeyPress);
            // 
            // cmbManzana
            // 
            this.cmbManzana.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbManzana.FormattingEnabled = true;
            this.cmbManzana.Location = new System.Drawing.Point(137, 89);
            this.cmbManzana.Name = "cmbManzana";
            this.cmbManzana.Size = new System.Drawing.Size(204, 24);
            this.cmbManzana.TabIndex = 3;
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Image = global::WFPGranjas.Properties.Resources.cancelarIco;
            this.btnCancel.Location = new System.Drawing.Point(242, 256);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(99, 30);
            this.btnCancel.TabIndex = 9;
            this.btnCancel.Text = "Cancelar";
            this.btnCancel.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCancel.UseVisualStyleBackColor = true;
            this.btnCancel.Click += new System.EventHandler(this.btnCancel_Click);
            // 
            // pnlEncabezado
            // 
            this.pnlEncabezado.BackColor = System.Drawing.Color.LightGreen;
            this.pnlEncabezado.Controls.Add(this.lblEncabezado);
            this.pnlEncabezado.Location = new System.Drawing.Point(9, 46);
            this.pnlEncabezado.Name = "pnlEncabezado";
            this.pnlEncabezado.Size = new System.Drawing.Size(332, 24);
            this.pnlEncabezado.TabIndex = 8;
            // 
            // lblEncabezado
            // 
            this.lblEncabezado.AutoSize = true;
            this.lblEncabezado.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEncabezado.ForeColor = System.Drawing.SystemColors.Window;
            this.lblEncabezado.Location = new System.Drawing.Point(119, 4);
            this.lblEncabezado.Name = "lblEncabezado";
            this.lblEncabezado.Size = new System.Drawing.Size(87, 16);
            this.lblEncabezado.TabIndex = 0;
            this.lblEncabezado.Text = "Nuevo Lote";
            // 
            // pnlResult
            // 
            this.pnlResult.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.pnlResult.Controls.Add(this.pictureBox1);
            this.pnlResult.Controls.Add(this.lblMensaje);
            this.pnlResult.Location = new System.Drawing.Point(24, 292);
            this.pnlResult.Name = "pnlResult";
            this.pnlResult.Size = new System.Drawing.Size(317, 24);
            this.pnlResult.TabIndex = 7;
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
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(68, 167);
            this.label3.Margin = new System.Windows.Forms.Padding(6, 0, 6, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(37, 16);
            this.label3.TabIndex = 5;
            this.label3.Text = "* M2:";
            // 
            // txtLote
            // 
            this.txtLote.Location = new System.Drawing.Point(137, 128);
            this.txtLote.Margin = new System.Windows.Forms.Padding(6, 5, 6, 5);
            this.txtLote.MaxLength = 10;
            this.txtLote.Name = "txtLote";
            this.txtLote.Size = new System.Drawing.Size(204, 22);
            this.txtLote.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(68, 131);
            this.label2.Margin = new System.Windows.Forms.Padding(6, 0, 6, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(45, 16);
            this.label2.TabIndex = 3;
            this.label2.Text = "* Lote:";
            // 
            // btnGuardar
            // 
            this.btnGuardar.Image = global::WFPGranjas.Properties.Resources.aceptar;
            this.btnGuardar.Location = new System.Drawing.Point(137, 256);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(99, 30);
            this.btnGuardar.TabIndex = 8;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(68, 94);
            this.label1.Margin = new System.Windows.Forms.Padding(6, 0, 6, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(66, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "Manzana:";
            // 
            // dgPropietario
            // 
            this.dgPropietario.AllowUserToAddRows = false;
            this.dgPropietario.AllowUserToDeleteRows = false;
            this.dgPropietario.AllowUserToResizeRows = false;
            this.dgPropietario.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgPropietario.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgPropietario.Location = new System.Drawing.Point(10, 217);
            this.dgPropietario.MultiSelect = false;
            this.dgPropietario.Name = "dgPropietario";
            this.dgPropietario.ReadOnly = true;
            this.dgPropietario.RowHeadersVisible = false;
            this.dgPropietario.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgPropietario.Size = new System.Drawing.Size(333, 97);
            this.dgPropietario.TabIndex = 7;
            this.dgPropietario.TabStop = false;
            this.dgPropietario.Visible = false;
            this.dgPropietario.CellMouseDoubleClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dgPropietario_CellMouseDoubleClick);
            // 
            // dgLotes
            // 
            this.dgLotes.AllowUserToAddRows = false;
            this.dgLotes.AllowUserToDeleteRows = false;
            this.dgLotes.AllowUserToResizeRows = false;
            this.dgLotes.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgLotes.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgLotes.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgLotes.Location = new System.Drawing.Point(6, 55);
            this.dgLotes.MultiSelect = false;
            this.dgLotes.Name = "dgLotes";
            this.dgLotes.ReadOnly = true;
            this.dgLotes.RowHeadersVisible = false;
            this.dgLotes.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgLotes.Size = new System.Drawing.Size(513, 290);
            this.dgLotes.TabIndex = 2;
            this.dgLotes.TabStop = false;
            this.dgLotes.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dgLotes_CellMouseClick);
            // 
            // cmbFiltroMza
            // 
            this.cmbFiltroMza.FormattingEnabled = true;
            this.cmbFiltroMza.ItemHeight = 16;
            this.cmbFiltroMza.Location = new System.Drawing.Point(81, 24);
            this.cmbFiltroMza.Margin = new System.Windows.Forms.Padding(4);
            this.cmbFiltroMza.Name = "cmbFiltroMza";
            this.cmbFiltroMza.Size = new System.Drawing.Size(85, 24);
            this.cmbFiltroMza.TabIndex = 12;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(13, 28);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(66, 16);
            this.label7.TabIndex = 14;
            this.label7.Text = "Manzana:";
            // 
            // btnFiltrar
            // 
            this.btnFiltrar.Image = global::WFPGranjas.Properties.Resources.filtrar;
            this.btnFiltrar.Location = new System.Drawing.Point(166, 24);
            this.btnFiltrar.Margin = new System.Windows.Forms.Padding(4);
            this.btnFiltrar.Name = "btnFiltrar";
            this.btnFiltrar.Size = new System.Drawing.Size(23, 25);
            this.btnFiltrar.TabIndex = 13;
            this.btnFiltrar.UseVisualStyleBackColor = true;
            this.btnFiltrar.Click += new System.EventHandler(this.btnFiltrar_Click);
            // 
            // groupBoxDG
            // 
            this.groupBoxDG.Controls.Add(this.btnFiltrar);
            this.groupBoxDG.Controls.Add(this.label7);
            this.groupBoxDG.Controls.Add(this.cmbFiltroMza);
            this.groupBoxDG.Controls.Add(this.dgLotes);
            this.groupBoxDG.Dock = System.Windows.Forms.DockStyle.Left;
            this.groupBoxDG.Location = new System.Drawing.Point(0, 28);
            this.groupBoxDG.Margin = new System.Windows.Forms.Padding(6, 5, 6, 13);
            this.groupBoxDG.Name = "groupBoxDG";
            this.groupBoxDG.Padding = new System.Windows.Forms.Padding(6, 18, 6, 13);
            this.groupBoxDG.Size = new System.Drawing.Size(525, 358);
            this.groupBoxDG.TabIndex = 9;
            this.groupBoxDG.TabStop = false;
            this.groupBoxDG.Text = "Registros";
            // 
            // frmCLotes
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(882, 386);
            this.Controls.Add(this.groupBoxForm);
            this.Controls.Add(this.groupBoxDG);
            this.Controls.Add(this.pnlPrinBancos);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MaximizeBox = false;
            this.Name = "frmCLotes";
            this.Text = "Catálogo: Lotes";
            this.Load += new System.EventHandler(this.frmCLotes_Load);
            this.pnlPrinBancos.ResumeLayout(false);
            this.pnlPrinBancos.PerformLayout();
            this.menuStrip2.ResumeLayout(false);
            this.menuStrip2.PerformLayout();
            this.menuStrip.ResumeLayout(false);
            this.menuStrip.PerformLayout();
            this.groupBoxForm.ResumeLayout(false);
            this.groupBoxForm.PerformLayout();
            this.pnlEncabezado.ResumeLayout(false);
            this.pnlEncabezado.PerformLayout();
            this.pnlResult.ResumeLayout(false);
            this.pnlResult.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgPropietario)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgLotes)).EndInit();
            this.groupBoxDG.ResumeLayout(false);
            this.groupBoxDG.PerformLayout();
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
        private System.Windows.Forms.GroupBox groupBoxForm;
        private System.Windows.Forms.TextBox txtM2;
        private System.Windows.Forms.ComboBox cmbManzana;
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Panel pnlEncabezado;
        private System.Windows.Forms.Label lblEncabezado;
        private System.Windows.Forms.Panel pnlResult;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lblMensaje;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtLote;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtPropietario;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.DataGridView dgPropietario;
        private System.Windows.Forms.Label lblPropietario;
        private System.Windows.Forms.DataGridView dgLotes;
        private System.Windows.Forms.ComboBox cmbFiltroMza;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Button btnFiltrar;
        private System.Windows.Forms.GroupBox groupBoxDG;
    }
}