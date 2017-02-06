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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(frmGeneraAvisos));
            this.pnlPrinBancos = new System.Windows.Forms.Panel();
            this.menuStrip2 = new System.Windows.Forms.MenuStrip();
            this.otreToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStripColonos = new System.Windows.Forms.MenuStrip();
            this.mNuevo = new System.Windows.Forms.ToolStripMenuItem();
            this.mEditar = new System.Windows.Forms.ToolStripMenuItem();
            this.mEliminar = new System.Windows.Forms.ToolStripMenuItem();
            this.mSalir = new System.Windows.Forms.ToolStripMenuItem();
            this.label4 = new System.Windows.Forms.Label();
            this.pnlBody = new System.Windows.Forms.Panel();
            this.checkAv1 = new System.Windows.Forms.CheckBox();
            this.label1 = new System.Windows.Forms.Label();
            this.rtbAviso = new System.Windows.Forms.RichTextBox();
            this.panel1 = new System.Windows.Forms.Panel();
            this.txtFooter4 = new System.Windows.Forms.TextBox();
            this.checkAv2 = new System.Windows.Forms.CheckBox();
            this.txtFooter3 = new System.Windows.Forms.TextBox();
            this.txtFooter2 = new System.Windows.Forms.TextBox();
            this.txtFooter1 = new System.Windows.Forms.TextBox();
            this.lblInstruccion = new System.Windows.Forms.Label();
            this.btnSave1 = new System.Windows.Forms.Button();
            this.btnSave2 = new System.Windows.Forms.Button();
            this.pnlResult = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lblMensaje = new System.Windows.Forms.Label();
            this.pnlPrinBancos.SuspendLayout();
            this.menuStrip2.SuspendLayout();
            this.menuStripColonos.SuspendLayout();
            this.pnlBody.SuspendLayout();
            this.panel1.SuspendLayout();
            this.pnlResult.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // pnlPrinBancos
            // 
            this.pnlPrinBancos.BackColor = System.Drawing.Color.MediumTurquoise;
            this.pnlPrinBancos.Controls.Add(this.menuStrip2);
            this.pnlPrinBancos.Controls.Add(this.menuStripColonos);
            this.pnlPrinBancos.Controls.Add(this.label4);
            this.pnlPrinBancos.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlPrinBancos.Location = new System.Drawing.Point(0, 0);
            this.pnlPrinBancos.Margin = new System.Windows.Forms.Padding(4);
            this.pnlPrinBancos.Name = "pnlPrinBancos";
            this.pnlPrinBancos.Size = new System.Drawing.Size(806, 32);
            this.pnlPrinBancos.TabIndex = 8;
            // 
            // menuStrip2
            // 
            this.menuStrip2.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.otreToolStripMenuItem});
            this.menuStrip2.Location = new System.Drawing.Point(0, 24);
            this.menuStrip2.Name = "menuStrip2";
            this.menuStrip2.Padding = new System.Windows.Forms.Padding(7, 2, 0, 2);
            this.menuStrip2.Size = new System.Drawing.Size(955, 24);
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
            // menuStripColonos
            // 
            this.menuStripColonos.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mNuevo,
            this.mEditar,
            this.mEliminar,
            this.mSalir});
            this.menuStripColonos.Location = new System.Drawing.Point(0, 0);
            this.menuStripColonos.Name = "menuStripColonos";
            this.menuStripColonos.Padding = new System.Windows.Forms.Padding(7, 2, 0, 2);
            this.menuStripColonos.Size = new System.Drawing.Size(806, 24);
            this.menuStripColonos.TabIndex = 1;
            this.menuStripColonos.Text = "menuStrip1";
            // 
            // mNuevo
            // 
            this.mNuevo.Image = global::WFPGranjas.Properties.Resources.nuevo;
            this.mNuevo.Name = "mNuevo";
            this.mNuevo.Size = new System.Drawing.Size(70, 20);
            this.mNuevo.Text = "Nuevo";
            this.mNuevo.Visible = false;
            // 
            // mEditar
            // 
            this.mEditar.Image = global::WFPGranjas.Properties.Resources.editar;
            this.mEditar.Name = "mEditar";
            this.mEditar.Size = new System.Drawing.Size(65, 20);
            this.mEditar.Text = "Editar";
            this.mEditar.Visible = false;
            // 
            // mEliminar
            // 
            this.mEliminar.Image = global::WFPGranjas.Properties.Resources.eliminar;
            this.mEliminar.Name = "mEliminar";
            this.mEliminar.Size = new System.Drawing.Size(78, 20);
            this.mEliminar.Text = "Eliminar";
            this.mEliminar.Visible = false;
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
            this.label4.Location = new System.Drawing.Point(11, 7);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(131, 16);
            this.label4.TabIndex = 0;
            this.label4.Text = "Catálogo: Bancos";
            // 
            // pnlBody
            // 
            this.pnlBody.BackColor = System.Drawing.SystemColors.Window;
            this.pnlBody.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlBody.Controls.Add(this.btnSave1);
            this.pnlBody.Controls.Add(this.lblInstruccion);
            this.pnlBody.Controls.Add(this.label1);
            this.pnlBody.Controls.Add(this.rtbAviso);
            this.pnlBody.Controls.Add(this.checkAv1);
            this.pnlBody.Location = new System.Drawing.Point(12, 39);
            this.pnlBody.Name = "pnlBody";
            this.pnlBody.Size = new System.Drawing.Size(780, 150);
            this.pnlBody.TabIndex = 9;
            // 
            // checkAv1
            // 
            this.checkAv1.AutoSize = true;
            this.checkAv1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.checkAv1.Location = new System.Drawing.Point(262, 25);
            this.checkAv1.Name = "checkAv1";
            this.checkAv1.Size = new System.Drawing.Size(70, 20);
            this.checkAv1.TabIndex = 46;
            this.checkAv1.Text = "Aviso:";
            this.checkAv1.UseVisualStyleBackColor = true;
            this.checkAv1.CheckedChanged += new System.EventHandler(this.checkAv1_CheckedChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Underline, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(425, 6);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(216, 13);
            this.label1.TabIndex = 1;
            this.label1.Text = "AVISOS Y NOTIFICACIONES GENERALES";
            // 
            // rtbAviso
            // 
            this.rtbAviso.Location = new System.Drawing.Point(330, 25);
            this.rtbAviso.Name = "rtbAviso";
            this.rtbAviso.ReadOnly = true;
            this.rtbAviso.Size = new System.Drawing.Size(402, 119);
            this.rtbAviso.TabIndex = 0;
            this.rtbAviso.Text = resources.GetString("rtbAviso.Text");
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.Window;
            this.panel1.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panel1.Controls.Add(this.txtFooter4);
            this.panel1.Controls.Add(this.btnSave2);
            this.panel1.Controls.Add(this.checkAv2);
            this.panel1.Controls.Add(this.txtFooter3);
            this.panel1.Controls.Add(this.txtFooter2);
            this.panel1.Controls.Add(this.txtFooter1);
            this.panel1.Location = new System.Drawing.Point(12, 196);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(780, 114);
            this.panel1.TabIndex = 10;
            // 
            // txtFooter4
            // 
            this.txtFooter4.Location = new System.Drawing.Point(78, 85);
            this.txtFooter4.MaxLength = 130;
            this.txtFooter4.Name = "txtFooter4";
            this.txtFooter4.ReadOnly = true;
            this.txtFooter4.Size = new System.Drawing.Size(656, 20);
            this.txtFooter4.TabIndex = 3;
            this.txtFooter4.Text = "Linea 4";
            this.txtFooter4.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // checkAv2
            // 
            this.checkAv2.AutoSize = true;
            this.checkAv2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.checkAv2.Location = new System.Drawing.Point(16, 7);
            this.checkAv2.Name = "checkAv2";
            this.checkAv2.Size = new System.Drawing.Size(56, 20);
            this.checkAv2.TabIndex = 47;
            this.checkAv2.Text = "Info:";
            this.checkAv2.UseVisualStyleBackColor = true;
            this.checkAv2.CheckedChanged += new System.EventHandler(this.checkAv2_CheckedChanged);
            // 
            // txtFooter3
            // 
            this.txtFooter3.Location = new System.Drawing.Point(78, 59);
            this.txtFooter3.MaxLength = 130;
            this.txtFooter3.Name = "txtFooter3";
            this.txtFooter3.ReadOnly = true;
            this.txtFooter3.Size = new System.Drawing.Size(656, 20);
            this.txtFooter3.TabIndex = 2;
            this.txtFooter3.Text = "Linea 3";
            this.txtFooter3.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtFooter2
            // 
            this.txtFooter2.Location = new System.Drawing.Point(78, 33);
            this.txtFooter2.MaxLength = 130;
            this.txtFooter2.Name = "txtFooter2";
            this.txtFooter2.ReadOnly = true;
            this.txtFooter2.Size = new System.Drawing.Size(656, 20);
            this.txtFooter2.TabIndex = 1;
            this.txtFooter2.Text = "Linea 2";
            this.txtFooter2.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // txtFooter1
            // 
            this.txtFooter1.Location = new System.Drawing.Point(78, 7);
            this.txtFooter1.MaxLength = 130;
            this.txtFooter1.Name = "txtFooter1";
            this.txtFooter1.ReadOnly = true;
            this.txtFooter1.Size = new System.Drawing.Size(656, 20);
            this.txtFooter1.TabIndex = 0;
            this.txtFooter1.Text = "Linea 1";
            this.txtFooter1.TextAlign = System.Windows.Forms.HorizontalAlignment.Center;
            // 
            // lblInstruccion
            // 
            this.lblInstruccion.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblInstruccion.Location = new System.Drawing.Point(13, 57);
            this.lblInstruccion.Name = "lblInstruccion";
            this.lblInstruccion.Size = new System.Drawing.Size(224, 52);
            this.lblInstruccion.TabIndex = 57;
            this.lblInstruccion.Text = "Selecciona la casilla a modificar. Y finalmente confirma los cambios.";
            this.lblInstruccion.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // btnSave1
            // 
            this.btnSave1.Image = global::WFPGranjas.Properties.Resources.aceptar;
            this.btnSave1.Location = new System.Drawing.Point(738, 25);
            this.btnSave1.Name = "btnSave1";
            this.btnSave1.Size = new System.Drawing.Size(32, 24);
            this.btnSave1.TabIndex = 58;
            this.btnSave1.UseVisualStyleBackColor = true;
            this.btnSave1.Visible = false;
            this.btnSave1.Click += new System.EventHandler(this.btnSave1_Click);
            // 
            // btnSave2
            // 
            this.btnSave2.Image = global::WFPGranjas.Properties.Resources.aceptar;
            this.btnSave2.Location = new System.Drawing.Point(740, 7);
            this.btnSave2.Name = "btnSave2";
            this.btnSave2.Size = new System.Drawing.Size(32, 24);
            this.btnSave2.TabIndex = 59;
            this.btnSave2.UseVisualStyleBackColor = true;
            this.btnSave2.Visible = false;
            this.btnSave2.Click += new System.EventHandler(this.btnSave2_Click);
            // 
            // pnlResult
            // 
            this.pnlResult.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.pnlResult.Controls.Add(this.pictureBox1);
            this.pnlResult.Controls.Add(this.lblMensaje);
            this.pnlResult.Location = new System.Drawing.Point(422, 317);
            this.pnlResult.Margin = new System.Windows.Forms.Padding(4);
            this.pnlResult.Name = "pnlResult";
            this.pnlResult.Size = new System.Drawing.Size(370, 28);
            this.pnlResult.TabIndex = 11;
            this.pnlResult.Visible = false;
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackgroundImage = global::WFPGranjas.Properties.Resources.info;
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pictureBox1.Location = new System.Drawing.Point(6, 5);
            this.pictureBox1.Margin = new System.Windows.Forms.Padding(4);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(22, 21);
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // lblMensaje
            // 
            this.lblMensaje.AutoSize = true;
            this.lblMensaje.ForeColor = System.Drawing.SystemColors.Window;
            this.lblMensaje.Location = new System.Drawing.Point(35, 5);
            this.lblMensaje.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblMensaje.Name = "lblMensaje";
            this.lblMensaje.Size = new System.Drawing.Size(133, 13);
            this.lblMensaje.TabIndex = 0;
            this.lblMensaje.Text = "¡Se guardo correcatmente!";
            // 
            // frmGeneraAvisos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(806, 348);
            this.Controls.Add(this.pnlResult);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.pnlBody);
            this.Controls.Add(this.pnlPrinBancos);
            this.Name = "frmGeneraAvisos";
            this.Text = "Gestiona Avisos";
            this.Load += new System.EventHandler(this.frmGeneraAvisos_Load);
            this.pnlPrinBancos.ResumeLayout(false);
            this.pnlPrinBancos.PerformLayout();
            this.menuStrip2.ResumeLayout(false);
            this.menuStrip2.PerformLayout();
            this.menuStripColonos.ResumeLayout(false);
            this.menuStripColonos.PerformLayout();
            this.pnlBody.ResumeLayout(false);
            this.pnlBody.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.pnlResult.ResumeLayout(false);
            this.pnlResult.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel pnlPrinBancos;
        private System.Windows.Forms.MenuStrip menuStrip2;
        private System.Windows.Forms.ToolStripMenuItem otreToolStripMenuItem;
        private System.Windows.Forms.MenuStrip menuStripColonos;
        private System.Windows.Forms.ToolStripMenuItem mNuevo;
        private System.Windows.Forms.ToolStripMenuItem mEditar;
        private System.Windows.Forms.ToolStripMenuItem mEliminar;
        private System.Windows.Forms.ToolStripMenuItem mSalir;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Panel pnlBody;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.RichTextBox rtbAviso;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.TextBox txtFooter4;
        private System.Windows.Forms.TextBox txtFooter3;
        private System.Windows.Forms.TextBox txtFooter2;
        private System.Windows.Forms.TextBox txtFooter1;
        private System.Windows.Forms.CheckBox checkAv1;
        private System.Windows.Forms.CheckBox checkAv2;
        private System.Windows.Forms.Label lblInstruccion;
        private System.Windows.Forms.Button btnSave1;
        private System.Windows.Forms.Button btnSave2;
        private System.Windows.Forms.Panel pnlResult;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lblMensaje;
    }
}