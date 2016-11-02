namespace WFPGranjas
{
    partial class frmRegLecturas
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
            this.pnlPrinBancos = new System.Windows.Forms.Panel();
            this.label13 = new System.Windows.Forms.Label();
            this.gbCaptura = new System.Windows.Forms.GroupBox();
            this.btnRegLecListado = new System.Windows.Forms.Button();
            this.btnUltimo = new System.Windows.Forms.Button();
            this.btnSiguiente = new System.Windows.Forms.Button();
            this.btnAnterior = new System.Windows.Forms.Button();
            this.btnPrimero = new System.Windows.Forms.Button();
            this.label12 = new System.Windows.Forms.Label();
            this.label11 = new System.Windows.Forms.Label();
            this.lblLecAnterior = new System.Windows.Forms.Label();
            this.txtConsumo = new System.Windows.Forms.TextBox();
            this.txtLecActual = new System.Windows.Forms.TextBox();
            this.txtLecAnterior = new System.Windows.Forms.TextBox();
            this.lblMedidor = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.lblContrato = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.lblDireccion = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.lblColono = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.gbListado = new System.Windows.Forms.GroupBox();
            this.dgPropietario = new System.Windows.Forms.DataGridView();
            this.txtColono = new System.Windows.Forms.TextBox();
            this.btnFiltrar = new System.Windows.Forms.Button();
            this.cmbFiltroMza = new System.Windows.Forms.ComboBox();
            this.dgListado = new System.Windows.Forms.DataGridView();
            this.label1 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.pnlCaptura = new System.Windows.Forms.Panel();
            this.btnCapturaLec = new System.Windows.Forms.Button();
            this.maskPeriodo = new System.Windows.Forms.MaskedTextBox();
            this.label14 = new System.Windows.Forms.Label();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.holaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStripBancos = new System.Windows.Forms.MenuStrip();
            this.mNuevoBanco = new System.Windows.Forms.ToolStripMenuItem();
            this.mEditarBanco = new System.Windows.Forms.ToolStripMenuItem();
            this.mEliminarBanco = new System.Windows.Forms.ToolStripMenuItem();
            this.mSalirBanco = new System.Windows.Forms.ToolStripMenuItem();
            this.pnlPrinBancos.SuspendLayout();
            this.gbCaptura.SuspendLayout();
            this.gbListado.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgPropietario)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgListado)).BeginInit();
            this.pnlCaptura.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.menuStripBancos.SuspendLayout();
            this.SuspendLayout();
            // 
            // pnlPrinBancos
            // 
            this.pnlPrinBancos.BackColor = System.Drawing.Color.Orange;
            this.pnlPrinBancos.Controls.Add(this.menuStrip1);
            this.pnlPrinBancos.Controls.Add(this.menuStripBancos);
            this.pnlPrinBancos.Controls.Add(this.label13);
            this.pnlPrinBancos.Dock = System.Windows.Forms.DockStyle.Top;
            this.pnlPrinBancos.Location = new System.Drawing.Point(0, 0);
            this.pnlPrinBancos.Margin = new System.Windows.Forms.Padding(5);
            this.pnlPrinBancos.Name = "pnlPrinBancos";
            this.pnlPrinBancos.Size = new System.Drawing.Size(984, 28);
            this.pnlPrinBancos.TabIndex = 11;
            // 
            // label13
            // 
            this.label13.AutoSize = true;
            this.label13.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label13.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.label13.Location = new System.Drawing.Point(25, 6);
            this.label13.Margin = new System.Windows.Forms.Padding(5, 0, 5, 0);
            this.label13.Name = "label13";
            this.label13.Size = new System.Drawing.Size(131, 16);
            this.label13.TabIndex = 0;
            this.label13.Text = "Catálogo: Bancos";
            // 
            // gbCaptura
            // 
            this.gbCaptura.Controls.Add(this.btnRegLecListado);
            this.gbCaptura.Controls.Add(this.btnUltimo);
            this.gbCaptura.Controls.Add(this.btnSiguiente);
            this.gbCaptura.Controls.Add(this.btnAnterior);
            this.gbCaptura.Controls.Add(this.btnPrimero);
            this.gbCaptura.Controls.Add(this.label12);
            this.gbCaptura.Controls.Add(this.label11);
            this.gbCaptura.Controls.Add(this.lblLecAnterior);
            this.gbCaptura.Controls.Add(this.txtConsumo);
            this.gbCaptura.Controls.Add(this.txtLecActual);
            this.gbCaptura.Controls.Add(this.txtLecAnterior);
            this.gbCaptura.Controls.Add(this.lblMedidor);
            this.gbCaptura.Controls.Add(this.label9);
            this.gbCaptura.Controls.Add(this.lblContrato);
            this.gbCaptura.Controls.Add(this.label6);
            this.gbCaptura.Controls.Add(this.lblDireccion);
            this.gbCaptura.Controls.Add(this.label4);
            this.gbCaptura.Controls.Add(this.lblColono);
            this.gbCaptura.Controls.Add(this.label2);
            this.gbCaptura.Dock = System.Windows.Forms.DockStyle.Fill;
            this.gbCaptura.Location = new System.Drawing.Point(534, 28);
            this.gbCaptura.Name = "gbCaptura";
            this.gbCaptura.Size = new System.Drawing.Size(450, 305);
            this.gbCaptura.TabIndex = 13;
            this.gbCaptura.TabStop = false;
            this.gbCaptura.Text = "Datos de Captura";
            this.gbCaptura.Visible = false;
            // 
            // btnRegLecListado
            // 
            this.btnRegLecListado.Image = global::WFPGranjas.Properties.Resources.reportar24;
            this.btnRegLecListado.ImageAlign = System.Drawing.ContentAlignment.MiddleRight;
            this.btnRegLecListado.Location = new System.Drawing.Point(5, 270);
            this.btnRegLecListado.Name = "btnRegLecListado";
            this.btnRegLecListado.Size = new System.Drawing.Size(150, 24);
            this.btnRegLecListado.TabIndex = 52;
            this.btnRegLecListado.Text = "Genera Listado";
            this.btnRegLecListado.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnRegLecListado.UseVisualStyleBackColor = true;
            this.btnRegLecListado.Click += new System.EventHandler(this.btnRegLecListado_Click);
            // 
            // btnUltimo
            // 
            this.btnUltimo.Location = new System.Drawing.Point(389, 270);
            this.btnUltimo.Name = "btnUltimo";
            this.btnUltimo.Size = new System.Drawing.Size(53, 23);
            this.btnUltimo.TabIndex = 63;
            this.btnUltimo.Text = ">|";
            this.btnUltimo.UseVisualStyleBackColor = true;
            this.btnUltimo.Click += new System.EventHandler(this.btnUltimo_Click);
            // 
            // btnSiguiente
            // 
            this.btnSiguiente.Location = new System.Drawing.Point(333, 270);
            this.btnSiguiente.Name = "btnSiguiente";
            this.btnSiguiente.Size = new System.Drawing.Size(53, 23);
            this.btnSiguiente.TabIndex = 62;
            this.btnSiguiente.Text = ">";
            this.btnSiguiente.UseVisualStyleBackColor = true;
            this.btnSiguiente.Click += new System.EventHandler(this.btnSiguiente_Click);
            // 
            // btnAnterior
            // 
            this.btnAnterior.Location = new System.Drawing.Point(272, 270);
            this.btnAnterior.Name = "btnAnterior";
            this.btnAnterior.Size = new System.Drawing.Size(57, 23);
            this.btnAnterior.TabIndex = 61;
            this.btnAnterior.Text = "<";
            this.btnAnterior.UseVisualStyleBackColor = true;
            this.btnAnterior.Click += new System.EventHandler(this.btnAnterior_Click);
            // 
            // btnPrimero
            // 
            this.btnPrimero.Location = new System.Drawing.Point(210, 270);
            this.btnPrimero.Name = "btnPrimero";
            this.btnPrimero.Size = new System.Drawing.Size(57, 23);
            this.btnPrimero.TabIndex = 60;
            this.btnPrimero.Text = "|<";
            this.btnPrimero.UseVisualStyleBackColor = true;
            this.btnPrimero.Click += new System.EventHandler(this.btnPrimero_Click);
            // 
            // label12
            // 
            this.label12.AutoSize = true;
            this.label12.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label12.Location = new System.Drawing.Point(209, 241);
            this.label12.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label12.Name = "label12";
            this.label12.Size = new System.Drawing.Size(76, 16);
            this.label12.TabIndex = 59;
            this.label12.Text = "Consumo:";
            // 
            // label11
            // 
            this.label11.AutoSize = true;
            this.label11.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label11.Location = new System.Drawing.Point(175, 213);
            this.label11.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label11.Name = "label11";
            this.label11.Size = new System.Drawing.Size(110, 16);
            this.label11.TabIndex = 58;
            this.label11.Text = "Lectura Actual:";
            // 
            // lblLecAnterior
            // 
            this.lblLecAnterior.AutoSize = true;
            this.lblLecAnterior.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lblLecAnterior.Location = new System.Drawing.Point(97, 185);
            this.lblLecAnterior.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblLecAnterior.Name = "lblLecAnterior";
            this.lblLecAnterior.RightToLeft = System.Windows.Forms.RightToLeft.No;
            this.lblLecAnterior.Size = new System.Drawing.Size(188, 16);
            this.lblLecAnterior.TabIndex = 57;
            this.lblLecAnterior.Text = "Lectura Anterior [12/9999]:";
            this.lblLecAnterior.TextAlign = System.Drawing.ContentAlignment.MiddleLeft;
            // 
            // txtConsumo
            // 
            this.txtConsumo.Enabled = false;
            this.txtConsumo.Location = new System.Drawing.Point(292, 238);
            this.txtConsumo.Name = "txtConsumo";
            this.txtConsumo.Size = new System.Drawing.Size(150, 22);
            this.txtConsumo.TabIndex = 56;
            // 
            // txtLecActual
            // 
            this.txtLecActual.Location = new System.Drawing.Point(292, 210);
            this.txtLecActual.Name = "txtLecActual";
            this.txtLecActual.Size = new System.Drawing.Size(150, 22);
            this.txtLecActual.TabIndex = 55;
            this.txtLecActual.TextChanged += new System.EventHandler(this.txtLecActual_TextChanged);
            this.txtLecActual.KeyPress += new System.Windows.Forms.KeyPressEventHandler(this.txtLecActual_KeyPress);
            // 
            // txtLecAnterior
            // 
            this.txtLecAnterior.Enabled = false;
            this.txtLecAnterior.Location = new System.Drawing.Point(292, 182);
            this.txtLecAnterior.Name = "txtLecAnterior";
            this.txtLecAnterior.Size = new System.Drawing.Size(150, 22);
            this.txtLecAnterior.TabIndex = 54;
            // 
            // lblMedidor
            // 
            this.lblMedidor.AutoSize = true;
            this.lblMedidor.Location = new System.Drawing.Point(218, 158);
            this.lblMedidor.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblMedidor.Name = "lblMedidor";
            this.lblMedidor.Size = new System.Drawing.Size(113, 16);
            this.lblMedidor.TabIndex = 53;
            this.lblMedidor.Text = "254876590458098";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(218, 138);
            this.label9.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(69, 16);
            this.label9.TabIndex = 52;
            this.label9.Text = "Medidor:";
            // 
            // lblContrato
            // 
            this.lblContrato.AutoSize = true;
            this.lblContrato.Location = new System.Drawing.Point(7, 154);
            this.lblContrato.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblContrato.Name = "lblContrato";
            this.lblContrato.Size = new System.Drawing.Size(40, 16);
            this.lblContrato.TabIndex = 51;
            this.lblContrato.Text = "03-21";
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.Location = new System.Drawing.Point(7, 134);
            this.label6.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(70, 16);
            this.label6.TabIndex = 50;
            this.label6.Text = "Contrato:";
            // 
            // lblDireccion
            // 
            this.lblDireccion.AutoSize = true;
            this.lblDireccion.Location = new System.Drawing.Point(7, 104);
            this.lblDireccion.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblDireccion.Name = "lblDireccion";
            this.lblDireccion.Size = new System.Drawing.Size(149, 16);
            this.lblDireccion.TabIndex = 49;
            this.lblDireccion.Text = "MANZANA III / LOTE-21";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.Location = new System.Drawing.Point(7, 84);
            this.label4.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(74, 16);
            this.label4.TabIndex = 48;
            this.label4.Text = "Dirección";
            // 
            // lblColono
            // 
            this.lblColono.Location = new System.Drawing.Point(7, 56);
            this.lblColono.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.lblColono.Name = "lblColono";
            this.lblColono.Size = new System.Drawing.Size(435, 28);
            this.lblColono.TabIndex = 47;
            this.lblColono.Text = "CRISTHIAN ESTRADA BERMUDEZ";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(7, 36);
            this.label2.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(146, 16);
            this.label2.TabIndex = 46;
            this.label2.Text = "Nombre del Colono:";
            // 
            // gbListado
            // 
            this.gbListado.Controls.Add(this.dgPropietario);
            this.gbListado.Controls.Add(this.txtColono);
            this.gbListado.Controls.Add(this.btnFiltrar);
            this.gbListado.Controls.Add(this.cmbFiltroMza);
            this.gbListado.Controls.Add(this.dgListado);
            this.gbListado.Controls.Add(this.label1);
            this.gbListado.Controls.Add(this.label7);
            this.gbListado.Controls.Add(this.pnlCaptura);
            this.gbListado.Dock = System.Windows.Forms.DockStyle.Left;
            this.gbListado.Location = new System.Drawing.Point(0, 28);
            this.gbListado.Name = "gbListado";
            this.gbListado.Size = new System.Drawing.Size(534, 305);
            this.gbListado.TabIndex = 12;
            this.gbListado.TabStop = false;
            // 
            // dgPropietario
            // 
            this.dgPropietario.AllowUserToAddRows = false;
            this.dgPropietario.AllowUserToDeleteRows = false;
            this.dgPropietario.AllowUserToResizeRows = false;
            this.dgPropietario.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.dgPropietario.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgPropietario.ColumnHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.None;
            this.dgPropietario.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgPropietario.Location = new System.Drawing.Point(135, 82);
            this.dgPropietario.MultiSelect = false;
            this.dgPropietario.Name = "dgPropietario";
            this.dgPropietario.ReadOnly = true;
            this.dgPropietario.RowHeadersVisible = false;
            this.dgPropietario.ScrollBars = System.Windows.Forms.ScrollBars.None;
            this.dgPropietario.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgPropietario.Size = new System.Drawing.Size(392, 97);
            this.dgPropietario.TabIndex = 43;
            this.dgPropietario.TabStop = false;
            this.dgPropietario.Visible = false;
            // 
            // txtColono
            // 
            this.txtColono.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.txtColono.CharacterCasing = System.Windows.Forms.CharacterCasing.Upper;
            this.txtColono.Enabled = false;
            this.txtColono.Location = new System.Drawing.Point(135, 60);
            this.txtColono.Margin = new System.Windows.Forms.Padding(4, 5, 4, 5);
            this.txtColono.Name = "txtColono";
            this.txtColono.Size = new System.Drawing.Size(392, 22);
            this.txtColono.TabIndex = 44;
            this.txtColono.TextChanged += new System.EventHandler(this.txtColono_TextChanged);
            // 
            // btnFiltrar
            // 
            this.btnFiltrar.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.btnFiltrar.Enabled = false;
            this.btnFiltrar.Image = global::WFPGranjas.Properties.Resources.filtrar;
            this.btnFiltrar.Location = new System.Drawing.Point(94, 59);
            this.btnFiltrar.Margin = new System.Windows.Forms.Padding(4);
            this.btnFiltrar.Name = "btnFiltrar";
            this.btnFiltrar.Size = new System.Drawing.Size(23, 25);
            this.btnFiltrar.TabIndex = 41;
            this.btnFiltrar.UseVisualStyleBackColor = true;
            this.btnFiltrar.Click += new System.EventHandler(this.btnFiltrar_Click);
            // 
            // cmbFiltroMza
            // 
            this.cmbFiltroMza.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.cmbFiltroMza.FormattingEnabled = true;
            this.cmbFiltroMza.ItemHeight = 16;
            this.cmbFiltroMza.Location = new System.Drawing.Point(9, 59);
            this.cmbFiltroMza.Margin = new System.Windows.Forms.Padding(4);
            this.cmbFiltroMza.Name = "cmbFiltroMza";
            this.cmbFiltroMza.Size = new System.Drawing.Size(85, 24);
            this.cmbFiltroMza.TabIndex = 40;
            // 
            // dgListado
            // 
            this.dgListado.AllowUserToAddRows = false;
            this.dgListado.AllowUserToDeleteRows = false;
            this.dgListado.AllowUserToResizeColumns = false;
            this.dgListado.AllowUserToResizeRows = false;
            this.dgListado.BackgroundColor = System.Drawing.SystemColors.Window;
            this.dgListado.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgListado.Dock = System.Windows.Forms.DockStyle.Bottom;
            this.dgListado.Enabled = false;
            this.dgListado.Location = new System.Drawing.Point(3, 86);
            this.dgListado.MultiSelect = false;
            this.dgListado.Name = "dgListado";
            this.dgListado.ReadOnly = true;
            this.dgListado.RowHeadersBorderStyle = System.Windows.Forms.DataGridViewHeaderBorderStyle.Single;
            this.dgListado.RowHeadersVisible = false;
            this.dgListado.SelectionMode = System.Windows.Forms.DataGridViewSelectionMode.FullRowSelect;
            this.dgListado.Size = new System.Drawing.Size(528, 216);
            this.dgListado.TabIndex = 39;
            this.dgListado.CellMouseClick += new System.Windows.Forms.DataGridViewCellMouseEventHandler(this.dgListado_CellMouseClick);
            // 
            // label1
            // 
            this.label1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(134, 44);
            this.label1.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(128, 16);
            this.label1.TabIndex = 45;
            this.label1.Text = "Nombre del Colono:";
            // 
            // label7
            // 
            this.label7.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label7.AutoSize = true;
            this.label7.Location = new System.Drawing.Point(7, 43);
            this.label7.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(66, 16);
            this.label7.TabIndex = 42;
            this.label7.Text = "Manzana:";
            // 
            // pnlCaptura
            // 
            this.pnlCaptura.BackColor = System.Drawing.Color.Orange;
            this.pnlCaptura.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.pnlCaptura.Controls.Add(this.btnCapturaLec);
            this.pnlCaptura.Controls.Add(this.maskPeriodo);
            this.pnlCaptura.Controls.Add(this.label14);
            this.pnlCaptura.Location = new System.Drawing.Point(269, 16);
            this.pnlCaptura.Name = "pnlCaptura";
            this.pnlCaptura.Size = new System.Drawing.Size(257, 32);
            this.pnlCaptura.TabIndex = 49;
            // 
            // btnCapturaLec
            // 
            this.btnCapturaLec.Image = global::WFPGranjas.Properties.Resources.expediente;
            this.btnCapturaLec.Location = new System.Drawing.Point(153, 4);
            this.btnCapturaLec.Name = "btnCapturaLec";
            this.btnCapturaLec.Size = new System.Drawing.Size(89, 24);
            this.btnCapturaLec.TabIndex = 51;
            this.btnCapturaLec.Text = "Capturar";
            this.btnCapturaLec.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageBeforeText;
            this.btnCapturaLec.UseVisualStyleBackColor = true;
            this.btnCapturaLec.Click += new System.EventHandler(this.btnCapturaLec_Click);
            // 
            // maskPeriodo
            // 
            this.maskPeriodo.Location = new System.Drawing.Point(87, 5);
            this.maskPeriodo.Mask = "99-9999";
            this.maskPeriodo.Name = "maskPeriodo";
            this.maskPeriodo.Size = new System.Drawing.Size(61, 22);
            this.maskPeriodo.TabIndex = 50;
            // 
            // label14
            // 
            this.label14.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.label14.AutoSize = true;
            this.label14.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label14.ForeColor = System.Drawing.SystemColors.Window;
            this.label14.Location = new System.Drawing.Point(9, 8);
            this.label14.Margin = new System.Windows.Forms.Padding(4, 0, 4, 0);
            this.label14.Name = "label14";
            this.label14.Size = new System.Drawing.Size(73, 16);
            this.label14.TabIndex = 49;
            this.label14.Text = "Mes-Año:";
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.holaToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 24);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(984, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            this.menuStrip1.Visible = false;
            // 
            // holaToolStripMenuItem
            // 
            this.holaToolStripMenuItem.Name = "holaToolStripMenuItem";
            this.holaToolStripMenuItem.Size = new System.Drawing.Size(12, 20);
            // 
            // menuStripBancos
            // 
            this.menuStripBancos.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.mNuevoBanco,
            this.mEditarBanco,
            this.mEliminarBanco,
            this.mSalirBanco});
            this.menuStripBancos.Location = new System.Drawing.Point(0, 0);
            this.menuStripBancos.Name = "menuStripBancos";
            this.menuStripBancos.Size = new System.Drawing.Size(984, 24);
            this.menuStripBancos.TabIndex = 3;
            this.menuStripBancos.Text = "menuStrip1";
            // 
            // mNuevoBanco
            // 
            this.mNuevoBanco.Image = global::WFPGranjas.Properties.Resources.nuevo;
            this.mNuevoBanco.Name = "mNuevoBanco";
            this.mNuevoBanco.Size = new System.Drawing.Size(70, 20);
            this.mNuevoBanco.Text = "Nuevo";
            this.mNuevoBanco.Visible = false;
            // 
            // mEditarBanco
            // 
            this.mEditarBanco.Image = global::WFPGranjas.Properties.Resources.editar;
            this.mEditarBanco.Name = "mEditarBanco";
            this.mEditarBanco.Size = new System.Drawing.Size(65, 20);
            this.mEditarBanco.Text = "Editar";
            this.mEditarBanco.Visible = false;
            // 
            // mEliminarBanco
            // 
            this.mEliminarBanco.Image = global::WFPGranjas.Properties.Resources.eliminar;
            this.mEliminarBanco.Name = "mEliminarBanco";
            this.mEliminarBanco.Size = new System.Drawing.Size(78, 20);
            this.mEliminarBanco.Text = "Eliminar";
            this.mEliminarBanco.Visible = false;
            // 
            // mSalirBanco
            // 
            this.mSalirBanco.Image = global::WFPGranjas.Properties.Resources.cerrar;
            this.mSalirBanco.Name = "mSalirBanco";
            this.mSalirBanco.Size = new System.Drawing.Size(67, 20);
            this.mSalirBanco.Text = "Cerrar";
            this.mSalirBanco.Click += new System.EventHandler(this.mSalirBanco_Click);
            // 
            // frmRegLecturas
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(984, 333);
            this.Controls.Add(this.gbCaptura);
            this.Controls.Add(this.gbListado);
            this.Controls.Add(this.pnlPrinBancos);
            this.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Margin = new System.Windows.Forms.Padding(4);
            this.Name = "frmRegLecturas";
            this.Text = "frmRegLecturas";
            this.Load += new System.EventHandler(this.frmRegLecturas_Load);
            this.pnlPrinBancos.ResumeLayout(false);
            this.pnlPrinBancos.PerformLayout();
            this.gbCaptura.ResumeLayout(false);
            this.gbCaptura.PerformLayout();
            this.gbListado.ResumeLayout(false);
            this.gbListado.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dgPropietario)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dgListado)).EndInit();
            this.pnlCaptura.ResumeLayout(false);
            this.pnlCaptura.PerformLayout();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.menuStripBancos.ResumeLayout(false);
            this.menuStripBancos.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Panel pnlPrinBancos;
        private System.Windows.Forms.Label label13;
        private System.Windows.Forms.GroupBox gbCaptura;
        private System.Windows.Forms.Label label12;
        private System.Windows.Forms.Label label11;
        private System.Windows.Forms.Label lblLecAnterior;
        private System.Windows.Forms.TextBox txtConsumo;
        private System.Windows.Forms.TextBox txtLecActual;
        private System.Windows.Forms.TextBox txtLecAnterior;
        private System.Windows.Forms.Label lblMedidor;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label lblContrato;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label lblDireccion;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label lblColono;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.GroupBox gbListado;
        private System.Windows.Forms.DataGridView dgPropietario;
        private System.Windows.Forms.DataGridView dgListado;
        private System.Windows.Forms.TextBox txtColono;
        private System.Windows.Forms.Button btnFiltrar;
        private System.Windows.Forms.ComboBox cmbFiltroMza;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Panel pnlCaptura;
        private System.Windows.Forms.Button btnCapturaLec;
        private System.Windows.Forms.MaskedTextBox maskPeriodo;
        private System.Windows.Forms.Label label14;
        private System.Windows.Forms.Button btnUltimo;
        private System.Windows.Forms.Button btnSiguiente;
        private System.Windows.Forms.Button btnAnterior;
        private System.Windows.Forms.Button btnPrimero;
        private System.Windows.Forms.Button btnRegLecListado;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem holaToolStripMenuItem;
        private System.Windows.Forms.MenuStrip menuStripBancos;
        private System.Windows.Forms.ToolStripMenuItem mNuevoBanco;
        private System.Windows.Forms.ToolStripMenuItem mEditarBanco;
        private System.Windows.Forms.ToolStripMenuItem mEliminarBanco;
        private System.Windows.Forms.ToolStripMenuItem mSalirBanco;
    }
}