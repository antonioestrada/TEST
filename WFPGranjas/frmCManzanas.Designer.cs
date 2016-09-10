namespace WFPGranjas
{
    partial class frmCManzanas
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
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.btnCancel = new System.Windows.Forms.Button();
            this.pnlEncabezado = new System.Windows.Forms.Panel();
            this.lblEncabezado = new System.Windows.Forms.Label();
            this.pnlResult = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lblMensaje = new System.Windows.Forms.Label();
            this.txtManzana = new System.Windows.Forms.TextBox();
            this.btnGuardar = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBoxDG = new System.Windows.Forms.GroupBox();
            this.dgManzanas = new System.Windows.Forms.DataGridView();
            this.pnlPrinBancos.SuspendLayout();
            this.menuStrip2.SuspendLayout();
            this.menuStrip.SuspendLayout();
            this.groupBoxForm.SuspendLayout();
            this.pnlEncabezado.SuspendLayout();
            this.pnlResult.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.groupBoxDG.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgManzanas)).BeginInit();
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
            this.pnlPrinBancos.TabIndex = 7;
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
            this.menuStrip.TabIndex = 2;
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
            this.groupBoxForm.Controls.Add(this.label3);
            this.groupBoxForm.Controls.Add(this.label2);
            this.groupBoxForm.Controls.Add(this.btnCancel);
            this.groupBoxForm.Controls.Add(this.pnlEncabezado);
            this.groupBoxForm.Controls.Add(this.pnlResult);
            this.groupBoxForm.Controls.Add(this.txtManzana);
            this.groupBoxForm.Controls.Add(this.btnGuardar);
            this.groupBoxForm.Controls.Add(this.label1);
            this.groupBoxForm.Dock = System.Windows.Forms.DockStyle.Left;
            this.groupBoxForm.Location = new System.Drawing.Point(525, 28);
            this.groupBoxForm.Margin = new System.Windows.Forms.Padding(6, 5, 6, 5);
            this.groupBoxForm.Name = "groupBoxForm";
            this.groupBoxForm.Padding = new System.Windows.Forms.Padding(6, 13, 6, 13);
            this.groupBoxForm.Size = new System.Drawing.Size(353, 358);
            this.groupBoxForm.TabIndex = 12;
            this.groupBoxForm.TabStop = false;
            this.groupBoxForm.Text = "Registro";
            // 
            // label3
            // 
            this.label3.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(201, 333);
            this.label3.Margin = new System.Windows.Forms.Padding(6, 0, 6, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(143, 16);
            this.label3.TabIndex = 10;
            this.label3.Text = "* Campos Obligatorios";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Italic, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.Color.DimGray;
            this.label2.Location = new System.Drawing.Point(201, 118);
            this.label2.Margin = new System.Windows.Forms.Padding(6, 0, 6, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(141, 16);
            this.label2.TabIndex = 9;
            this.label2.Text = "ejemplo: I, II, III, IV etc...";
            // 
            // btnCancel
            // 
            this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancel.Image = global::WFPGranjas.Properties.Resources.cancelarIco;
            this.btnCancel.Location = new System.Drawing.Point(242, 195);
            this.btnCancel.Name = "btnCancel";
            this.btnCancel.Size = new System.Drawing.Size(99, 30);
            this.btnCancel.TabIndex = 6;
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
            this.pnlResult.Location = new System.Drawing.Point(24, 231);
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
            // txtManzana
            // 
            this.txtManzana.Location = new System.Drawing.Point(138, 91);
            this.txtManzana.Margin = new System.Windows.Forms.Padding(6, 5, 6, 5);
            this.txtManzana.MaxLength = 10;
            this.txtManzana.Name = "txtManzana";
            this.txtManzana.Size = new System.Drawing.Size(204, 22);
            this.txtManzana.TabIndex = 4;
            // 
            // btnGuardar
            // 
            this.btnGuardar.Image = global::WFPGranjas.Properties.Resources.aceptar;
            this.btnGuardar.Location = new System.Drawing.Point(137, 195);
            this.btnGuardar.Name = "btnGuardar";
            this.btnGuardar.Size = new System.Drawing.Size(99, 30);
            this.btnGuardar.TabIndex = 5;
            this.btnGuardar.Text = "Guardar";
            this.btnGuardar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnGuardar.UseVisualStyleBackColor = true;
            this.btnGuardar.Click += new System.EventHandler(this.btnGuardar_Click);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(11, 94);
            this.label1.Margin = new System.Windows.Forms.Padding(6, 0, 6, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(74, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "* Manzana:";
            // 
            // groupBoxDG
            // 
            this.groupBoxDG.Controls.Add(this.dgManzanas);
            this.groupBoxDG.Dock = System.Windows.Forms.DockStyle.Left;
            this.groupBoxDG.Location = new System.Drawing.Point(0, 28);
            this.groupBoxDG.Margin = new System.Windows.Forms.Padding(6, 5, 6, 13);
            this.groupBoxDG.Name = "groupBoxDG";
            this.groupBoxDG.Padding = new System.Windows.Forms.Padding(6, 18, 6, 13);
            this.groupBoxDG.Size = new System.Drawing.Size(525, 358);
            this.groupBoxDG.TabIndex = 11;
            this.groupBoxDG.TabStop = false;
            this.groupBoxDG.Text = "Registros";
            // 
            // dgManzanas
            // 
            this.dgManzanas.AllowUserToAddRows = false;
            this.dgManzanas.AllowUserToDeleteRows = false;
            this.dgManzanas.AllowUserToResizeRows = false;
            this.dgManzanas.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgManzanas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgManzanas.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgManzanas.Location = new System.Drawing.Point(6, 33);
            this.dgManzanas.MultiSelect = false;
            this.dgManzanas.Name = "dgManzanas";
            this.dgManzanas.ReadOnly = true;
            this.dgManzanas.RowHeadersVisible = false;
            this.dgManzanas.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgManzanas.Size = new System.Drawing.Size(513, 312);
            this.dgManzanas.TabIndex = 1;
            this.dgManzanas.TabStop = false;
            this.dgManzanas.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dgManzanas_CellMouseClick);
            // 
            // frmCManzanas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(882, 386);
            this.Controls.Add(this.groupBoxForm);
            this.Controls.Add(this.groupBoxDG);
            this.Controls.Add(this.pnlPrinBancos);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.Name = "frmCManzanas";
            this.Text = "Catálogo: Manzanas";
            this.Load += new System.EventHandler(this.frmCManzanas_Load);
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
            this.groupBoxDG.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgManzanas)).EndInit();
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
        private System.Windows.Forms.Button btnCancel;
        private System.Windows.Forms.Panel pnlEncabezado;
        private System.Windows.Forms.Label lblEncabezado;
        private System.Windows.Forms.Panel pnlResult;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lblMensaje;
        private System.Windows.Forms.TextBox txtManzana;
        private System.Windows.Forms.Button btnGuardar;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBoxDG;
        private System.Windows.Forms.DataGridView dgManzanas;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
    }
}