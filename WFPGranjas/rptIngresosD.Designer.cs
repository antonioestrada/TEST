namespace WFPGranjas
{
    partial class rptIngresosD
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
            this.crvListadoMedidor = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.label7 = new System.Windows.Forms.Label();
            this.cmbFiltroMza = new System.Windows.Forms.ComboBox();
            this.btnClose = new System.Windows.Forms.Button();
            this.btnFiltrar = new System.Windows.Forms.Button();
            this.btnEnviar = new System.Windows.Forms.Button();
            this.txtDestino = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.checkEnviar = new System.Windows.Forms.CheckBox();
            this.gbMail = new System.Windows.Forms.GroupBox();
            this.button1 = new System.Windows.Forms.Button();
            this.gbMail.SuspendLayout();
            this.SuspendLayout();
            // 
            // crvListadoMedidor
            // 
            this.crvListadoMedidor.ActiveViewIndex = -1;
            this.crvListadoMedidor.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.crvListadoMedidor.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crvListadoMedidor.Cursor = System.Windows.Forms.Cursors.Default;
            this.crvListadoMedidor.Location = new System.Drawing.Point(-1, 52);
            this.crvListadoMedidor.Name = "crvListadoMedidor";
            this.crvListadoMedidor.Size = new System.Drawing.Size(952, 241);
            this.crvListadoMedidor.TabIndex = 0;
            this.crvListadoMedidor.ToolPanelView = CrystalDecisions.Windows.Forms.ToolPanelViewType.None;
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(4, 17);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(66, 16);
            this.label7.TabIndex = 17;
            this.label7.Text = "Manzana:";
            this.label7.Visible = false;
            // 
            // cmbFiltroMza
            // 
            this.cmbFiltroMza.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbFiltroMza.FormattingEnabled = true;
            this.cmbFiltroMza.ItemHeight = 16;
            this.cmbFiltroMza.Location = new System.Drawing.Point(72, 13);
            this.cmbFiltroMza.Margin = new System.Windows.Forms.Padding(4);
            this.cmbFiltroMza.Name = "cmbFiltroMza";
            this.cmbFiltroMza.Size = new System.Drawing.Size(85, 24);
            this.cmbFiltroMza.TabIndex = 15;
            this.cmbFiltroMza.Visible = false;
            // 
            // btnClose
            // 
            this.btnClose.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Right)));
            this.btnClose.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.btnClose.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnClose.Image = global::WFPGranjas.Properties.Resources.ventanas_cerrar;
            this.btnClose.Location = new System.Drawing.Point(853, 14);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(86, 24);
            this.btnClose.TabIndex = 18;
            this.btnClose.Text = "Cerrar";
            this.btnClose.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnClose.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnClose.UseVisualStyleBackColor = true;
            this.btnClose.Click += new System.EventHandler(this.btnClose_Click);
            // 
            // btnFiltrar
            // 
            this.btnFiltrar.Image = global::WFPGranjas.Properties.Resources.filtrar;
            this.btnFiltrar.ImageAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btnFiltrar.Location = new System.Drawing.Point(129, 12);
            this.btnFiltrar.Margin = new System.Windows.Forms.Padding(4);
            this.btnFiltrar.Name = "btnFiltrar";
            this.btnFiltrar.Size = new System.Drawing.Size(111, 26);
            this.btnFiltrar.TabIndex = 16;
            this.btnFiltrar.Text = "Generar";
            this.btnFiltrar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnFiltrar.UseVisualStyleBackColor = true;
            this.btnFiltrar.Click += new System.EventHandler(this.btnFiltrar_Click);
            // 
            // btnEnviar
            // 
            this.btnEnviar.Image = global::WFPGranjas.Properties.Resources.email__1_;
            this.btnEnviar.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.btnEnviar.Location = new System.Drawing.Point(275, 13);
            this.btnEnviar.Name = "btnEnviar";
            this.btnEnviar.Size = new System.Drawing.Size(81, 24);
            this.btnEnviar.TabIndex = 9;
            this.btnEnviar.Text = "Enviar";
            this.btnEnviar.TextAlign = System.Drawing.ContentAlignment.BottomRight;
            this.btnEnviar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnEnviar.UseVisualStyleBackColor = true;
            this.btnEnviar.Click += new System.EventHandler(this.btnEnviar_Click);
            // 
            // txtDestino
            // 
            this.txtDestino.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtDestino.Location = new System.Drawing.Point(114, 14);
            this.txtDestino.Name = "txtDestino";
            this.txtDestino.Size = new System.Drawing.Size(161, 22);
            this.txtDestino.TabIndex = 19;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(10, 17);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(98, 16);
            this.label1.TabIndex = 20;
            this.label1.Text = "Destinatario(s):";
            // 
            // checkEnviar
            // 
            this.checkEnviar.AutoSize = true;
            this.checkEnviar.Location = new System.Drawing.Point(247, 18);
            this.checkEnviar.Name = "checkEnviar";
            this.checkEnviar.Size = new System.Drawing.Size(107, 17);
            this.checkEnviar.TabIndex = 21;
            this.checkEnviar.Text = "Enviar por correo";
            this.checkEnviar.UseVisualStyleBackColor = true;
            this.checkEnviar.Visible = false;
            this.checkEnviar.CheckedChanged += new System.EventHandler(this.checkEnviar_CheckedChanged);
            // 
            // gbMail
            // 
            this.gbMail.Controls.Add(this.txtDestino);
            this.gbMail.Controls.Add(this.btnEnviar);
            this.gbMail.Controls.Add(this.label1);
            this.gbMail.Location = new System.Drawing.Point(353, 4);
            this.gbMail.Name = "gbMail";
            this.gbMail.Size = new System.Drawing.Size(363, 42);
            this.gbMail.TabIndex = 22;
            this.gbMail.TabStop = false;
            this.gbMail.Text = "Enviar Reporte";
            this.gbMail.Visible = false;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(755, 18);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 23;
            this.button1.Text = "button1";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Visible = false;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // rptIngresosD
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(951, 293);
            this.ControlBox = false;
            this.Controls.Add(this.button1);
            this.Controls.Add(this.gbMail);
            this.Controls.Add(this.checkEnviar);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.btnFiltrar);
            this.Controls.Add(this.label7);
            this.Controls.Add(this.cmbFiltroMza);
            this.Controls.Add(this.crvListadoMedidor);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.MinimizeBox = false;
            this.Name = "rptIngresosD";
            this.Text = "Listado de Medidores";
            this.Load += new System.EventHandler(this.rptMedidores_Load);
            this.gbMail.ResumeLayout(false);
            this.gbMail.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer crvListadoMedidor;
        private System.Windows.Forms.Button btnEnviar;
        private System.Windows.Forms.Button btnFiltrar;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.ComboBox cmbFiltroMza;
        private System.Windows.Forms.Button btnClose;
        private System.Windows.Forms.TextBox txtDestino;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.CheckBox checkEnviar;
        private System.Windows.Forms.GroupBox gbMail;
        private System.Windows.Forms.Button button1;
    }
}