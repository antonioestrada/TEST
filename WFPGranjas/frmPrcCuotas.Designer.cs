namespace WFPGranjas
{
    partial class frmPrcCuotas
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
            this.lblInfoMsj = new System.Windows.Forms.Label();
            this.lblInfo = new System.Windows.Forms.Label();
            this.cmbAnios = new System.Windows.Forms.ComboBox();
            this.progressBar1 = new System.Windows.Forms.ProgressBar();
            this.btnGenCuotas = new System.Windows.Forms.Button();
            this.cmbPeriodos = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.lblInd = new System.Windows.Forms.Label();
            this.bwProgress = new System.ComponentModel.BackgroundWorker();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.LightSkyBlue;
            this.groupBox1.Controls.Add(this.lblInfoMsj);
            this.groupBox1.Controls.Add(this.lblInfo);
            this.groupBox1.Controls.Add(this.cmbAnios);
            this.groupBox1.Controls.Add(this.progressBar1);
            this.groupBox1.Controls.Add(this.btnGenCuotas);
            this.groupBox1.Controls.Add(this.cmbPeriodos);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.lblInd);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F);
            this.groupBox1.Location = new System.Drawing.Point(27, 20);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(551, 210);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Mes de Aplicacion";
            // 
            // lblInfoMsj
            // 
            this.lblInfoMsj.AutoSize = true;
            this.lblInfoMsj.Location = new System.Drawing.Point(203, 141);
            this.lblInfoMsj.Name = "lblInfoMsj";
            this.lblInfoMsj.Size = new System.Drawing.Size(196, 16);
            this.lblInfoMsj.TabIndex = 9;
            this.lblInfoMsj.Text = "Inicia proceso de Generacion ...";
            this.lblInfoMsj.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblInfoMsj.Visible = false;
            // 
            // lblInfo
            // 
            this.lblInfo.AutoSize = true;
            this.lblInfo.Location = new System.Drawing.Point(282, 157);
            this.lblInfo.Name = "lblInfo";
            this.lblInfo.Size = new System.Drawing.Size(27, 16);
            this.lblInfo.TabIndex = 8;
            this.lblInfo.Text = "0%";
            this.lblInfo.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblInfo.Visible = false;
            // 
            // cmbAnios
            // 
            this.cmbAnios.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbAnios.FormattingEnabled = true;
            this.cmbAnios.Location = new System.Drawing.Point(424, 47);
            this.cmbAnios.Name = "cmbAnios";
            this.cmbAnios.Size = new System.Drawing.Size(72, 24);
            this.cmbAnios.TabIndex = 7;
            // 
            // progressBar1
            // 
            this.progressBar1.Location = new System.Drawing.Point(170, 175);
            this.progressBar1.Name = "progressBar1";
            this.progressBar1.Size = new System.Drawing.Size(248, 21);
            this.progressBar1.TabIndex = 6;
            this.progressBar1.Visible = false;
            // 
            // btnGenCuotas
            // 
            this.btnGenCuotas.Image = global::WFPGranjas.Properties.Resources.velocimetro;
            this.btnGenCuotas.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnGenCuotas.Location = new System.Drawing.Point(206, 100);
            this.btnGenCuotas.Name = "btnGenCuotas";
            this.btnGenCuotas.Size = new System.Drawing.Size(188, 25);
            this.btnGenCuotas.TabIndex = 5;
            this.btnGenCuotas.Text = "Generar Cuotas";
            this.btnGenCuotas.UseVisualStyleBackColor = true;
            this.btnGenCuotas.Click += new System.EventHandler(this.button1_Click);
            // 
            // cmbPeriodos
            // 
            this.cmbPeriodos.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbPeriodos.FormattingEnabled = true;
            this.cmbPeriodos.Location = new System.Drawing.Point(272, 49);
            this.cmbPeriodos.Name = "cmbPeriodos";
            this.cmbPeriodos.Size = new System.Drawing.Size(101, 24);
            this.cmbPeriodos.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(394, 56);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(24, 16);
            this.label2.TabIndex = 3;
            this.label2.Text = "de";
            // 
            // lblInd
            // 
            this.lblInd.AutoSize = true;
            this.lblInd.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F);
            this.lblInd.Location = new System.Drawing.Point(6, 55);
            this.lblInd.Name = "lblInd";
            this.lblInd.Size = new System.Drawing.Size(265, 16);
            this.lblInd.TabIndex = 0;
            this.lblInd.Text = "Generar Cuotas de Mantenimiento del Mes ";
            // 
            // bwProgress
            // 
            this.bwProgress.WorkerReportsProgress = true;
            this.bwProgress.DoWork += new System.ComponentModel.DoWorkEventHandler(this.bwProgress_DoWork);
            this.bwProgress.ProgressChanged += new System.ComponentModel.ProgressChangedEventHandler(this.bwProgress_ProgressChanged);
            this.bwProgress.RunWorkerCompleted += new System.ComponentModel.RunWorkerCompletedEventHandler(this.bwProgress_RunWorkerCompleted);
            // 
            // frmPrcCuotas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.ButtonHighlight;
            this.ClientSize = new System.Drawing.Size(605, 255);
            this.Controls.Add(this.groupBox1);
            this.Name = "frmPrcCuotas";
            this.Text = "Generacion de Cuotas del Mes";
            this.Load += new System.EventHandler(this.frmPrcCuotas_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.ComboBox cmbPeriodos;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label lblInd;
        private System.Windows.Forms.Button btnGenCuotas;
        private System.ComponentModel.BackgroundWorker bwProgress;
        private System.Windows.Forms.ProgressBar progressBar1;
        private System.Windows.Forms.ComboBox cmbAnios;
        private System.Windows.Forms.Label lblInfo;
        private System.Windows.Forms.Label lblInfoMsj;
    }
}