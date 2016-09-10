namespace WFPGranjas
{
    partial class frmCBancos
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
            this.groupBoxForm = new System.Windows.Forms.GroupBox();
            this.btnCancelBancos = new System.Windows.Forms.Button();
            this.pnlEncabezado = new System.Windows.Forms.Panel();
            this.lblEncabezadoBancos = new System.Windows.Forms.Label();
            this.pnlResultBancos = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lblMenBancos = new System.Windows.Forms.Label();
            this.dateFechaR = new System.Windows.Forms.DateTimePicker();
            this.label3 = new System.Windows.Forms.Label();
            this.txtAuxiliar = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.btnGuardarBancos = new System.Windows.Forms.Button();
            this.txtBanco = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.groupBoxDG = new System.Windows.Forms.GroupBox();
            this.dgBancos = new System.Windows.Forms.DataGridView();
            this.label4 = new System.Windows.Forms.Label();
            this.menuStrip2 = new System.Windows.Forms.MenuStrip();
            this.otreToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pnlPrinBancos = new System.Windows.Forms.Panel();
            this.menuStripBancos = new System.Windows.Forms.MenuStrip();
            this.mNuevoBanco = new System.Windows.Forms.ToolStripMenuItem();
            this.mEditarBanco = new System.Windows.Forms.ToolStripMenuItem();
            this.mEliminarBanco = new System.Windows.Forms.ToolStripMenuItem();
            this.mSalirBanco = new System.Windows.Forms.ToolStripMenuItem();
            this.label5 = new System.Windows.Forms.Label();
            this.groupBoxForm.SuspendLayout();
            this.pnlEncabezado.SuspendLayout();
            this.pnlResultBancos.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.groupBoxDG.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgBancos)).BeginInit();
            this.menuStrip2.SuspendLayout();
            this.pnlPrinBancos.SuspendLayout();
            this.menuStripBancos.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBoxForm
            // 
            this.groupBoxForm.Controls.Add(this.label5);
            this.groupBoxForm.Controls.Add(this.btnCancelBancos);
            this.groupBoxForm.Controls.Add(this.pnlEncabezado);
            this.groupBoxForm.Controls.Add(this.pnlResultBancos);
            this.groupBoxForm.Controls.Add(this.dateFechaR);
            this.groupBoxForm.Controls.Add(this.label3);
            this.groupBoxForm.Controls.Add(this.txtAuxiliar);
            this.groupBoxForm.Controls.Add(this.label2);
            this.groupBoxForm.Controls.Add(this.btnGuardarBancos);
            this.groupBoxForm.Controls.Add(this.txtBanco);
            this.groupBoxForm.Controls.Add(this.label1);
            this.groupBoxForm.Dock = System.Windows.Forms.DockStyle.Left;
            this.groupBoxForm.Location = new System.Drawing.Point(525, 28);
            this.groupBoxForm.Margin = new System.Windows.Forms.Padding(4);
            this.groupBoxForm.Name = "groupBoxForm";
            this.groupBoxForm.Padding = new System.Windows.Forms.Padding(4, 10, 4, 10);
            this.groupBoxForm.Size = new System.Drawing.Size(353, 298);
            this.groupBoxForm.TabIndex = 8;
            this.groupBoxForm.TabStop = false;
            this.groupBoxForm.Text = "Registro";
            // 
            // btnCancelBancos
            // 
            this.btnCancelBancos.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancelBancos.Image = global::WFPGranjas.Properties.Resources.cancelarIco;
            this.btnCancelBancos.Location = new System.Drawing.Point(246, 159);
            this.btnCancelBancos.Name = "btnCancelBancos";
            this.btnCancelBancos.Size = new System.Drawing.Size(99, 30);
            this.btnCancelBancos.TabIndex = 6;
            this.btnCancelBancos.Text = "Cancelar";
            this.btnCancelBancos.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCancelBancos.UseVisualStyleBackColor = true;
            this.btnCancelBancos.Click += new System.EventHandler(this.btnCancelBancos_Click);
            // 
            // pnlEncabezado
            // 
            this.pnlEncabezado.BackColor = System.Drawing.Color.LightGreen;
            this.pnlEncabezado.Controls.Add(this.lblEncabezadoBancos);
            this.pnlEncabezado.Location = new System.Drawing.Point(14, 32);
            this.pnlEncabezado.Name = "pnlEncabezado";
            this.pnlEncabezado.Size = new System.Drawing.Size(332, 24);
            this.pnlEncabezado.TabIndex = 8;
            // 
            // lblEncabezadoBancos
            // 
            this.lblEncabezadoBancos.AutoSize = true;
            this.lblEncabezadoBancos.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEncabezadoBancos.ForeColor = System.Drawing.SystemColors.Window;
            this.lblEncabezadoBancos.Location = new System.Drawing.Point(89, 4);
            this.lblEncabezadoBancos.Name = "lblEncabezadoBancos";
            this.lblEncabezadoBancos.Size = new System.Drawing.Size(101, 16);
            this.lblEncabezadoBancos.TabIndex = 0;
            this.lblEncabezadoBancos.Text = "Nuevo Banco";
            // 
            // pnlResultBancos
            // 
            this.pnlResultBancos.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.pnlResultBancos.Controls.Add(this.pictureBox1);
            this.pnlResultBancos.Controls.Add(this.lblMenBancos);
            this.pnlResultBancos.Location = new System.Drawing.Point(28, 195);
            this.pnlResultBancos.Name = "pnlResultBancos";
            this.pnlResultBancos.Size = new System.Drawing.Size(317, 24);
            this.pnlResultBancos.TabIndex = 7;
            this.pnlResultBancos.Visible = false;
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackgroundImage = global::WFPGranjas.Properties.Resources.info;
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pictureBox1.Location = new System.Drawing.Point(5, 4);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(19, 18);
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // lblMenBancos
            // 
            this.lblMenBancos.AutoSize = true;
            this.lblMenBancos.ForeColor = System.Drawing.SystemColors.Window;
            this.lblMenBancos.Location = new System.Drawing.Point(30, 4);
            this.lblMenBancos.Name = "lblMenBancos";
            this.lblMenBancos.Size = new System.Drawing.Size(166, 16);
            this.lblMenBancos.TabIndex = 0;
            this.lblMenBancos.Text = "¡Se guardo correcatmente!";
            // 
            // dateFechaR
            // 
            this.dateFechaR.Enabled = false;
            this.dateFechaR.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateFechaR.Location = new System.Drawing.Point(160, 124);
            this.dateFechaR.Name = "dateFechaR";
            this.dateFechaR.Size = new System.Drawing.Size(185, 22);
            this.dateFechaR.TabIndex = 6;
            this.dateFechaR.Value = new System.DateTime(2016, 8, 24, 17, 39, 27, 0);
            this.dateFechaR.Visible = false;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(11, 127);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(122, 16);
            this.label3.TabIndex = 5;
            this.label3.Text = "Fecha de Registro:";
            this.label3.Visible = false;
            // 
            // txtAuxiliar
            // 
            this.txtAuxiliar.Location = new System.Drawing.Point(159, 94);
            this.txtAuxiliar.Margin = new System.Windows.Forms.Padding(4);
            this.txtAuxiliar.Name = "txtAuxiliar";
            this.txtAuxiliar.Size = new System.Drawing.Size(186, 22);
            this.txtAuxiliar.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(11, 98);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(140, 16);
            this.label2.TabIndex = 3;
            this.label2.Text = "* Subcuenta Contable:";
            // 
            // btnGuardarBancos
            // 
            this.btnGuardarBancos.Image = global::WFPGranjas.Properties.Resources.aceptar;
            this.btnGuardarBancos.Location = new System.Drawing.Point(143, 159);
            this.btnGuardarBancos.Name = "btnGuardarBancos";
            this.btnGuardarBancos.Size = new System.Drawing.Size(99, 30);
            this.btnGuardarBancos.TabIndex = 5;
            this.btnGuardarBancos.Text = "Guardar";
            this.btnGuardarBancos.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnGuardarBancos.UseVisualStyleBackColor = true;
            this.btnGuardarBancos.Click += new System.EventHandler(this.btnGuardarBancos_Click);
            // 
            // txtBanco
            // 
            this.txtBanco.Location = new System.Drawing.Point(159, 63);
            this.txtBanco.Margin = new System.Windows.Forms.Padding(4);
            this.txtBanco.Name = "txtBanco";
            this.txtBanco.Size = new System.Drawing.Size(186, 22);
            this.txtBanco.TabIndex = 3;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(11, 67);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(132, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "* Nombre del Banco:";
            // 
            // groupBoxDG
            // 
            this.groupBoxDG.Controls.Add(this.dgBancos);
            this.groupBoxDG.Dock = System.Windows.Forms.DockStyle.Left;
            this.groupBoxDG.Location = new System.Drawing.Point(0, 28);
            this.groupBoxDG.Margin = new System.Windows.Forms.Padding(4, 4, 4, 10);
            this.groupBoxDG.Name = "groupBoxDG";
            this.groupBoxDG.Padding = new System.Windows.Forms.Padding(4, 15, 4, 10);
            this.groupBoxDG.Size = new System.Drawing.Size(525, 298);
            this.groupBoxDG.TabIndex = 7;
            this.groupBoxDG.TabStop = false;
            this.groupBoxDG.Text = "Registros";
            // 
            // dgBancos
            // 
            this.dgBancos.AllowUserToAddRows = false;
            this.dgBancos.AllowUserToDeleteRows = false;
            this.dgBancos.AllowUserToResizeRows = false;
            this.dgBancos.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgBancos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgBancos.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgBancos.Location = new System.Drawing.Point(4, 30);
            this.dgBancos.MultiSelect = false;
            this.dgBancos.Name = "dgBancos";
            this.dgBancos.ReadOnly = true;
            this.dgBancos.RowHeadersVisible = false;
            this.dgBancos.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgBancos.Size = new System.Drawing.Size(517, 258);
            this.dgBancos.TabIndex = 1;
            this.dgBancos.TabStop = false;
            this.dgBancos.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dgBancos_CellMouseClick);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.label4.Location = new System.Drawing.Point(10, 6);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(131, 16);
            this.label4.TabIndex = 0;
            this.label4.Text = "Catálogo: Bancos";
            // 
            // menuStrip2
            // 
            this.menuStrip2.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.otreToolStripMenuItem});
            this.menuStrip2.Location = new System.Drawing.Point(0, 24);
            this.menuStrip2.Name = "menuStrip2";
            this.menuStrip2.Size = new System.Drawing.Size(881, 24);
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
            // pnlPrinBancos
            // 
            this.pnlPrinBancos.BackColor = System.Drawing.Color.Green;
            this.pnlPrinBancos.Controls.Add(this.menuStrip2);
            this.pnlPrinBancos.Controls.Add(this.menuStripBancos);
            this.pnlPrinBancos.Controls.Add(this.label4);
            this.pnlPrinBancos.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlPrinBancos.Location = new System.Drawing.Point(0, 0);
            this.pnlPrinBancos.Name = "pnlPrinBancos";
            this.pnlPrinBancos.Size = new System.Drawing.Size(881, 28);
            this.pnlPrinBancos.TabIndex = 5;
            // 
            // menuStripBancos
            // 
            this.menuStripBancos.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mNuevoBanco,
            this.mEditarBanco,
            this.mEliminarBanco,
            this.mSalirBanco});
            this.menuStripBancos.Location = new System.Drawing.Point(0, 0);
            this.menuStripBancos.Name = "menuStripBancos";
            this.menuStripBancos.Size = new System.Drawing.Size(881, 24);
            this.menuStripBancos.TabIndex = 2;
            this.menuStripBancos.Text = "menuStrip1";
            // 
            // mNuevoBanco
            // 
            this.mNuevoBanco.Image = global::WFPGranjas.Properties.Resources.nuevo;
            this.mNuevoBanco.Name = "mNuevoBanco";
            this.mNuevoBanco.Size = new System.Drawing.Size(70, 20);
            this.mNuevoBanco.Text = "Nuevo";
            this.mNuevoBanco.Click += new System.EventHandler(this.mNuevoBanco_Click);
            // 
            // mEditarBanco
            // 
            this.mEditarBanco.Image = global::WFPGranjas.Properties.Resources.editar;
            this.mEditarBanco.Name = "mEditarBanco";
            this.mEditarBanco.Size = new System.Drawing.Size(65, 20);
            this.mEditarBanco.Text = "Editar";
            this.mEditarBanco.Click += new System.EventHandler(this.mEditarBanco_Click);
            // 
            // mEliminarBanco
            // 
            this.mEliminarBanco.Image = global::WFPGranjas.Properties.Resources.eliminar;
            this.mEliminarBanco.Name = "mEliminarBanco";
            this.mEliminarBanco.Size = new System.Drawing.Size(78, 20);
            this.mEliminarBanco.Text = "Eliminar";
            this.mEliminarBanco.Click += new System.EventHandler(this.mEliminarBanco_Click);
            // 
            // mSalirBanco
            // 
            this.mSalirBanco.Image = global::WFPGranjas.Properties.Resources.cerrar;
            this.mSalirBanco.Name = "mSalirBanco";
            this.mSalirBanco.Size = new System.Drawing.Size(67, 20);
            this.mSalirBanco.Text = "Cerrar";
            this.mSalirBanco.Click += new System.EventHandler(this.mSalirBanco_Click);
            // 
            // label5
            // 
            this.label5.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Right)));
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(203, 273);
            this.label5.Margin = new System.Windows.Forms.Padding(6, 0, 6, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(143, 16);
            this.label5.TabIndex = 11;
            this.label5.Text = "* Campos Obligatorios";
            // 
            // frmCBancos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.btnCancelBancos;
            this.ClientSize = new System.Drawing.Size(881, 326);
            this.Controls.Add(this.groupBoxForm);
            this.Controls.Add(this.groupBoxDG);
            this.Controls.Add(this.pnlPrinBancos);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MainMenuStrip = this.menuStripBancos;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.Name = "frmCBancos";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Catálogo: Bancos";
            this.Load += new System.EventHandler(this.frmBancos_Load);
            this.groupBoxForm.ResumeLayout(false);
            this.groupBoxForm.PerformLayout();
            this.pnlEncabezado.ResumeLayout(false);
            this.pnlEncabezado.PerformLayout();
            this.pnlResultBancos.ResumeLayout(false);
            this.pnlResultBancos.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.groupBoxDG.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgBancos)).EndInit();
            this.menuStrip2.ResumeLayout(false);
            this.menuStrip2.PerformLayout();
            this.pnlPrinBancos.ResumeLayout(false);
            this.pnlPrinBancos.PerformLayout();
            this.menuStripBancos.ResumeLayout(false);
            this.menuStripBancos.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.GroupBox groupBoxForm;
        private System.Windows.Forms.Button btnCancelBancos;
        private System.Windows.Forms.Panel pnlEncabezado;
        private System.Windows.Forms.Label lblEncabezadoBancos;
        private System.Windows.Forms.Panel pnlResultBancos;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lblMenBancos;
        private System.Windows.Forms.DateTimePicker dateFechaR;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txtAuxiliar;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button btnGuardarBancos;
        private System.Windows.Forms.TextBox txtBanco;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.GroupBox groupBoxDG;
        private System.Windows.Forms.DataGridView dgBancos;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.MenuStrip menuStrip2;
        private System.Windows.Forms.ToolStripMenuItem otreToolStripMenuItem;
        private System.Windows.Forms.Panel pnlPrinBancos;
        private System.Windows.Forms.MenuStrip menuStripBancos;
        private System.Windows.Forms.ToolStripMenuItem mNuevoBanco;
        private System.Windows.Forms.ToolStripMenuItem mEditarBanco;
        private System.Windows.Forms.ToolStripMenuItem mSalirBanco;
        private System.Windows.Forms.ToolStripMenuItem mEliminarBanco;
        private System.Windows.Forms.Label label5;
    }
}