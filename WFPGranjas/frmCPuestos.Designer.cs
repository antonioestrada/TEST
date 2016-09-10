namespace WFPGranjas
{
    partial class frmCPuestos
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
            this.txtPuesto = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.btnCancelBancos = new System.Windows.Forms.Button();
            this.pnlEncabezado = new System.Windows.Forms.Panel();
            this.lblEncabezadoPuesto = new System.Windows.Forms.Label();
            this.pnlResultBPuestos = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lblMenPuestos = new System.Windows.Forms.Label();
            this.btnGuardarBancos = new System.Windows.Forms.Button();
            this.groupBoxDG = new System.Windows.Forms.GroupBox();
            this.dgPuestos = new System.Windows.Forms.DataGridView();
            this.label4 = new System.Windows.Forms.Label();
            this.menuStrip2 = new System.Windows.Forms.MenuStrip();
            this.otreToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.pnlPrinBancos = new System.Windows.Forms.Panel();
            this.menuStripBancos = new System.Windows.Forms.MenuStrip();
            this.mNuevoUsuario = new System.Windows.Forms.ToolStripMenuItem();
            this.mEditarUsuario = new System.Windows.Forms.ToolStripMenuItem();
            this.mEliminarUsuario = new System.Windows.Forms.ToolStripMenuItem();
            this.mSalirUsuario = new System.Windows.Forms.ToolStripMenuItem();
            this.groupBoxForm.SuspendLayout();
            this.pnlEncabezado.SuspendLayout();
            this.pnlResultBPuestos.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.groupBoxDG.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgPuestos)).BeginInit();
            this.menuStrip2.SuspendLayout();
            this.pnlPrinBancos.SuspendLayout();
            this.menuStripBancos.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBoxForm
            // 
            this.groupBoxForm.Controls.Add(this.txtPuesto);
            this.groupBoxForm.Controls.Add(this.label5);
            this.groupBoxForm.Controls.Add(this.btnCancelBancos);
            this.groupBoxForm.Controls.Add(this.pnlEncabezado);
            this.groupBoxForm.Controls.Add(this.pnlResultBPuestos);
            this.groupBoxForm.Controls.Add(this.btnGuardarBancos);
            this.groupBoxForm.Dock = System.Windows.Forms.DockStyle.Left;
            this.groupBoxForm.Location = new System.Drawing.Point(280, 28);
            this.groupBoxForm.Margin = new System.Windows.Forms.Padding(4);
            this.groupBoxForm.Name = "groupBoxForm";
            this.groupBoxForm.Padding = new System.Windows.Forms.Padding(4, 10, 4, 10);
            this.groupBoxForm.Size = new System.Drawing.Size(371, 342);
            this.groupBoxForm.TabIndex = 8;
            this.groupBoxForm.TabStop = false;
            this.groupBoxForm.Text = "Registro";
            // 
            // txtPuesto
            // 
            this.txtPuesto.Location = new System.Drawing.Point(109, 70);
            this.txtPuesto.Margin = new System.Windows.Forms.Padding(4);
            this.txtPuesto.Name = "txtPuesto";
            this.txtPuesto.Size = new System.Drawing.Size(232, 22);
            this.txtPuesto.TabIndex = 11;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(12, 74);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(56, 16);
            this.label5.TabIndex = 10;
            this.label5.Text = "Puesto :";
            // 
            // btnCancelBancos
            // 
            this.btnCancelBancos.DialogResult = System.Windows.Forms.DialogResult.Cancel;
            this.btnCancelBancos.Location = new System.Drawing.Point(266, 117);
            this.btnCancelBancos.Name = "btnCancelBancos";
            this.btnCancelBancos.Size = new System.Drawing.Size(75, 23);
            this.btnCancelBancos.TabIndex = 6;
            this.btnCancelBancos.Text = "Cancelar";
            this.btnCancelBancos.UseVisualStyleBackColor = true;
            this.btnCancelBancos.Click += new System.EventHandler(this.btnCancelBancos_Click);
            // 
            // pnlEncabezado
            // 
            this.pnlEncabezado.BackColor = System.Drawing.Color.LightGreen;
            this.pnlEncabezado.Controls.Add(this.lblEncabezadoPuesto);
            this.pnlEncabezado.Location = new System.Drawing.Point(14, 30);
            this.pnlEncabezado.Name = "pnlEncabezado";
            this.pnlEncabezado.Size = new System.Drawing.Size(327, 24);
            this.pnlEncabezado.TabIndex = 8;
            // 
            // lblEncabezadoPuesto
            // 
            this.lblEncabezadoPuesto.AutoSize = true;
            this.lblEncabezadoPuesto.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEncabezadoPuesto.ForeColor = System.Drawing.SystemColors.Window;
            this.lblEncabezadoPuesto.Location = new System.Drawing.Point(141, 4);
            this.lblEncabezadoPuesto.Name = "lblEncabezadoPuesto";
            this.lblEncabezadoPuesto.Size = new System.Drawing.Size(111, 16);
            this.lblEncabezadoPuesto.TabIndex = 0;
            this.lblEncabezadoPuesto.Text = "Nuevo Usuario";
            // 
            // pnlResultBPuestos
            // 
            this.pnlResultBPuestos.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.pnlResultBPuestos.Controls.Add(this.pictureBox1);
            this.pnlResultBPuestos.Controls.Add(this.lblMenPuestos);
            this.pnlResultBPuestos.Location = new System.Drawing.Point(29, 166);
            this.pnlResultBPuestos.Name = "pnlResultBPuestos";
            this.pnlResultBPuestos.Size = new System.Drawing.Size(312, 24);
            this.pnlResultBPuestos.TabIndex = 7;
            this.pnlResultBPuestos.Visible = false;
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
            // lblMenPuestos
            // 
            this.lblMenPuestos.AutoSize = true;
            this.lblMenPuestos.ForeColor = System.Drawing.SystemColors.Window;
            this.lblMenPuestos.Location = new System.Drawing.Point(30, 4);
            this.lblMenPuestos.Name = "lblMenPuestos";
            this.lblMenPuestos.Size = new System.Drawing.Size(166, 16);
            this.lblMenPuestos.TabIndex = 0;
            this.lblMenPuestos.Text = "¡Se guardo correcatmente!";
            // 
            // btnGuardarBancos
            // 
            this.btnGuardarBancos.Location = new System.Drawing.Point(185, 117);
            this.btnGuardarBancos.Name = "btnGuardarBancos";
            this.btnGuardarBancos.Size = new System.Drawing.Size(75, 23);
            this.btnGuardarBancos.TabIndex = 5;
            this.btnGuardarBancos.Text = "Guardar";
            this.btnGuardarBancos.UseVisualStyleBackColor = true;
            this.btnGuardarBancos.Click += new System.EventHandler(this.btnGuardarBancos_Click);
            // 
            // groupBoxDG
            // 
            this.groupBoxDG.Controls.Add(this.dgPuestos);
            this.groupBoxDG.Dock = System.Windows.Forms.DockStyle.Left;
            this.groupBoxDG.Location = new System.Drawing.Point(0, 28);
            this.groupBoxDG.Margin = new System.Windows.Forms.Padding(4, 4, 4, 10);
            this.groupBoxDG.Name = "groupBoxDG";
            this.groupBoxDG.Padding = new System.Windows.Forms.Padding(4, 15, 4, 10);
            this.groupBoxDG.Size = new System.Drawing.Size(280, 342);
            this.groupBoxDG.TabIndex = 7;
            this.groupBoxDG.TabStop = false;
            this.groupBoxDG.Text = "Registros";
            // 
            // dgPuestos
            // 
            this.dgPuestos.AllowUserToAddRows = false;
            this.dgPuestos.AllowUserToDeleteRows = false;
            this.dgPuestos.AllowUserToResizeRows = false;
            this.dgPuestos.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgPuestos.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgPuestos.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgPuestos.Location = new System.Drawing.Point(4, 30);
            this.dgPuestos.MultiSelect = false;
            this.dgPuestos.Name = "dgPuestos";
            this.dgPuestos.ReadOnly = true;
            this.dgPuestos.RowHeadersVisible = false;
            this.dgPuestos.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgPuestos.Size = new System.Drawing.Size(272, 302);
            this.dgPuestos.TabIndex = 2;
            this.dgPuestos.TabStop = false;
            this.dgPuestos.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dgUsuarios_CellMouseClick);
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
            this.pnlPrinBancos.Size = new System.Drawing.Size(655, 28);
            this.pnlPrinBancos.TabIndex = 5;
            // 
            // menuStripBancos
            // 
            this.menuStripBancos.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mNuevoUsuario,
            this.mEditarUsuario,
            this.mEliminarUsuario,
            this.mSalirUsuario});
            this.menuStripBancos.Location = new System.Drawing.Point(0, 0);
            this.menuStripBancos.Name = "menuStripBancos";
            this.menuStripBancos.Size = new System.Drawing.Size(655, 24);
            this.menuStripBancos.TabIndex = 2;
            this.menuStripBancos.Text = "menuStrip1";
            // 
            // mNuevoUsuario
            // 
            this.mNuevoUsuario.Image = global::WFPGranjas.Properties.Resources.nuevo;
            this.mNuevoUsuario.Name = "mNuevoUsuario";
            this.mNuevoUsuario.Size = new System.Drawing.Size(70, 20);
            this.mNuevoUsuario.Text = "Nuevo";
            this.mNuevoUsuario.Click += new System.EventHandler(this.mNuevoBanco_Click);
            // 
            // mEditarUsuario
            // 
            this.mEditarUsuario.Image = global::WFPGranjas.Properties.Resources.editar;
            this.mEditarUsuario.Name = "mEditarUsuario";
            this.mEditarUsuario.Size = new System.Drawing.Size(65, 20);
            this.mEditarUsuario.Text = "Editar";
            this.mEditarUsuario.Click += new System.EventHandler(this.mEditarBanco_Click);
            // 
            // mEliminarUsuario
            // 
            this.mEliminarUsuario.Image = global::WFPGranjas.Properties.Resources.eliminar;
            this.mEliminarUsuario.Name = "mEliminarUsuario";
            this.mEliminarUsuario.Size = new System.Drawing.Size(78, 20);
            this.mEliminarUsuario.Text = "Eliminar";
            this.mEliminarUsuario.Click += new System.EventHandler(this.mEliminarBanco_Click);
            // 
            // mSalirUsuario
            // 
            this.mSalirUsuario.Image = global::WFPGranjas.Properties.Resources.cerrar;
            this.mSalirUsuario.Name = "mSalirUsuario";
            this.mSalirUsuario.Size = new System.Drawing.Size(67, 20);
            this.mSalirUsuario.Text = "Cerrar";
            this.mSalirUsuario.Click += new System.EventHandler(this.mSalirBanco_Click);
            // 
            // frmCPuestos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.CancelButton = this.btnCancelBancos;
            this.ClientSize = new System.Drawing.Size(655, 370);
            this.Controls.Add(this.groupBoxForm);
            this.Controls.Add(this.groupBoxDG);
            this.Controls.Add(this.pnlPrinBancos);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MainMenuStrip = this.menuStripBancos;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.Name = "frmCPuestos";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
            this.Text = "Catálogo Puestos";
            this.Load += new System.EventHandler(this.frmUsuarios_Load);
            this.groupBoxForm.ResumeLayout(false);
            this.groupBoxForm.PerformLayout();
            this.pnlEncabezado.ResumeLayout(false);
            this.pnlEncabezado.PerformLayout();
            this.pnlResultBPuestos.ResumeLayout(false);
            this.pnlResultBPuestos.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.groupBoxDG.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgPuestos)).EndInit();
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
        private System.Windows.Forms.Label lblEncabezadoPuesto;
        private System.Windows.Forms.Panel pnlResultBPuestos;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lblMenPuestos;
        private System.Windows.Forms.Button btnGuardarBancos;
        private System.Windows.Forms.GroupBox groupBoxDG;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.MenuStrip menuStrip2;
        private System.Windows.Forms.ToolStripMenuItem otreToolStripMenuItem;
        private System.Windows.Forms.Panel pnlPrinBancos;
        private System.Windows.Forms.MenuStrip menuStripBancos;
        private System.Windows.Forms.ToolStripMenuItem mNuevoUsuario;
        private System.Windows.Forms.ToolStripMenuItem mEditarUsuario;
        private System.Windows.Forms.ToolStripMenuItem mSalirUsuario;
        private System.Windows.Forms.ToolStripMenuItem mEliminarUsuario;
        private System.Windows.Forms.TextBox txtPuesto;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.DataGridView dgPuestos;
    }
}