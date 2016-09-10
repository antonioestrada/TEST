namespace WFPGranjas
{
    partial class frmIngresos
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.panelTop = new System.Windows.Forms.Panel();
            this.panelBusca = new System.Windows.Forms.Panel();
            this.label3 = new System.Windows.Forms.Label();
            this.maskedTextBox1 = new System.Windows.Forms.MaskedTextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.dateTimePicker1 = new System.Windows.Forms.DateTimePicker();
            this.lblColono = new System.Windows.Forms.Label();
            this.lblDireccion = new System.Windows.Forms.Label();
            this.lblMzaLote = new System.Windows.Forms.Label();
            this.panelCapturaTop = new System.Windows.Forms.Panel();
            this.comboServicios = new System.Windows.Forms.ComboBox();
            this.lblEtiquetaCuota = new System.Windows.Forms.Label();
            this.panelCapturaButtom = new System.Windows.Forms.Panel();
            this.panelCapturaCenter = new System.Windows.Forms.Panel();
            this.dgPartidasR = new System.Windows.Forms.DataGridView();
            this.button2 = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btnCapturaR = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.panelTop.SuspendLayout();
            this.panelBusca.SuspendLayout();
            this.panelCapturaTop.SuspendLayout();
            this.panelCapturaCenter.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgPartidasR)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.lblMzaLote);
            this.groupBox1.Controls.Add(this.lblDireccion);
            this.groupBox1.Controls.Add(this.lblColono);
            this.groupBox1.Location = new System.Drawing.Point(350, 59);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(330, 100);
            this.groupBox1.TabIndex = 6;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Datos del Colono";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.panelCapturaCenter);
            this.groupBox2.Controls.Add(this.panelCapturaButtom);
            this.groupBox2.Controls.Add(this.panelCapturaTop);
            this.groupBox2.Location = new System.Drawing.Point(12, 165);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(668, 270);
            this.groupBox2.TabIndex = 7;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Datos de Captura";
            // 
            // panelTop
            // 
            this.panelTop.BackColor = System.Drawing.Color.MistyRose;
            this.panelTop.Controls.Add(this.panelBusca);
            this.panelTop.Controls.Add(this.btnCapturaR);
            this.panelTop.Controls.Add(this.maskedTextBox1);
            this.panelTop.Controls.Add(this.label2);
            this.panelTop.Controls.Add(this.label1);
            this.panelTop.Controls.Add(this.dateTimePicker1);
            this.panelTop.Location = new System.Drawing.Point(12, 4);
            this.panelTop.Name = "panelTop";
            this.panelTop.Size = new System.Drawing.Size(668, 50);
            this.panelTop.TabIndex = 8;
            // 
            // panelBusca
            // 
            this.panelBusca.BackColor = System.Drawing.Color.MistyRose;
            this.panelBusca.Controls.Add(this.label3);
            this.panelBusca.Controls.Add(this.pictureBox1);
            this.panelBusca.Cursor = System.Windows.Forms.Cursors.Hand;
            this.panelBusca.Location = new System.Drawing.Point(391, 1);
            this.panelBusca.Name = "panelBusca";
            this.panelBusca.Size = new System.Drawing.Size(43, 49);
            this.panelBusca.TabIndex = 11;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.MistyRose;
            this.label3.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.Color.MidnightBlue;
            this.label3.Location = new System.Drawing.Point(1, 29);
            this.label3.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(40, 13);
            this.label3.TabIndex = 3;
            this.label3.Text = "Buscar";
            // 
            // maskedTextBox1
            // 
            this.maskedTextBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.maskedTextBox1.Location = new System.Drawing.Point(331, 13);
            this.maskedTextBox1.Mask = "00-00a";
            this.maskedTextBox1.Name = "maskedTextBox1";
            this.maskedTextBox1.Size = new System.Drawing.Size(54, 22);
            this.maskedTextBox1.TabIndex = 9;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.MistyRose;
            this.label2.Location = new System.Drawing.Point(222, 20);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(102, 16);
            this.label2.TabIndex = 8;
            this.label2.Text = "Manzana / Lote:";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.MistyRose;
            this.label1.Location = new System.Drawing.Point(16, 18);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(49, 16);
            this.label1.TabIndex = 7;
            this.label1.Text = "Fecha:";
            // 
            // dateTimePicker1
            // 
            this.dateTimePicker1.Format = System.Windows.Forms.DateTimePickerFormat.Short;
            this.dateTimePicker1.Location = new System.Drawing.Point(74, 14);
            this.dateTimePicker1.Margin = new System.Windows.Forms.Padding(4);
            this.dateTimePicker1.Name = "dateTimePicker1";
            this.dateTimePicker1.Size = new System.Drawing.Size(140, 22);
            this.dateTimePicker1.TabIndex = 6;
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
            // lblDireccion
            // 
            this.lblDireccion.AutoSize = true;
            this.lblDireccion.Location = new System.Drawing.Point(6, 47);
            this.lblDireccion.Name = "lblDireccion";
            this.lblDireccion.Size = new System.Drawing.Size(291, 16);
            this.lblDireccion.TabIndex = 1;
            this.lblDireccion.Text = "Gregorio Moreno SN, Col. Adolfo Lopez Mateos";
            // 
            // lblMzaLote
            // 
            this.lblMzaLote.AutoSize = true;
            this.lblMzaLote.Location = new System.Drawing.Point(6, 63);
            this.lblMzaLote.Name = "lblMzaLote";
            this.lblMzaLote.Size = new System.Drawing.Size(121, 16);
            this.lblMzaLote.TabIndex = 2;
            this.lblMzaLote.Text = "Manzana: I Lote: 25";
            // 
            // panelCapturaTop
            // 
            this.panelCapturaTop.Controls.Add(this.button2);
            this.panelCapturaTop.Controls.Add(this.comboServicios);
            this.panelCapturaTop.Controls.Add(this.lblEtiquetaCuota);
            this.panelCapturaTop.Dock = System.Windows.Forms.DockStyle.Top;
            this.panelCapturaTop.Location = new System.Drawing.Point(3, 18);
            this.panelCapturaTop.Name = "panelCapturaTop";
            this.panelCapturaTop.Size = new System.Drawing.Size(662, 40);
            this.panelCapturaTop.TabIndex = 13;
            // 
            // comboServicios
            // 
            this.comboServicios.FormattingEnabled = true;
            this.comboServicios.Location = new System.Drawing.Point(307, 6);
            this.comboServicios.Name = "comboServicios";
            this.comboServicios.Size = new System.Drawing.Size(181, 24);
            this.comboServicios.TabIndex = 14;
            // 
            // lblEtiquetaCuota
            // 
            this.lblEtiquetaCuota.AutoSize = true;
            this.lblEtiquetaCuota.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblEtiquetaCuota.Location = new System.Drawing.Point(196, 9);
            this.lblEtiquetaCuota.Name = "lblEtiquetaCuota";
            this.lblEtiquetaCuota.Size = new System.Drawing.Size(52, 16);
            this.lblEtiquetaCuota.TabIndex = 13;
            this.lblEtiquetaCuota.Text = "Cuota:";
            // 
            // panelCapturaButtom
            // 
            this.panelCapturaButtom.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.panelCapturaButtom.Location = new System.Drawing.Point(3, 170);
            this.panelCapturaButtom.Name = "panelCapturaButtom";
            this.panelCapturaButtom.Size = new System.Drawing.Size(662, 97);
            this.panelCapturaButtom.TabIndex = 14;
            // 
            // panelCapturaCenter
            // 
            this.panelCapturaCenter.Controls.Add(this.dgPartidasR);
            this.panelCapturaCenter.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panelCapturaCenter.Location = new System.Drawing.Point(3, 58);
            this.panelCapturaCenter.Name = "panelCapturaCenter";
            this.panelCapturaCenter.Size = new System.Drawing.Size(662, 112);
            this.panelCapturaCenter.TabIndex = 15;
            // 
            // dgPartidasR
            // 
            this.dgPartidasR.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgPartidasR.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dgPartidasR.Location = new System.Drawing.Point(0, 0);
            this.dgPartidasR.Name = "dgPartidasR";
            this.dgPartidasR.Size = new System.Drawing.Size(662, 112);
            this.dgPartidasR.TabIndex = 0;
            // 
            // button2
            // 
            this.button2.Image = global::WFPGranjas.Properties.Resources.agregar_notas;
            this.button2.Location = new System.Drawing.Point(502, 3);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(148, 28);
            this.button2.TabIndex = 15;
            this.button2.Text = "Agregar Renglon";
            this.button2.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.button2.UseVisualStyleBackColor = true;
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.MistyRose;
            this.pictureBox1.BackgroundImage = global::WFPGranjas.Properties.Resources.buscando_usuario;
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.pictureBox1.Location = new System.Drawing.Point(3, 3);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(37, 35);
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // btnCapturaR
            // 
            this.btnCapturaR.Image = global::WFPGranjas.Properties.Resources.expediente;
            this.btnCapturaR.Location = new System.Drawing.Point(505, 11);
            this.btnCapturaR.Name = "btnCapturaR";
            this.btnCapturaR.Size = new System.Drawing.Size(148, 28);
            this.btnCapturaR.TabIndex = 10;
            this.btnCapturaR.Text = "Capturar Recibo";
            this.btnCapturaR.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCapturaR.UseVisualStyleBackColor = true;
            // 
            // frmIngresos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(692, 460);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.panelTop);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmIngresos";
            this.Text = "frmIngresos";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.panelTop.ResumeLayout(false);
            this.panelTop.PerformLayout();
            this.panelBusca.ResumeLayout(false);
            this.panelBusca.PerformLayout();
            this.panelCapturaTop.ResumeLayout(false);
            this.panelCapturaTop.PerformLayout();
            this.panelCapturaCenter.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dgPartidasR)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Panel panelTop;
        private System.Windows.Forms.Panel panelBusca;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btnCapturaR;
        private System.Windows.Forms.MaskedTextBox maskedTextBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DateTimePicker dateTimePicker1;
        private System.Windows.Forms.Label lblMzaLote;
        private System.Windows.Forms.Label lblDireccion;
        private System.Windows.Forms.Label lblColono;
        private System.Windows.Forms.Panel panelCapturaCenter;
        private System.Windows.Forms.DataGridView dgPartidasR;
        private System.Windows.Forms.Panel panelCapturaButtom;
        private System.Windows.Forms.Panel panelCapturaTop;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.ComboBox comboServicios;
        private System.Windows.Forms.Label lblEtiquetaCuota;
    }
}