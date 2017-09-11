namespace WFPGranjas
{
    partial class frmSDKContableVista
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.cmbMes = new System.Windows.Forms.ComboBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.cmbAnio = new System.Windows.Forms.ComboBox();
            this.button1 = new System.Windows.Forms.Button();
            this.btnVerificar = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.dgCuotas = new System.Windows.Forms.DataGridView();
            this.btnCerrarEmpresa = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.btnAbrirEmpresa = new System.Windows.Forms.Button();
            this.txtAliasEmpresa = new System.Windows.Forms.TextBox();
            this.lblEstatus = new System.Windows.Forms.Label();
            this.bMtto_Test = new System.Windows.Forms.Button();
            this.bArray = new System.Windows.Forms.Button();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgCuotas)).BeginInit();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.DarkTurquoise;
            this.panel1.Controls.Add(this.label1);
            this.panel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.panel1.Location = new System.Drawing.Point(0, 0);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(886, 41);
            this.panel1.TabIndex = 0;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.Control;
            this.label1.Location = new System.Drawing.Point(639, 11);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(235, 16);
            this.label1.TabIndex = 0;
            this.label1.Text = "SDK Contable: Polizas  de Diario";
            // 
            // cmbMes
            // 
            this.cmbMes.FormattingEnabled = true;
            this.cmbMes.Location = new System.Drawing.Point(37, 63);
            this.cmbMes.Name = "cmbMes";
            this.cmbMes.Size = new System.Drawing.Size(121, 21);
            this.cmbMes.TabIndex = 1;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(4, 66);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(33, 13);
            this.label2.TabIndex = 2;
            this.label2.Text = "MES:";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(163, 66);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(65, 13);
            this.label3.TabIndex = 4;
            this.label3.Text = "EJERCICIO:";
            // 
            // cmbAnio
            // 
            this.cmbAnio.FormattingEnabled = true;
            this.cmbAnio.Location = new System.Drawing.Point(228, 63);
            this.cmbAnio.Name = "cmbAnio";
            this.cmbAnio.Size = new System.Drawing.Size(80, 21);
            this.cmbAnio.TabIndex = 3;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(315, 62);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 5;
            this.button1.Text = "Buscar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // btnVerificar
            // 
            this.btnVerificar.Location = new System.Drawing.Point(723, 327);
            this.btnVerificar.Name = "btnVerificar";
            this.btnVerificar.Size = new System.Drawing.Size(75, 23);
            this.btnVerificar.TabIndex = 7;
            this.btnVerificar.Text = "Verificar";
            this.btnVerificar.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(804, 327);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 8;
            this.button2.Text = "Procesar";
            this.button2.UseVisualStyleBackColor = true;
            this.button2.Click += new System.EventHandler(this.button2_Click);
            // 
            // dgCuotas
            // 
            this.dgCuotas.AllowUserToAddRows = false;
            this.dgCuotas.AllowUserToDeleteRows = false;
            this.dgCuotas.AllowUserToResizeRows = false;
            this.dgCuotas.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgCuotas.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgCuotas.Location = new System.Drawing.Point(7, 90);
            this.dgCuotas.MultiSelect = false;
            this.dgCuotas.Name = "dgCuotas";
            this.dgCuotas.ReadOnly = true;
            this.dgCuotas.RowHeadersVisible = false;
            this.dgCuotas.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgCuotas.Size = new System.Drawing.Size(872, 231);
            this.dgCuotas.TabIndex = 9;
            this.dgCuotas.TabStop = false;
            // 
            // btnCerrarEmpresa
            // 
            this.btnCerrarEmpresa.Location = new System.Drawing.Point(433, 327);
            this.btnCerrarEmpresa.Name = "btnCerrarEmpresa";
            this.btnCerrarEmpresa.Size = new System.Drawing.Size(102, 23);
            this.btnCerrarEmpresa.TabIndex = 13;
            this.btnCerrarEmpresa.Text = "Cerrar Empresa";
            this.btnCerrarEmpresa.UseVisualStyleBackColor = true;
            this.btnCerrarEmpresa.Click += new System.EventHandler(this.btnCerrarEmpresa_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(5, 333);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(48, 13);
            this.label4.TabIndex = 12;
            this.label4.Text = "Empresa";
            // 
            // btnAbrirEmpresa
            // 
            this.btnAbrirEmpresa.Location = new System.Drawing.Point(325, 328);
            this.btnAbrirEmpresa.Name = "btnAbrirEmpresa";
            this.btnAbrirEmpresa.Size = new System.Drawing.Size(102, 23);
            this.btnAbrirEmpresa.TabIndex = 11;
            this.btnAbrirEmpresa.Text = "Abrir Empresa";
            this.btnAbrirEmpresa.UseVisualStyleBackColor = true;
            this.btnAbrirEmpresa.Click += new System.EventHandler(this.btnAbrirEmpresa_Click);
            // 
            // txtAliasEmpresa
            // 
            this.txtAliasEmpresa.Location = new System.Drawing.Point(59, 330);
            this.txtAliasEmpresa.Name = "txtAliasEmpresa";
            this.txtAliasEmpresa.Size = new System.Drawing.Size(264, 20);
            this.txtAliasEmpresa.TabIndex = 10;
            this.txtAliasEmpresa.Text = "ctAsociados";
            // 
            // lblEstatus
            // 
            this.lblEstatus.AutoSize = true;
            this.lblEstatus.Location = new System.Drawing.Point(684, 71);
            this.lblEstatus.Name = "lblEstatus";
            this.lblEstatus.Size = new System.Drawing.Size(35, 13);
            this.lblEstatus.TabIndex = 14;
            this.lblEstatus.Text = "label2";
            // 
            // bMtto_Test
            // 
            this.bMtto_Test.Location = new System.Drawing.Point(503, 61);
            this.bMtto_Test.Name = "bMtto_Test";
            this.bMtto_Test.Size = new System.Drawing.Size(141, 23);
            this.bMtto_Test.TabIndex = 15;
            this.bMtto_Test.Text = "Crear Mantenimiento";
            this.bMtto_Test.UseVisualStyleBackColor = true;
            this.bMtto_Test.Click += new System.EventHandler(this.bMtto_Test_Click);
            // 
            // bArray
            // 
            this.bArray.Location = new System.Drawing.Point(541, 327);
            this.bArray.Name = "bArray";
            this.bArray.Size = new System.Drawing.Size(75, 23);
            this.bArray.TabIndex = 16;
            this.bArray.Text = "arreglos";
            this.bArray.UseVisualStyleBackColor = true;
            this.bArray.Click += new System.EventHandler(this.bArray_Click);
            // 
            // frmSDKContableVista
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(886, 354);
            this.Controls.Add(this.bArray);
            this.Controls.Add(this.bMtto_Test);
            this.Controls.Add(this.lblEstatus);
            this.Controls.Add(this.btnCerrarEmpresa);
            this.Controls.Add(this.label4);
            this.Controls.Add(this.btnAbrirEmpresa);
            this.Controls.Add(this.txtAliasEmpresa);
            this.Controls.Add(this.dgCuotas);
            this.Controls.Add(this.button2);
            this.Controls.Add(this.btnVerificar);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.label3);
            this.Controls.Add(this.cmbAnio);
            this.Controls.Add(this.label2);
            this.Controls.Add(this.cmbMes);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.Name = "frmSDKContableVista";
            this.Load += new System.EventHandler(this.frmSDKContableVista_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgCuotas)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.ComboBox cmbMes;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.ComboBox cmbAnio;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Button btnVerificar;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button btnCerrarEmpresa;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Button btnAbrirEmpresa;
        private System.Windows.Forms.TextBox txtAliasEmpresa;
        public System.Windows.Forms.Label lblEstatus;
        private System.Windows.Forms.Button bMtto_Test;
        private System.Windows.Forms.Button bArray;
        public System.Windows.Forms.DataGridView dgCuotas;
    }
}