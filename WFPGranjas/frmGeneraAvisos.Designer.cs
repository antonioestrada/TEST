namespace WFPGranjas
{
    partial class frmGeneraAvisos
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
            this.menuStripBancos = new System.Windows.Forms.MenuStrip();
            this.mSalirBanco = new System.Windows.Forms.ToolStripMenuItem();
            this.label4 = new System.Windows.Forms.Label();
            this.groupBoxForm = new System.Windows.Forms.GroupBox();
            this.pnlCaptura = new System.Windows.Forms.Panel();
            this.cmbAnios = new System.Windows.Forms.ComboBox();
            this.cmbPeriodos = new System.Windows.Forms.ComboBox();
            this.label1 = new System.Windows.Forms.Label();
            this.lblInd = new System.Windows.Forms.Label();
            this.btnCapturaLec = new System.Windows.Forms.Button();
            this.gbSeleccion = new System.Windows.Forms.GroupBox();
            this.lblDir = new System.Windows.Forms.Label();
            this.pXLote = new System.Windows.Forms.Panel();
            this.cmbManzana = new System.Windows.Forms.ComboBox();
            this.label6 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.btnBuscar = new System.Windows.Forms.Button();
            this.txtLote = new System.Windows.Forms.TextBox();
            this.lblAsoc = new System.Windows.Forms.Label();
            this.btnEjecutar = new System.Windows.Forms.Button();
            this.rbColono = new System.Windows.Forms.RadioButton();
            this.rbTodos = new System.Windows.Forms.RadioButton();
            this.pnlResultBancos = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lblMenBancos = new System.Windows.Forms.Label();
            this.pnlPrinBancos.SuspendLayout();
            this.menuStrip2.SuspendLayout();
            this.menuStripBancos.SuspendLayout();
            this.groupBoxForm.SuspendLayout();
            this.pnlCaptura.SuspendLayout();
            this.gbSeleccion.SuspendLayout();
            this.pXLote.SuspendLayout();
            this.pnlResultBancos.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
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
            this.pnlPrinBancos.Size = new System.Drawing.Size(459, 28);
            this.pnlPrinBancos.TabIndex = 6;
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
            // menuStripBancos
            // 
            this.menuStripBancos.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mSalirBanco});
            this.menuStripBancos.Location = new System.Drawing.Point(0, 0);
            this.menuStripBancos.Name = "menuStripBancos";
            this.menuStripBancos.Size = new System.Drawing.Size(459, 24);
            this.menuStripBancos.TabIndex = 2;
            this.menuStripBancos.Text = "menuStrip1";
            // 
            // mSalirBanco
            // 
            this.mSalirBanco.Image = global::WFPGranjas.Properties.Resources.cerrar;
            this.mSalirBanco.Name = "mSalirBanco";
            this.mSalirBanco.Size = new System.Drawing.Size(67, 20);
            this.mSalirBanco.Text = "Cerrar";
            this.mSalirBanco.Click += new System.EventHandler(this.mSalirBanco_Click);
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
            // groupBoxForm
            // 
            this.groupBoxForm.Controls.Add(this.pnlCaptura);
            this.groupBoxForm.Controls.Add(this.gbSeleccion);
            this.groupBoxForm.Controls.Add(this.pnlResultBancos);
            this.groupBoxForm.Dock = System.Windows.Forms.DockStyle.Left;
            this.groupBoxForm.Location = new System.Drawing.Point(0, 28);
            this.groupBoxForm.Margin = new System.Windows.Forms.Padding(4);
            this.groupBoxForm.Name = "groupBoxForm";
            this.groupBoxForm.Padding = new System.Windows.Forms.Padding(4, 10, 4, 10);
            this.groupBoxForm.Size = new System.Drawing.Size(454, 233);
            this.groupBoxForm.TabIndex = 9;
            this.groupBoxForm.TabStop = false;
            this.groupBoxForm.Text = "Registro";
            // 
            // pnlCaptura
            // 
            this.pnlCaptura.BackColor = System.Drawing.Color.Orange;
            this.pnlCaptura.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlCaptura.Controls.Add(this.cmbAnios);
            this.pnlCaptura.Controls.Add(this.cmbPeriodos);
            this.pnlCaptura.Controls.Add(this.label1);
            this.pnlCaptura.Controls.Add(this.lblInd);
            this.pnlCaptura.Controls.Add(this.btnCapturaLec);
            this.pnlCaptura.Location = new System.Drawing.Point(12, 26);
            this.pnlCaptura.Name = "pnlCaptura";
            this.pnlCaptura.Size = new System.Drawing.Size(430, 32);
            this.pnlCaptura.TabIndex = 50;
            // 
            // cmbAnios
            // 
            this.cmbAnios.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbAnios.Enabled = false;
            this.cmbAnios.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbAnios.FormattingEnabled = true;
            this.cmbAnios.Location = new System.Drawing.Point(241, 3);
            this.cmbAnios.Name = "cmbAnios";
            this.cmbAnios.Size = new System.Drawing.Size(84, 24);
            this.cmbAnios.TabIndex = 55;
            // 
            // cmbPeriodos
            // 
            this.cmbPeriodos.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbPeriodos.Enabled = false;
            this.cmbPeriodos.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbPeriodos.FormattingEnabled = true;
            this.cmbPeriodos.Location = new System.Drawing.Point(95, 3);
            this.cmbPeriodos.Name = "cmbPeriodos";
            this.cmbPeriodos.Size = new System.Drawing.Size(109, 24);
            this.cmbPeriodos.TabIndex = 54;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.Window;
            this.label1.Location = new System.Drawing.Point(208, 7);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(35, 16);
            this.label1.TabIndex = 53;
            this.label1.Text = "Año";
            // 
            // lblInd
            // 
            this.lblInd.AutoSize = true;
            this.lblInd.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblInd.ForeColor = System.Drawing.SystemColors.Window;
            this.lblInd.Location = new System.Drawing.Point(59, 7);
            this.lblInd.Name = "lblInd";
            this.lblInd.Size = new System.Drawing.Size(37, 16);
            this.lblInd.TabIndex = 52;
            this.lblInd.Text = "Mes";
            // 
            // btnCapturaLec
            // 
            this.btnCapturaLec.Image = global::WFPGranjas.Properties.Resources.expediente;
            this.btnCapturaLec.Location = new System.Drawing.Point(331, 3);
            this.btnCapturaLec.Name = "btnCapturaLec";
            this.btnCapturaLec.Size = new System.Drawing.Size(89, 24);
            this.btnCapturaLec.TabIndex = 51;
            this.btnCapturaLec.Text = "Consulta";
            this.btnCapturaLec.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCapturaLec.UseVisualStyleBackColor = true;
            this.btnCapturaLec.Click += new System.EventHandler(this.btnCapturaLec_Click);
            // 
            // gbSeleccion
            // 
            this.gbSeleccion.Controls.Add(this.lblDir);
            this.gbSeleccion.Controls.Add(this.pXLote);
            this.gbSeleccion.Controls.Add(this.lblAsoc);
            this.gbSeleccion.Controls.Add(this.btnEjecutar);
            this.gbSeleccion.Controls.Add(this.rbColono);
            this.gbSeleccion.Controls.Add(this.rbTodos);
            this.gbSeleccion.Enabled = false;
            this.gbSeleccion.Location = new System.Drawing.Point(13, 67);
            this.gbSeleccion.Name = "gbSeleccion";
            this.gbSeleccion.Size = new System.Drawing.Size(429, 122);
            this.gbSeleccion.TabIndex = 12;
            this.gbSeleccion.TabStop = false;
            this.gbSeleccion.Text = "Opción";
            // 
            // lblDir
            // 
            this.lblDir.AutoSize = true;
            this.lblDir.Location = new System.Drawing.Point(4, 103);
            this.lblDir.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.lblDir.Name = "lblDir";
            this.lblDir.Size = new System.Drawing.Size(69, 13);
            this.lblDir.TabIndex = 55;
            this.lblDir.Text = "DIRECCION:";
            this.lblDir.Visible = false;
            // 
            // pXLote
            // 
            this.pXLote.Controls.Add(this.cmbManzana);
            this.pXLote.Controls.Add(this.label6);
            this.pXLote.Controls.Add(this.label3);
            this.pXLote.Controls.Add(this.btnBuscar);
            this.pXLote.Controls.Add(this.txtLote);
            this.pXLote.Location = new System.Drawing.Point(167, 40);
            this.pXLote.Name = "pXLote";
            this.pXLote.Size = new System.Drawing.Size(259, 36);
            this.pXLote.TabIndex = 54;
            // 
            // cmbManzana
            // 
            this.cmbManzana.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbManzana.FormattingEnabled = true;
            this.cmbManzana.Location = new System.Drawing.Point(39, 8);
            this.cmbManzana.Margin = new System.Windows.Forms.Padding(4);
            this.cmbManzana.Name = "cmbManzana";
            this.cmbManzana.Size = new System.Drawing.Size(72, 21);
            this.cmbManzana.TabIndex = 9;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(125, 13);
            this.label6.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(23, 13);
            this.label6.TabIndex = 11;
            this.label6.Text = "LT:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(10, 12);
            this.label3.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(26, 13);
            this.label3.TabIndex = 8;
            this.label3.Text = "MZ:";
            // 
            // btnBuscar
            // 
            this.btnBuscar.Image = global::WFPGranjas.Properties.Resources.busca_mini;
            this.btnBuscar.Location = new System.Drawing.Point(228, 9);
            this.btnBuscar.Margin = new System.Windows.Forms.Padding(4);
            this.btnBuscar.Name = "btnBuscar";
            this.btnBuscar.Size = new System.Drawing.Size(25, 23);
            this.btnBuscar.TabIndex = 12;
            this.btnBuscar.TabStop = false;
            this.btnBuscar.UseVisualStyleBackColor = true;
            this.btnBuscar.Click += new System.EventHandler(this.btnBuscar_Click);
            // 
            // txtLote
            // 
            this.txtLote.Location = new System.Drawing.Point(150, 10);
            this.txtLote.Margin = new System.Windows.Forms.Padding(8, 6, 8, 6);
            this.txtLote.MaxLength = 10;
            this.txtLote.Name = "txtLote";
            this.txtLote.Size = new System.Drawing.Size(74, 20);
            this.txtLote.TabIndex = 10;
            // 
            // lblAsoc
            // 
            this.lblAsoc.AutoSize = true;
            this.lblAsoc.Location = new System.Drawing.Point(4, 86);
            this.lblAsoc.Margin = new System.Windows.Forms.Padding(8, 0, 8, 0);
            this.lblAsoc.Name = "lblAsoc";
            this.lblAsoc.Size = new System.Drawing.Size(65, 13);
            this.lblAsoc.TabIndex = 53;
            this.lblAsoc.Text = "ASOCIADO:";
            this.lblAsoc.Visible = false;
            // 
            // btnEjecutar
            // 
            this.btnEjecutar.Image = global::WFPGranjas.Properties.Resources.aceptar;
            this.btnEjecutar.Location = new System.Drawing.Point(321, 86);
            this.btnEjecutar.Name = "btnEjecutar";
            this.btnEjecutar.Size = new System.Drawing.Size(99, 30);
            this.btnEjecutar.TabIndex = 52;
            this.btnEjecutar.Text = "EJECUTAR";
            this.btnEjecutar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnEjecutar.UseVisualStyleBackColor = true;
            this.btnEjecutar.Click += new System.EventHandler(this.btnEjecutar_Click);
            // 
            // rbColono
            // 
            this.rbColono.AutoSize = true;
            this.rbColono.Location = new System.Drawing.Point(37, 51);
            this.rbColono.Name = "rbColono";
            this.rbColono.Size = new System.Drawing.Size(59, 17);
            this.rbColono.TabIndex = 1;
            this.rbColono.Text = "MZ/LT";
            this.rbColono.UseVisualStyleBackColor = true;
            this.rbColono.CheckedChanged += new System.EventHandler(this.rbColono_CheckedChanged);
            // 
            // rbTodos
            // 
            this.rbTodos.AutoSize = true;
            this.rbTodos.Checked = true;
            this.rbTodos.Location = new System.Drawing.Point(37, 20);
            this.rbTodos.Name = "rbTodos";
            this.rbTodos.Size = new System.Drawing.Size(55, 17);
            this.rbTodos.TabIndex = 0;
            this.rbTodos.TabStop = true;
            this.rbTodos.Text = "Todos";
            this.rbTodos.UseVisualStyleBackColor = true;
            this.rbTodos.CheckedChanged += new System.EventHandler(this.rbTodos_CheckedChanged);
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
            this.lblMenBancos.Size = new System.Drawing.Size(133, 13);
            this.lblMenBancos.TabIndex = 0;
            this.lblMenBancos.Text = "¡Se guardo correcatmente!";
            // 
            // frmGeneraAvisos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(459, 261);
            this.Controls.Add(this.groupBoxForm);
            this.Controls.Add(this.pnlPrinBancos);
            this.Name = "frmGeneraAvisos";
            this.Text = "AVISOS DE CONBRANZA";
            this.Load += new System.EventHandler(this.frmGeneraAvisos_Load);
            this.pnlPrinBancos.ResumeLayout(false);
            this.pnlPrinBancos.PerformLayout();
            this.menuStrip2.ResumeLayout(false);
            this.menuStrip2.PerformLayout();
            this.menuStripBancos.ResumeLayout(false);
            this.menuStripBancos.PerformLayout();
            this.groupBoxForm.ResumeLayout(false);
            this.pnlCaptura.ResumeLayout(false);
            this.pnlCaptura.PerformLayout();
            this.gbSeleccion.ResumeLayout(false);
            this.gbSeleccion.PerformLayout();
            this.pXLote.ResumeLayout(false);
            this.pXLote.PerformLayout();
            this.pnlResultBancos.ResumeLayout(false);
            this.pnlResultBancos.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlPrinBancos;
        private System.Windows.Forms.MenuStrip menuStrip2;
        private System.Windows.Forms.ToolStripMenuItem otreToolStripMenuItem;
        private System.Windows.Forms.MenuStrip menuStripBancos;
        private System.Windows.Forms.ToolStripMenuItem mSalirBanco;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.GroupBox groupBoxForm;
        private System.Windows.Forms.GroupBox gbSeleccion;
        private System.Windows.Forms.RadioButton rbColono;
        private System.Windows.Forms.RadioButton rbTodos;
        private System.Windows.Forms.Panel pnlResultBancos;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lblMenBancos;
        private System.Windows.Forms.Button btnBuscar;
        private System.Windows.Forms.TextBox txtLote;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cmbManzana;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Panel pnlCaptura;
        private System.Windows.Forms.ComboBox cmbAnios;
        private System.Windows.Forms.ComboBox cmbPeriodos;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblInd;
        private System.Windows.Forms.Button btnCapturaLec;
        private System.Windows.Forms.Label lblAsoc;
        private System.Windows.Forms.Button btnEjecutar;
        private System.Windows.Forms.Panel pXLote;
        private System.Windows.Forms.Label lblDir;
    }
}