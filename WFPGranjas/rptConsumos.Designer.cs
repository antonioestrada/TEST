namespace WFPGranjas
{
    partial class rptConsumos
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
            this.crvConsumos = new CrystalDecisions.Windows.Forms.CrystalReportViewer();
            this.btnFiltrar = new System.Windows.Forms.Button();
            this.SuspendLayout();
            // 
            // crvConsumos
            // 
            this.crvConsumos.ActiveViewIndex = -1;
            this.crvConsumos.Anchor = ((System.Windows.Forms.AnchorStyles)((((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom) 
            | System.Windows.Forms.AnchorStyles.Left) 
            | System.Windows.Forms.AnchorStyles.Right)));
            this.crvConsumos.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.crvConsumos.Cursor = System.Windows.Forms.Cursors.Default;
            this.crvConsumos.Location = new System.Drawing.Point(1, 52);
            this.crvConsumos.Name = "crvConsumos";
            this.crvConsumos.Size = new System.Drawing.Size(862, 288);
            this.crvConsumos.TabIndex = 1;
            this.crvConsumos.ToolPanelView = CrystalDecisions.Windows.Forms.ToolPanelViewType.None;
            // 
            // btnFiltrar
            // 
            this.btnFiltrar.Image = global::WFPGranjas.Properties.Resources.filtrar;
            this.btnFiltrar.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
            this.btnFiltrar.Location = new System.Drawing.Point(13, 13);
            this.btnFiltrar.Margin = new System.Windows.Forms.Padding(4);
            this.btnFiltrar.Name = "btnFiltrar";
            this.btnFiltrar.Size = new System.Drawing.Size(116, 32);
            this.btnFiltrar.TabIndex = 17;
            this.btnFiltrar.Text = "Generar Consulta";
            this.btnFiltrar.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnFiltrar.UseVisualStyleBackColor = true;
            this.btnFiltrar.Click += new System.EventHandler(this.btnFiltrar_Click);
            // 
            // rptConsumos
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(865, 339);
            this.Controls.Add(this.btnFiltrar);
            this.Controls.Add(this.crvConsumos);
            this.Name = "rptConsumos";
            this.Text = "rptConsumos";
            this.ResumeLayout(false);

        }

        #endregion

        private CrystalDecisions.Windows.Forms.CrystalReportViewer crvConsumos;
        private System.Windows.Forms.Button btnFiltrar;
    }
}