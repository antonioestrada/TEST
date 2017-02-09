namespace WFPGranjas
{
    partial class rptReciboAgua
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
            this.SuspendLayout();
            // 
            // crvLRecibos
            // 
            this.crvLRecibos.ActiveViewIndex = -1;
            this.crvLRecibos.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.crvLRecibos.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crvLRecibos.Cursor = System.Windows.Forms.Cursors.Default;
            this.crvLRecibos.Location = new System.Drawing.Point(2, 1);
            this.crvLRecibos.Name = "crvLRecibos";
            this.crvLRecibos.Size = new System.Drawing.Size(732, 259);
            this.crvLRecibos.TabIndex = 1;
            this.crvLRecibos.ToolPanelView = CrystalDecisions.Windows.Forms.ToolPanelViewType.None;
            // 
            // rptReciboAgua
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(746, 262);
            this.Controls.Add(this.crvLRecibos);
            this.Name = "rptReciboAgua";
            this.Text = "rptReciboAgua";
            this.Load += new System.EventHandler(this.rptReciboAgua_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer crvLRecibos;
    }
}