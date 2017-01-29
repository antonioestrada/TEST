namespace WFPGranjas
{
    partial class frmCancelacion
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
            this.groupDColono = new System.Windows.Forms.GroupBox();
            this.lblMzaLote = new System.Windows.Forms.Label();
            this.lblDireccion = new System.Windows.Forms.Label();
            this.lblColono = new System.Windows.Forms.Label();
            this.groupCuota = new System.Windows.Forms.GroupBox();
            this.panelCapturaCenter = new System.Windows.Forms.Panel();
            this.dgPartidasR = new System.Windows.Forms.DataGridView();
            this.panelCapturaButtom = new System.Windows.Forms.Panel();
            this.btnCapturaPago = new System.Windows.Forms.Button();
            this.label7 = new System.Windows.Forms.Label();
            this.lblMultas = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.panelCapturaTop = new System.Windows.Forms.Panel();
            this.label5 = new System.Windows.Forms.Label();
            this.txtColono = new System.Windows.Forms.TextBox();
            this.panelTop = new System.Windows.Forms.Panel();
            this.btnCapturaR = new System.Windows.Forms.Button();
            this.gbDRecibo = new System.Windows.Forms.GroupBox();
            this.lblFechaSys = new System.Windows.Forms.Label();
            this.label13 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.lblFolio = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.lblImporte = new System.Windows.Forms.Label();
            this.lblMoratorio = new System.Windows.Forms.Label();
            this.lblTotalImporte = new System.Windows.Forms.Label();
            this.groupDColono.SuspendLayout();
            this.groupCuota.SuspendLayout();
            this.panelCapturaCenter.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgPartidasR)).BeginInit();
            this.panelCapturaButtom.SuspendLayout();
            this.panelCapturaTop.SuspendLayout();
            this.panelTop.SuspendLayout();
            this.gbDRecibo.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupDColono
            // 
            this.groupDColono.Controls.Add(this.lblMzaLote);
            this.groupDColono.Controls.Add(this.lblDireccion);
            this.groupDColono.Controls.Add(this.lblColono);
            this.groupDColono.Location = new System.Drawing.Point(4, 60);
            this.groupDColono.Name = "groupDColono";
            this.groupDColono.Size = new System.Drawing.Size(604, 85);
            this.groupDColono.TabIndex = 6;
            this.groupDColono.TabStop = false;
            this.groupDColono.Text = "Datos del Colono";
            this.groupDColono.Visible = false;
            // 
            // lblMzaLote
            // 
            this.lblMzaLote.AutoSize = true;
            this.lblMzaLote.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblMzaLote.Location = new System.Drawing.Point(6, 49);
            this.lblMzaLote.Name = "lblMzaLote";
            this.lblMzaLote.Size = new System.Drawing.Size(118, 18);
            this.lblMzaLote.TabIndex = 2;
            this.lblMzaLote.Text = "Manzana:  Lote: ";
            // 
            // lblDireccion
            // 
            this.lblDireccion.AutoSize = true;
            this.lblDireccion.Location = new System.Drawing.Point(6, 66);
            this.lblDireccion.Name = "lblDireccion";
            this.lblDireccion.Size = new System.Drawing.Size(25, 16);
            this.lblDireccion.TabIndex = 1;
            this.lblDireccion.Text = "Dir";
            this.lblDireccion.Visible = false;
            // 
            // lblColono
            // 
            this.lblColono.AutoSize = true;
            this.lblColono.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblColono.Location = new System.Drawing.Point(6, 27);
            this.lblColono.Name = "lblColono";
            this.lblColono.Size = new System.Drawing.Size(140, 16);
            this.lblColono.TabIndex = 0;
            this.lblColono.Text = "Raul Robles LLano";
            // 
            // groupCuota
            // 
            this.groupCuota.Controls.Add(this.panelCapturaCenter);
            this.groupCuota.Controls.Add(this.panelCapturaButtom);
            this.groupCuota.Controls.Add(this.panelCapturaTop);
            this.groupCuota.Location = new System.Drawing.Point(4, 150);
            this.groupCuota.Name = "groupCuota";
            this.groupCuota.Size = new System.Drawing.Size(826, 350);
            this.groupCuota.TabIndex = 7;
            this.groupCuota.TabStop = false;
            this.groupCuota.Text = "Datos de Captura";
            this.groupCuota.Visible = false;
            // 
            // panelCapturaCenter
            // 
            this.panelCapturaCenter.Controls.Add(this.dgPartidasR);
            this.panelCapturaCenter.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelCapturaCenter.Location = new System.Drawing.Point(3, 61);
            this.panelCapturaCenter.Name = "panelCapturaCenter";
            this.panelCapturaCenter.Size = new System.Drawing.Size(820, 125);
            this.panelCapturaCenter.TabIndex = 15;
            // 
            // dgPartidasR
            // 
            this.dgPartidasR.AllowUserToAddRows = false;
            this.dgPartidasR.AllowUserToDeleteRows = false;
            this.dgPartidasR.AllowUserToResizeColumns = false;
            this.dgPartidasR.AllowUserToResizeRows = false;
            this.dgPartidasR.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgPartidasR.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgPartidasR.Location = new System.Drawing.Point(0, 0);
            this.dgPartidasR.Name = "dgPartidasR";
            this.dgPartidasR.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgPartidasR.Size = new System.Drawing.Size(820, 125);
            this.dgPartidasR.TabIndex = 0;
            this.dgPartidasR.TabStop = false;
            // 
            // panelCapturaButtom
            // 
            this.panelCapturaButtom.Controls.Add(this.lblTotalImporte);
            this.panelCapturaButtom.Controls.Add(this.lblMoratorio);
            this.panelCapturaButtom.Controls.Add(this.lblImporte);
            this.panelCapturaButtom.Controls.Add(this.label7);
            this.panelCapturaButtom.Controls.Add(this.lblMultas);
            this.panelCapturaButtom.Controls.Add(this.btnCapturaPago);
            this.panelCapturaButtom.Controls.Add(this.label4);
            this.panelCapturaButtom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelCapturaButtom.Location = new System.Drawing.Point(3, 186);
            this.panelCapturaButtom.Name = "panelCapturaButtom";
            this.panelCapturaButtom.Size = new System.Drawing.Size(820, 161);
            this.panelCapturaButtom.TabIndex = 14;
            // 
            // btnCapturaPago
            // 
            this.btnCapturaPago.Image = global::WFPGranjas.Properties.Resources.conseguir_dinero24;
            this.btnCapturaPago.Location = new System.Drawing.Point(274, 81);
            this.btnCapturaPago.Name = "btnCapturaPago";
            this.btnCapturaPago.Size = new System.Drawing.Size(240, 32);
            this.btnCapturaPago.TabIndex = 24;
            this.btnCapturaPago.Text = "Cancelar pago";
            this.btnCapturaPago.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnCapturaPago.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCapturaPago.UseVisualStyleBackColor = true;
            this.btnCapturaPago.Click += new System.EventHandler(this.btnCapturaPago_Click);
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(628, 66);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(80, 16);
            this.label7.TabIndex = 5;
            this.label7.Text = "Total pago :";
            // 
            // lblMultas
            // 
            this.lblMultas.AutoSize = true;
            this.lblMultas.Location = new System.Drawing.Point(638, 36);
            this.lblMultas.Name = "lblMultas";
            this.lblMultas.Size = new System.Drawing.Size(74, 16);
            this.lblMultas.TabIndex = 4;
            this.lblMultas.Text = "Moratorio : ";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(650, 8);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(62, 16);
            this.label4.TabIndex = 3;
            this.label4.Text = "Importe : ";
            // 
            // panelCapturaTop
            // 
            this.panelCapturaTop.Controls.Add(this.label2);
            this.panelCapturaTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelCapturaTop.Location = new System.Drawing.Point(3, 18);
            this.panelCapturaTop.Name = "panelCapturaTop";
            this.panelCapturaTop.Size = new System.Drawing.Size(820, 43);
            this.panelCapturaTop.TabIndex = 13;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Font = new System.Drawing.Font("Microsoft Sans Serif", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.SystemColors.Window;
            this.label5.Location = new System.Drawing.Point(3, 16);
            this.label5.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(151, 15);
            this.label5.TabIndex = 14;
            this.label5.Text = "Ingrese folio de pago :";
            // 
            // txtColono
            // 
            this.txtColono.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtColono.Location = new System.Drawing.Point(162, 13);
            this.txtColono.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtColono.Name = "txtColono";
            this.txtColono.Size = new System.Drawing.Size(296, 22);
            this.txtColono.TabIndex = 12;
            this.txtColono.KeyDown += new System.Windows.Forms.KeyEventHandler(this.txtColono_KeyDown);
            this.txtColono.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtColono_KeyPress);
            // 
            // panelTop
            // 
            this.panelTop.BackColor = System.Drawing.Color.SteelBlue;
            this.panelTop.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.panelTop.Controls.Add(this.txtColono);
            this.panelTop.Controls.Add(this.label5);
            this.panelTop.Controls.Add(this.btnCapturaR);
            this.panelTop.Location = new System.Drawing.Point(5, 4);
            this.panelTop.Name = "panelTop";
            this.panelTop.Size = new System.Drawing.Size(826, 50);
            this.panelTop.TabIndex = 8;
            // 
            // btnCapturaR
            // 
            this.btnCapturaR.Image = global::WFPGranjas.Properties.Resources.expediente;
            this.btnCapturaR.Location = new System.Drawing.Point(475, 11);
            this.btnCapturaR.Name = "btnCapturaR";
            this.btnCapturaR.Size = new System.Drawing.Size(156, 26);
            this.btnCapturaR.TabIndex = 10;
            this.btnCapturaR.Text = "Buscar";
            this.btnCapturaR.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCapturaR.UseVisualStyleBackColor = true;
            this.btnCapturaR.Click += new System.EventHandler(this.btnCapturaR_Click);
            // 
            // gbDRecibo
            // 
            this.gbDRecibo.Controls.Add(this.lblFolio);
            this.gbDRecibo.Controls.Add(this.label1);
            this.gbDRecibo.Controls.Add(this.lblFechaSys);
            this.gbDRecibo.Controls.Add(this.label13);
            this.gbDRecibo.Location = new System.Drawing.Point(609, 60);
            this.gbDRecibo.Name = "gbDRecibo";
            this.gbDRecibo.Size = new System.Drawing.Size(221, 85);
            this.gbDRecibo.TabIndex = 10;
            this.gbDRecibo.TabStop = false;
            this.gbDRecibo.Visible = false;
            // 
            // lblFechaSys
            // 
            this.lblFechaSys.AutoSize = true;
            this.lblFechaSys.Location = new System.Drawing.Point(12, 54);
            this.lblFechaSys.Name = "lblFechaSys";
            this.lblFechaSys.Size = new System.Drawing.Size(72, 16);
            this.lblFechaSys.TabIndex = 11;
            this.lblFechaSys.Text = "__-__-____";
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.Location = new System.Drawing.Point(7, 40);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(135, 16);
            this.label13.TabIndex = 0;
            this.label13.Text = "Fecha del Recibo:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.Location = new System.Drawing.Point(7, 15);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(51, 16);
            this.label1.TabIndex = 12;
            this.label1.Text = "Folio :";
            // 
            // lblFolio
            // 
            this.lblFolio.AutoSize = true;
            this.lblFolio.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblFolio.Location = new System.Drawing.Point(64, 13);
            this.lblFolio.Name = "lblFolio";
            this.lblFolio.Size = new System.Drawing.Size(64, 18);
            this.lblFolio.TabIndex = 13;
            this.lblFolio.Text = "000000: ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(340, 13);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(120, 16);
            this.label2.TabIndex = 1;
            this.label2.Text = "Detalle de pago";
            // 
            // lblImporte
            // 
            this.lblImporte.AutoSize = true;
            this.lblImporte.Location = new System.Drawing.Point(708, 8);
            this.lblImporte.Name = "lblImporte";
            this.lblImporte.Size = new System.Drawing.Size(67, 16);
            this.lblImporte.TabIndex = 25;
            this.lblImporte.Text = "lblImporte";
            // 
            // lblMoratorio
            // 
            this.lblMoratorio.AutoSize = true;
            this.lblMoratorio.Location = new System.Drawing.Point(708, 36);
            this.lblMoratorio.Name = "lblMoratorio";
            this.lblMoratorio.Size = new System.Drawing.Size(45, 16);
            this.lblMoratorio.TabIndex = 26;
            this.lblMoratorio.Text = "label3";
            // 
            // lblTotalImporte
            // 
            this.lblTotalImporte.AutoSize = true;
            this.lblTotalImporte.Location = new System.Drawing.Point(708, 66);
            this.lblTotalImporte.Name = "lblTotalImporte";
            this.lblTotalImporte.Size = new System.Drawing.Size(45, 16);
            this.lblTotalImporte.TabIndex = 27;
            this.lblTotalImporte.Text = "label3";
            // 
            // frmCancelacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(834, 504);
            this.Controls.Add(this.gbDRecibo);
            this.Controls.Add(this.groupCuota);
            this.Controls.Add(this.groupDColono);
            this.Controls.Add(this.panelTop);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmCancelacion";
            this.Text = "Servicio Mantenimiento";
            this.Load += new System.EventHandler(this.frmAnticipoMto_Load);
            this.groupDColono.ResumeLayout(false);
            this.groupDColono.PerformLayout();
            this.groupCuota.ResumeLayout(false);
            this.panelCapturaCenter.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgPartidasR)).EndInit();
            this.panelCapturaButtom.ResumeLayout(false);
            this.panelCapturaButtom.PerformLayout();
            this.panelCapturaTop.ResumeLayout(false);
            this.panelCapturaTop.PerformLayout();
            this.panelTop.ResumeLayout(false);
            this.panelTop.PerformLayout();
            this.gbDRecibo.ResumeLayout(false);
            this.gbDRecibo.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.GroupBox groupDColono;
        private System.Windows.Forms.GroupBox groupCuota;
        private System.Windows.Forms.Label lblMzaLote;
        private System.Windows.Forms.Label lblColono;
        private System.Windows.Forms.Panel panelCapturaCenter;
        private System.Windows.Forms.DataGridView dgPartidasR;
        private System.Windows.Forms.Panel panelCapturaButtom;
        private System.Windows.Forms.Panel panelCapturaTop;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label lblMultas;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnCapturaPago;
        private System.Windows.Forms.Button btnCapturaR;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txtColono;
        private System.Windows.Forms.Label lblDireccion;
        private System.Windows.Forms.GroupBox gbDRecibo;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.Label lblFechaSys;
        public System.Windows.Forms.Panel panelTop;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label lblFolio;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblImporte;
        private System.Windows.Forms.Label lblTotalImporte;
        private System.Windows.Forms.Label lblMoratorio;
    }
}