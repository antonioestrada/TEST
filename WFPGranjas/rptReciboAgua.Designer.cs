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
            this.crvLReciboAgua = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.btnFiltrar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // crvLReciboAgua
            // 
            this.crvLReciboAgua.ActiveViewIndex = -1;
            this.crvLReciboAgua.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.crvLReciboAgua.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crvLReciboAgua.Cursor = System.Windows.Forms.Cursors.Default;
            this.crvLReciboAgua.Location = new System.Drawing.Point(2, 38);
            this.crvLReciboAgua.Name = "crvLReciboAgua";
            this.crvLReciboAgua.Size = new System.Drawing.Size(732, 221);
            this.crvLReciboAgua.TabIndex = 1;
            this.crvLReciboAgua.ToolPanelView = CrystalDecisions.Windows.Forms.ToolPanelViewType.None;
            // 
            // btnFiltrar
            // 
            this.btnFiltrar.Image = global::WFPGranjas.Properties.Resources.filtrar;
            this.btnFiltrar.ImageAlign = System.Drawing.ContentAlignment.BottomCenter;
            this.btnFiltrar.Location = new System.Drawing.Point(13, 5);
            this.btnFiltrar.Margin = new System.Windows.Forms.Padding(4);
            this.btnFiltrar.Name = "btnFiltrar";
            this.btnFiltrar.Size = new System.Drawing.Size(28, 26);
            this.btnFiltrar.TabIndex = 17;
            this.btnFiltrar.UseVisualStyleBackColor = true;
            this.btnFiltrar.Click += new System.EventHandler(this.btnFiltrar_Click);
            // 
            // rptReciboAgua
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(746, 261);
            this.Controls.Add(this.btnFiltrar);
            this.Controls.Add(this.crvLReciboAgua);
            this.Name = "rptReciboAgua";
            this.Text = "rptReciboAgua";
            this.ResumeLayout(false);

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer crvLReciboAgua;
        private System.Windows.Forms.Button btnFiltrar;
    }
}