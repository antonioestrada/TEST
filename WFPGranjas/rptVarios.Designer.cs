namespace WFPGranjas
{
    partial class rptVarios
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
            this.crvVarios = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.SuspendLayout();
            // 
            // crvVarios
            // 
            this.crvVarios.ActiveViewIndex = -1;
            this.crvVarios.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.crvVarios.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crvVarios.Cursor = System.Windows.Forms.Cursors.Default;
            this.crvVarios.Location = new System.Drawing.Point(2, 0);
            this.crvVarios.Name = "crvVarios";
            this.crvVarios.Size = new System.Drawing.Size(725, 259);
            this.crvVarios.TabIndex = 2;
            this.crvVarios.ToolPanelView = CrystalDecisions.Windows.Forms.ToolPanelViewType.None;
            // 
            // rptVarios
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(728, 261);
            this.Controls.Add(this.crvVarios);
            this.Name = "rptVarios";
            this.Text = "rptVarios";
            this.Load += new System.EventHandler(this.rptVarios_Load);
            this.ResumeLayout(false);

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer crvVarios;
    }
}