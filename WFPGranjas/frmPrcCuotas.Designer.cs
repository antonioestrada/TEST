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
            this.lblTitleCuota = new System.Windows.Forms.Label();
            this.pbAgua = new System.Windows.Forms.PictureBox();
            this.pbManto = new System.Windows.Forms.PictureBox();
            this.lblInfoMsj = new System.Windows.Forms.Label();
            this.lblInfo = new System.Windows.Forms.Label();
            this.cmbAnios = new System.Windows.Forms.ComboBox();
            this.progressBar1 = new System.Windows.Forms.ProgressBar();
            this.btnGenCuotas = new System.Windows.Forms.Button();
            this.cmbPeriodos = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.lblInd = new System.Windows.Forms.Label();
            this.gbEstatus = new System.Windows.Forms.GroupBox();
            this.bwProgress = new System.ComponentModel.BackgroundWorker();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbAgua)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbManto)).BeginInit();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.BackColor = System.Drawing.Color.LightGreen;
            this.groupBox1.Controls.Add(this.lblTitleCuota);
            this.groupBox1.Controls.Add(this.pbAgua);
            this.groupBox1.Controls.Add(this.pbManto);
            this.groupBox1.Controls.Add(this.lblInfoMsj);
            this.groupBox1.Controls.Add(this.lblInfo);
            this.groupBox1.Controls.Add(this.cmbAnios);
            this.groupBox1.Controls.Add(this.progressBar1);
            this.groupBox1.Controls.Add(this.btnGenCuotas);
            this.groupBox1.Controls.Add(this.cmbPeriodos);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.Controls.Add(this.lblInd);
            this.groupBox1.Controls.Add(this.gbEstatus);
            this.groupBox1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox1.Location = new System.Drawing.Point(9, 9);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(551, 225);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            // 
            // lblTitleCuota
            // 
            this.lblTitleCuota.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblTitleCuota.Location = new System.Drawing.Point(6, 28);
            this.lblTitleCuota.Name = "lblTitleCuota";
            this.lblTitleCuota.Size = new System.Drawing.Size(539, 16);
            this.lblTitleCuota.TabIndex = 12;
            this.lblTitleCuota.Text = "GENERACION DE CUOTAS DE MANTENIMIENTO";
            this.lblTitleCuota.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // pbAgua
            // 
            this.pbAgua.Image = global::WFPGranjas.Properties.Resources.riego;
            this.pbAgua.Location = new System.Drawing.Point(123, 59);
            this.pbAgua.Name = "pbAgua";
            this.pbAgua.Size = new System.Drawing.Size(35, 40);
            this.pbAgua.TabIndex = 11;
            this.pbAgua.TabStop = false;
            // 
            // pbManto
            // 
            this.pbManto.Image = global::WFPGranjas.Properties.Resources.brote;
            this.pbManto.Location = new System.Drawing.Point(123, 59);
            this.pbManto.Name = "pbManto";
            this.pbManto.Size = new System.Drawing.Size(35, 40);
            this.pbManto.TabIndex = 10;
            this.pbManto.TabStop = false;
            // 
            // lblInfoMsj
            // 
            this.lblInfoMsj.BackColor = System.Drawing.Color.Azure;
            this.lblInfoMsj.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblInfoMsj.Location = new System.Drawing.Point(101, 142);
            this.lblInfoMsj.Name = "lblInfoMsj";
            this.lblInfoMsj.Size = new System.Drawing.Size(350, 16);
            this.lblInfoMsj.TabIndex = 9;
            this.lblInfoMsj.Text = "Inicia proceso de Generacion ...";
            this.lblInfoMsj.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblInfoMsj.Visible = false;
            // 
            // lblInfo
            // 
            this.lblInfo.AutoSize = true;
            this.lblInfo.BackColor = System.Drawing.Color.Azure;
            this.lblInfo.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblInfo.Location = new System.Drawing.Point(265, 162);
            this.lblInfo.Name = "lblInfo";
            this.lblInfo.Size = new System.Drawing.Size(29, 16);
            this.lblInfo.TabIndex = 8;
            this.lblInfo.Text = "0%";
            this.lblInfo.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            this.lblInfo.Visible = false;
            // 
            // cmbAnios
            // 
            this.cmbAnios.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbAnios.Enabled = false;
            this.cmbAnios.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbAnios.FormattingEnabled = true;
            this.cmbAnios.Location = new System.Drawing.Point(356, 66);
            this.cmbAnios.Name = "cmbAnios";
            this.cmbAnios.Size = new System.Drawing.Size(72, 24);
            this.cmbAnios.TabIndex = 7;
            // 
            // progressBar1
            // 
            this.progressBar1.Location = new System.Drawing.Point(153, 184);
            this.progressBar1.Name = "progressBar1";
            this.progressBar1.Size = new System.Drawing.Size(248, 21);
            this.progressBar1.TabIndex = 6;
            this.progressBar1.Visible = false;
            // 
            // btnGenCuotas
            // 
            this.btnGenCuotas.Font = new System.Drawing.Font("Microsoft Sans Serif", 11.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnGenCuotas.Image = global::WFPGranjas.Properties.Resources.velocimetro;
            this.btnGenCuotas.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnGenCuotas.Location = new System.Drawing.Point(184, 107);
            this.btnGenCuotas.Name = "btnGenCuotas";
            this.btnGenCuotas.Size = new System.Drawing.Size(188, 28);
            this.btnGenCuotas.TabIndex = 5;
            this.btnGenCuotas.Text = "Generar Cuotas";
            this.btnGenCuotas.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnGenCuotas.UseVisualStyleBackColor = true;
            this.btnGenCuotas.Click += new System.EventHandler(this.button1_Click);
            // 
            // cmbPeriodos
            // 
            this.cmbPeriodos.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
            this.cmbPeriodos.Enabled = false;
            this.cmbPeriodos.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.cmbPeriodos.FormattingEnabled = true;
            this.cmbPeriodos.Location = new System.Drawing.Point(199, 66);
            this.cmbPeriodos.Name = "cmbPeriodos";
            this.cmbPeriodos.Size = new System.Drawing.Size(109, 24);
            this.cmbPeriodos.TabIndex = 4;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(318, 70);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(37, 16);
            this.label2.TabIndex = 3;
            this.label2.Text = "AÑO";
            // 
            // lblInd
            // 
            this.lblInd.AutoSize = true;
            this.lblInd.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F);
            this.lblInd.Location = new System.Drawing.Point(163, 70);
            this.lblInd.Name = "lblInd";
            this.lblInd.Size = new System.Drawing.Size(37, 16);
            this.lblInd.TabIndex = 0;
            this.lblInd.Text = "MES";
            // 
            // gbEstatus
            // 
            this.gbEstatus.BackColor = System.Drawing.Color.Azure;
            this.gbEstatus.Location = new System.Drawing.Point(75, 141);
            this.gbEstatus.Name = "gbEstatus";
            this.gbEstatus.Size = new System.Drawing.Size(403, 75);
            this.gbEstatus.TabIndex = 13;
            this.gbEstatus.TabStop = false;
            this.gbEstatus.Visible = false;
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
            this.ClientSize = new System.Drawing.Size(568, 237);
            this.Controls.Add(this.groupBox1);
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "frmPrcCuotas";
            this.Text = "Generacion de Cuotas del Mes";
            this.Load += new System.EventHandler(this.frmPrcCuotas_Load);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pbAgua)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.pbManto)).EndInit();
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
        private System.Windows.Forms.Label lblTitleCuota;
        private System.Windows.Forms.PictureBox pbAgua;
        private System.Windows.Forms.PictureBox pbManto;
        private System.Windows.Forms.GroupBox gbEstatus;
    }
}