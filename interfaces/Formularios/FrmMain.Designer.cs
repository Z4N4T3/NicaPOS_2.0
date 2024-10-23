namespace interfaces.Formularios
{
    partial class FrmMain
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
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.negocioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.inventarioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cajaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reportesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.sistemaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.panelNegocio = new System.Windows.Forms.Panel();
            this.BtnPromo = new System.Windows.Forms.Button();
            this.BtnEmpleado = new System.Windows.Forms.Button();
            this.panelMain = new System.Windows.Forms.Panel();
            this.panel_inventario = new System.Windows.Forms.Panel();
            this.BtnMovInventario = new System.Windows.Forms.Button();
            this.BtnCatServicios = new System.Windows.Forms.Button();
            this.BtnCatProductos = new System.Windows.Forms.Button();
            this.BtnProveedor = new System.Windows.Forms.Button();
            this.panelSistema = new System.Windows.Forms.Panel();
            this.BtnPermiso = new System.Windows.Forms.Button();
            this.BtnUser = new System.Windows.Forms.Button();
            this.BtnRoles = new System.Windows.Forms.Button();
            this.FrmUsuario = new System.Windows.Forms.Panel();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.BtnAgregar = new System.Windows.Forms.Button();
            this.BtnActualizar = new System.Windows.Forms.Button();
            this.BtnDeshabilitar = new System.Windows.Forms.Button();
            this.label1 = new System.Windows.Forms.Label();
            this.menuStrip1.SuspendLayout();
            this.panelNegocio.SuspendLayout();
            this.panel_inventario.SuspendLayout();
            this.panelSistema.SuspendLayout();
            this.FrmUsuario.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.SuspendLayout();
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.negocioToolStripMenuItem,
            this.inventarioToolStripMenuItem,
            this.cajaToolStripMenuItem,
            this.reportesToolStripMenuItem,
            this.sistemaToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(1124, 24);
            this.menuStrip1.TabIndex = 1;
            this.menuStrip1.Text = "menuStrip1";
            // 
            // negocioToolStripMenuItem
            // 
            this.negocioToolStripMenuItem.Name = "negocioToolStripMenuItem";
            this.negocioToolStripMenuItem.Size = new System.Drawing.Size(64, 20);
            this.negocioToolStripMenuItem.Text = "Negocio";
            this.negocioToolStripMenuItem.Click += new System.EventHandler(this.negocioToolStripMenuItem_Click);
            // 
            // inventarioToolStripMenuItem
            // 
            this.inventarioToolStripMenuItem.Name = "inventarioToolStripMenuItem";
            this.inventarioToolStripMenuItem.Size = new System.Drawing.Size(72, 20);
            this.inventarioToolStripMenuItem.Text = "Inventario";
            this.inventarioToolStripMenuItem.Click += new System.EventHandler(this.inventarioToolStripMenuItem_Click);
            // 
            // cajaToolStripMenuItem
            // 
            this.cajaToolStripMenuItem.Name = "cajaToolStripMenuItem";
            this.cajaToolStripMenuItem.Size = new System.Drawing.Size(42, 20);
            this.cajaToolStripMenuItem.Text = "Caja";
            this.cajaToolStripMenuItem.Click += new System.EventHandler(this.cajaToolStripMenuItem_Click);
            // 
            // reportesToolStripMenuItem
            // 
            this.reportesToolStripMenuItem.Name = "reportesToolStripMenuItem";
            this.reportesToolStripMenuItem.Size = new System.Drawing.Size(65, 20);
            this.reportesToolStripMenuItem.Text = "Reportes";
            this.reportesToolStripMenuItem.Click += new System.EventHandler(this.reportesToolStripMenuItem_Click);
            // 
            // sistemaToolStripMenuItem
            // 
            this.sistemaToolStripMenuItem.Name = "sistemaToolStripMenuItem";
            this.sistemaToolStripMenuItem.Size = new System.Drawing.Size(60, 20);
            this.sistemaToolStripMenuItem.Text = "Sistema";
            this.sistemaToolStripMenuItem.Click += new System.EventHandler(this.sistemaToolStripMenuItem_Click);
            // 
            // panelNegocio
            // 
            this.panelNegocio.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelNegocio.Controls.Add(this.BtnPromo);
            this.panelNegocio.Controls.Add(this.BtnEmpleado);
            this.panelNegocio.Location = new System.Drawing.Point(12, 27);
            this.panelNegocio.Name = "panelNegocio";
            this.panelNegocio.Size = new System.Drawing.Size(231, 525);
            this.panelNegocio.TabIndex = 2;
            this.panelNegocio.Visible = false;
            this.panelNegocio.Paint += new System.Windows.Forms.PaintEventHandler(this.panelBtn_Paint);
            // 
            // BtnPromo
            // 
            this.BtnPromo.Location = new System.Drawing.Point(3, 45);
            this.BtnPromo.Name = "BtnPromo";
            this.BtnPromo.Size = new System.Drawing.Size(221, 36);
            this.BtnPromo.TabIndex = 1;
            this.BtnPromo.Text = "Promociones";
            this.BtnPromo.UseVisualStyleBackColor = true;
            this.BtnPromo.Click += new System.EventHandler(this.BtnPromo_Click);
            // 
            // BtnEmpleado
            // 
            this.BtnEmpleado.Location = new System.Drawing.Point(3, 3);
            this.BtnEmpleado.Name = "BtnEmpleado";
            this.BtnEmpleado.Size = new System.Drawing.Size(221, 36);
            this.BtnEmpleado.TabIndex = 0;
            this.BtnEmpleado.Text = "Empleados";
            this.BtnEmpleado.UseVisualStyleBackColor = true;
            this.BtnEmpleado.Click += new System.EventHandler(this.BtnEmpleado_Click);
            // 
            // panelMain
            // 
            this.panelMain.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelMain.Location = new System.Drawing.Point(249, 27);
            this.panelMain.Name = "panelMain";
            this.panelMain.Size = new System.Drawing.Size(863, 525);
            this.panelMain.TabIndex = 3;
            this.panelMain.Paint += new System.Windows.Forms.PaintEventHandler(this.panelMain_Paint);
            // 
            // panel_inventario
            // 
            this.panel_inventario.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panel_inventario.Controls.Add(this.BtnMovInventario);
            this.panel_inventario.Controls.Add(this.BtnCatServicios);
            this.panel_inventario.Controls.Add(this.BtnCatProductos);
            this.panel_inventario.Controls.Add(this.BtnProveedor);
            this.panel_inventario.Location = new System.Drawing.Point(12, 27);
            this.panel_inventario.Name = "panel_inventario";
            this.panel_inventario.Size = new System.Drawing.Size(231, 525);
            this.panel_inventario.TabIndex = 2;
            this.panel_inventario.Visible = false;
            this.panel_inventario.Paint += new System.Windows.Forms.PaintEventHandler(this.panel_inventario_Paint);
            // 
            // BtnMovInventario
            // 
            this.BtnMovInventario.Location = new System.Drawing.Point(7, 131);
            this.BtnMovInventario.Name = "BtnMovInventario";
            this.BtnMovInventario.Size = new System.Drawing.Size(221, 36);
            this.BtnMovInventario.TabIndex = 6;
            this.BtnMovInventario.Text = "Movimientos de Inventario";
            this.BtnMovInventario.UseVisualStyleBackColor = true;
            this.BtnMovInventario.Click += new System.EventHandler(this.BtnMovInventario_Click);
            // 
            // BtnCatServicios
            // 
            this.BtnCatServicios.Location = new System.Drawing.Point(8, 89);
            this.BtnCatServicios.Name = "BtnCatServicios";
            this.BtnCatServicios.Size = new System.Drawing.Size(221, 36);
            this.BtnCatServicios.TabIndex = 5;
            this.BtnCatServicios.Text = "Catalogo de Servicios";
            this.BtnCatServicios.UseVisualStyleBackColor = true;
            this.BtnCatServicios.Click += new System.EventHandler(this.BtnCatServicios_Click);
            // 
            // BtnCatProductos
            // 
            this.BtnCatProductos.Location = new System.Drawing.Point(7, 47);
            this.BtnCatProductos.Name = "BtnCatProductos";
            this.BtnCatProductos.Size = new System.Drawing.Size(221, 36);
            this.BtnCatProductos.TabIndex = 4;
            this.BtnCatProductos.Text = "Catalogo de Productos";
            this.BtnCatProductos.UseVisualStyleBackColor = true;
            this.BtnCatProductos.Click += new System.EventHandler(this.BtnCatProductos_Click);
            // 
            // BtnProveedor
            // 
            this.BtnProveedor.Location = new System.Drawing.Point(7, 5);
            this.BtnProveedor.Name = "BtnProveedor";
            this.BtnProveedor.Size = new System.Drawing.Size(221, 36);
            this.BtnProveedor.TabIndex = 3;
            this.BtnProveedor.Text = "Proveedores";
            this.BtnProveedor.UseVisualStyleBackColor = true;
            this.BtnProveedor.Click += new System.EventHandler(this.BtnProveedor_Click);
            // 
            // panelSistema
            // 
            this.panelSistema.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelSistema.Controls.Add(this.BtnPermiso);
            this.panelSistema.Controls.Add(this.BtnUser);
            this.panelSistema.Controls.Add(this.BtnRoles);
            this.panelSistema.Location = new System.Drawing.Point(12, 27);
            this.panelSistema.Name = "panelSistema";
            this.panelSistema.Size = new System.Drawing.Size(231, 525);
            this.panelSistema.TabIndex = 0;
            this.panelSistema.Visible = false;
            this.panelSistema.Paint += new System.Windows.Forms.PaintEventHandler(this.panelSistema_Paint);
            // 
            // BtnPermiso
            // 
            this.BtnPermiso.Location = new System.Drawing.Point(3, 45);
            this.BtnPermiso.Name = "BtnPermiso";
            this.BtnPermiso.Size = new System.Drawing.Size(221, 36);
            this.BtnPermiso.TabIndex = 9;
            this.BtnPermiso.Text = "Permisos";
            this.BtnPermiso.UseVisualStyleBackColor = true;
            this.BtnPermiso.Click += new System.EventHandler(this.BtnPermiso_Click);
            // 
            // BtnUser
            // 
            this.BtnUser.Location = new System.Drawing.Point(3, 87);
            this.BtnUser.Name = "BtnUser";
            this.BtnUser.Size = new System.Drawing.Size(221, 36);
            this.BtnUser.TabIndex = 8;
            this.BtnUser.Text = "Usuarios";
            this.BtnUser.UseVisualStyleBackColor = true;
            this.BtnUser.Click += new System.EventHandler(this.BtnUser_Click);
            // 
            // BtnRoles
            // 
            this.BtnRoles.Location = new System.Drawing.Point(3, 3);
            this.BtnRoles.Name = "BtnRoles";
            this.BtnRoles.Size = new System.Drawing.Size(221, 36);
            this.BtnRoles.TabIndex = 7;
            this.BtnRoles.Text = "Roles";
            this.BtnRoles.UseVisualStyleBackColor = true;
            this.BtnRoles.Click += new System.EventHandler(this.BtnRoles_Click);
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
            this.FrmUsuario.Size = new System.Drawing.Size(863, 525);
            this.FrmUsuario.TabIndex = 4;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(70, 28);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(100, 20);
            this.textBox1.TabIndex = 0;
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(3, 151);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(853, 367);
            this.dataGridView1.TabIndex = 1;
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(70, 63);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(100, 20);
            this.textBox2.TabIndex = 2;
            // 
            // BtnAgregar
            // 
            this.BtnAgregar.Location = new System.Drawing.Point(619, 122);
            this.BtnAgregar.Name = "BtnAgregar";
            this.BtnAgregar.Size = new System.Drawing.Size(75, 23);
            this.BtnAgregar.TabIndex = 3;
            this.BtnAgregar.Text = "Agregar";
            this.BtnAgregar.UseVisualStyleBackColor = true;
            // 
            // BtnActualizar
            // 
            this.BtnActualizar.Location = new System.Drawing.Point(700, 122);
            this.BtnActualizar.Name = "BtnActualizar";
            this.BtnActualizar.Size = new System.Drawing.Size(75, 23);
            this.BtnActualizar.TabIndex = 4;
            this.BtnActualizar.Text = "Actualizar";
            this.BtnActualizar.UseVisualStyleBackColor = true;
            // 
            // BtnDeshabilitar
            // 
            this.BtnDeshabilitar.Location = new System.Drawing.Point(781, 122);
            this.BtnDeshabilitar.Name = "BtnDeshabilitar";
            this.BtnDeshabilitar.Size = new System.Drawing.Size(75, 23);
            this.BtnDeshabilitar.TabIndex = 5;
            this.BtnDeshabilitar.Text = "Deshabilitar";
            this.BtnDeshabilitar.UseVisualStyleBackColor = true;
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(21, 28);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(43, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Usuario";
            this.label1.Click += new System.EventHandler(this.label1_Click);
            // 
            // FrmMain
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1124, 564);
            this.Controls.Add(this.FrmUsuario);
            this.Controls.Add(this.panelSistema);
            this.Controls.Add(this.panel_inventario);
            this.Controls.Add(this.panelMain);
            this.Controls.Add(this.panelNegocio);
            this.Controls.Add(this.menuStrip1);
            this.Name = "FrmMain";
            this.Text = "FrmMain";
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.panelNegocio.ResumeLayout(false);
            this.panel_inventario.ResumeLayout(false);
            this.panelSistema.ResumeLayout(false);
            this.FrmUsuario.ResumeLayout(false);
            this.FrmUsuario.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem negocioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem inventarioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cajaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reportesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem sistemaToolStripMenuItem;
        private System.Windows.Forms.Panel panelNegocio;
        private System.Windows.Forms.Button BtnPromo;
        private System.Windows.Forms.Button BtnEmpleado;
        private System.Windows.Forms.Panel panelMain;
        private System.Windows.Forms.Panel panel_inventario;
        private System.Windows.Forms.Button BtnCatServicios;
        private System.Windows.Forms.Button BtnCatProductos;
        private System.Windows.Forms.Button BtnProveedor;
        private System.Windows.Forms.Button BtnMovInventario;
        private System.Windows.Forms.Panel panelSistema;
        private System.Windows.Forms.Button BtnPermiso;
        private System.Windows.Forms.Button BtnUser;
        private System.Windows.Forms.Button BtnRoles;
        private System.Windows.Forms.Panel FrmUsuario;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button BtnDeshabilitar;
        private System.Windows.Forms.Button BtnActualizar;
        private System.Windows.Forms.Button BtnAgregar;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.TextBox textBox1;
    }
}