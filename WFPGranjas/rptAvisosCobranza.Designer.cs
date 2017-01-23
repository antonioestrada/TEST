namespace WFPGranjas
{
    partial class rptAvisosCobranza
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
            this.crvLRecibos = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.button1 = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // crvLRecibos
            // 
            this.crvLRecibos.ActiveViewIndex = -1;
            this.crvLRecibos.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crvLRecibos.Cursor = System.Windows.Forms.Cursors.Default;
            this.crvLRecibos.Dock = System.Windows.Forms.DockStyle.Fill;
            this.crvLRecibos.Location = new System.Drawing.Point(0, 0);
            this.crvLRecibos.Name = "crvLRecibos";
            this.crvLRecibos.Size = new System.Drawing.Size(761, 261);
            this.crvLRecibos.TabIndex = 2;
            this.crvLRecibos.ToolPanelView = CrystalDecisions.Windows.Forms.ToolPanelViewType.None;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(646, 23);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 3;
            this.button1.Text = "Genera";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // rptAvisosCobranza
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(761, 261);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.crvLRecibos);
            this.Name = "rptAvisosCobranza";
            this.Text = "rptAvisosCobranza";
            this.Load += new System.EventHandler(this.rptAvisosCobranza_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer crvLRecibos;
        private System.Windows.Forms.Button button1;
    }
}