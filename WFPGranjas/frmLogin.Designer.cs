namespace WFPGranjas
{
    partial class frmLogin
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
            this.txtUser = new System.Windows.Forms.TextBox();
            this.txtPassword = new System.Windows.Forms.TextBox();
            this.pbEntrar = new System.Windows.Forms.PictureBox();
            this.btncerrar = new System.Windows.Forms.Button();
            this.btnmin = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pbEntrar)).BeginInit();
            this.SuspendLayout();
            // 
            // txtUser
            // 
            this.txtUser.BackColor = System.Drawing.Color.SkyBlue;
            this.txtUser.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtUser.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtUser.ForeColor = System.Drawing.Color.MidnightBlue;
            this.txtUser.Location = new System.Drawing.Point(120, 102);
            this.txtUser.Name = "txtUser";
            this.txtUser.Size = new System.Drawing.Size(228, 22);
            this.txtUser.TabIndex = 0;
            this.txtUser.Text = "joanesbe";
            // 
            // txtPassword
            // 
            this.txtPassword.BackColor = System.Drawing.Color.SkyBlue;
            this.txtPassword.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.txtPassword.Font = new System.Drawing.Font("Microsoft Sans Serif", 14.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.txtPassword.ForeColor = System.Drawing.Color.MidnightBlue;
            this.txtPassword.Location = new System.Drawing.Point(120, 155);
            this.txtPassword.Name = "txtPassword";
            this.txtPassword.PasswordChar = '*';
            this.txtPassword.Size = new System.Drawing.Size(228, 22);
            this.txtPassword.TabIndex = 1;
            this.txtPassword.Text = "123";
            // 
            // pbEntrar
            // 
            this.pbEntrar.BackColor = System.Drawing.Color.Transparent;
            this.pbEntrar.BackgroundImage = global::WFPGranjas.Properties.Resources.btn_ingresar;
            this.pbEntrar.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pbEntrar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.pbEntrar.Location = new System.Drawing.Point(373, 97);
            this.pbEntrar.Name = "pbEntrar";
            this.pbEntrar.Size = new System.Drawing.Size(90, 85);
            this.pbEntrar.TabIndex = 7;
            this.pbEntrar.TabStop = false;
            this.pbEntrar.Click += new System.EventHandler(this.pbEntrar_Click);
            // 
            // btncerrar
            // 
            this.btncerrar.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btncerrar.Image = global::WFPGranjas.Properties.Resources.cancelar1;
            this.btncerrar.Location = new System.Drawing.Point(440, 21);
            this.btncerrar.Name = "btncerrar";
            this.btncerrar.Size = new System.Drawing.Size(32, 32);
            this.btncerrar.TabIndex = 9;
            this.btncerrar.UseVisualStyleBackColor = true;
            // 
            // btnmin
            // 
            this.btnmin.Cursor = System.Windows.Forms.Cursors.Hand;
            this.btnmin.Image = global::WFPGranjas.Properties.Resources.minimizar;
            this.btnmin.Location = new System.Drawing.Point(399, 21);
            this.btnmin.Name = "btnmin";
            this.btnmin.Size = new System.Drawing.Size(32, 32);
            this.btnmin.TabIndex = 8;
            this.btnmin.UseVisualStyleBackColor = true;
            // 
            // frmLogin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::WFPGranjas.Properties.Resources.login2;
            this.ClientSize = new System.Drawing.Size(496, 279);
            this.Controls.Add(this.btncerrar);
            this.Controls.Add(this.btnmin);
            this.Controls.Add(this.pbEntrar);
            this.Controls.Add(this.txtPassword);
            this.Controls.Add(this.txtUser);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "frmLogin";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.frmLogin_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pbEntrar)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.TextBox txtUser;
        private System.Windows.Forms.TextBox txtPassword;
        private System.Windows.Forms.PictureBox pbEntrar;
        private System.Windows.Forms.Button btncerrar;
        private System.Windows.Forms.Button btnmin;
    }
}

