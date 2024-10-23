namespace interfaces.Formularios
{
    partial class FrmSistema
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
            this.FrmUsuario = new System.Windows.Forms.Panel();
            this.label1 = new System.Windows.Forms.Label();
            this.BtnDeshabilitar = new System.Windows.Forms.Button();
            this.BtnActualizar = new System.Windows.Forms.Button();
            this.BtnAgregar = new System.Windows.Forms.Button();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.panelSistema = new System.Windows.Forms.Panel();
            this.BtnPermiso = new System.Windows.Forms.Button();
            this.BtnUser = new System.Windows.Forms.Button();
            this.BtnRoles = new System.Windows.Forms.Button();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.negocioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.inventarioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cajaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reportesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.sistemaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ventaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.FrmUsuario.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.panelSistema.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // FrmUsuario
            // 
            this.FrmUsuario.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.FrmUsuario.Controls.Add(this.label1);
            this.FrmUsuario.Controls.Add(this.BtnDeshabilitar);
            this.FrmUsuario.Controls.Add(this.BtnActualizar);
            this.FrmUsuario.Controls.Add(this.BtnAgregar);
            this.FrmUsuario.Controls.Add(this.textBox2);
            this.FrmUsuario.Controls.Add(this.dataGridView1);
            this.FrmUsuario.Controls.Add(this.textBox1);
            this.FrmUsuario.Location = new System.Drawing.Point(248, 27);
            this.FrmUsuario.Name = "FrmUsuario";
            this.FrmUsuario.Size = new System.Drawing.Size(924, 522);
            this.FrmUsuario.TabIndex = 6;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(21, 28);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(43, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Usuario";
            // 
            // BtnDeshabilitar
            // 
            this.BtnDeshabilitar.Location = new System.Drawing.Point(842, 122);
            this.BtnDeshabilitar.Name = "BtnDeshabilitar";
            this.BtnDeshabilitar.Size = new System.Drawing.Size(75, 23);
            this.BtnDeshabilitar.TabIndex = 5;
            this.BtnDeshabilitar.Text = "Deshabilitar";
            this.BtnDeshabilitar.UseVisualStyleBackColor = true;
            // 
            // BtnActualizar
            // 
            this.BtnActualizar.Location = new System.Drawing.Point(761, 122);
            this.BtnActualizar.Name = "BtnActualizar";
            this.BtnActualizar.Size = new System.Drawing.Size(75, 23);
            this.BtnActualizar.TabIndex = 4;
            this.BtnActualizar.Text = "Actualizar";
            this.BtnActualizar.UseVisualStyleBackColor = true;
            // 
            // BtnAgregar
            // 
            this.BtnAgregar.Location = new System.Drawing.Point(680, 122);
            this.BtnAgregar.Name = "BtnAgregar";
            this.BtnAgregar.Size = new System.Drawing.Size(75, 23);
            this.BtnAgregar.TabIndex = 3;
            this.BtnAgregar.Text = "Agregar";
            this.BtnAgregar.UseVisualStyleBackColor = true;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(70, 63);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(100, 20);
            this.textBox2.TabIndex = 2;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(3, 151);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(914, 364);
            this.dataGridView1.TabIndex = 1;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(70, 28);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 0;
            // 
            // panelSistema
            // 
            this.panelSistema.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelSistema.Controls.Add(this.BtnPermiso);
            this.panelSistema.Controls.Add(this.BtnUser);
            this.panelSistema.Controls.Add(this.BtnRoles);
            this.panelSistema.Location = new System.Drawing.Point(11, 27);
            this.panelSistema.Name = "panelSistema";
            this.panelSistema.Size = new System.Drawing.Size(231, 522);
            this.panelSistema.TabIndex = 5;
            // 
            // BtnPermiso
            // 
            this.BtnPermiso.Location = new System.Drawing.Point(3, 45);
            this.BtnPermiso.Name = "BtnPermiso";
            this.BtnPermiso.Size = new System.Drawing.Size(221, 36);
            this.BtnPermiso.TabIndex = 9;
            this.BtnPermiso.Text = "Permisos";
            this.BtnPermiso.UseVisualStyleBackColor = true;
            // 
            // BtnUser
            // 
            this.BtnUser.Location = new System.Drawing.Point(3, 87);
            this.BtnUser.Name = "BtnUser";
            this.BtnUser.Size = new System.Drawing.Size(221, 36);
            this.BtnUser.TabIndex = 8;
            this.BtnUser.Text = "Usuarios";
            this.BtnUser.UseVisualStyleBackColor = true;
            // 
            // BtnRoles
            // 
            this.BtnRoles.Location = new System.Drawing.Point(3, 3);
            this.BtnRoles.Name = "BtnRoles";
            this.BtnRoles.Size = new System.Drawing.Size(221, 36);
            this.BtnRoles.TabIndex = 7;
            this.BtnRoles.Text = "Roles";
            this.BtnRoles.UseVisualStyleBackColor = true;
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.negocioToolStripMenuItem,
            this.inventarioToolStripMenuItem,
            this.cajaToolStripMenuItem,
            this.reportesToolStripMenuItem,
            this.sistemaToolStripMenuItem,
            this.ventaToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1184, 24);
            this.menuStrip1.TabIndex = 7;
            this.menuStrip1.Text = "menuStrip1";
            this.menuStrip1.ItemClicked += new System.Windows.Forms.ToolStripItemClickedEventHandler(this.menuStrip1_ItemClicked);
            // 
            // negocioToolStripMenuItem
            // 
            this.negocioToolStripMenuItem.Name = "negocioToolStripMenuItem";
            this.negocioToolStripMenuItem.Size = new System.Drawing.Size(64, 20);
            this.negocioToolStripMenuItem.Text = "Negocio";
            // 
            // inventarioToolStripMenuItem
            // 
            this.inventarioToolStripMenuItem.Name = "inventarioToolStripMenuItem";
            this.inventarioToolStripMenuItem.Size = new System.Drawing.Size(72, 20);
            this.inventarioToolStripMenuItem.Text = "Inventario";
            // 
            // cajaToolStripMenuItem
            // 
            this.cajaToolStripMenuItem.Name = "cajaToolStripMenuItem";
            this.cajaToolStripMenuItem.Size = new System.Drawing.Size(42, 20);
            this.cajaToolStripMenuItem.Text = "Caja";
            // 
            // reportesToolStripMenuItem
            // 
            this.reportesToolStripMenuItem.Name = "reportesToolStripMenuItem";
            this.reportesToolStripMenuItem.Size = new System.Drawing.Size(65, 20);
            this.reportesToolStripMenuItem.Text = "Reportes";
            // 
            // sistemaToolStripMenuItem
            // 
            this.sistemaToolStripMenuItem.Name = "sistemaToolStripMenuItem";
            this.sistemaToolStripMenuItem.Size = new System.Drawing.Size(60, 20);
            this.sistemaToolStripMenuItem.Text = "Sistema";
            // 
            // ventaToolStripMenuItem
            // 
            this.ventaToolStripMenuItem.Name = "ventaToolStripMenuItem";
            this.ventaToolStripMenuItem.Size = new System.Drawing.Size(48, 20);
            this.ventaToolStripMenuItem.Text = "Venta";
            // 
            // FrmSistema
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1184, 561);
            this.Controls.Add(this.menuStrip1);
            this.Controls.Add(this.FrmUsuario);
            this.Controls.Add(this.panelSistema);
            this.Name = "FrmSistema";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmSistema";
            this.FrmUsuario.ResumeLayout(false);
            this.FrmUsuario.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.panelSistema.ResumeLayout(false);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel FrmUsuario;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button BtnDeshabilitar;
        private System.Windows.Forms.Button BtnActualizar;
        private System.Windows.Forms.Button BtnAgregar;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Panel panelSistema;
        private System.Windows.Forms.Button BtnPermiso;
        private System.Windows.Forms.Button BtnUser;
        private System.Windows.Forms.Button BtnRoles;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem negocioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem inventarioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cajaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reportesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem sistemaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ventaToolStripMenuItem;
    }
}