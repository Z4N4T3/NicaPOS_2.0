namespace interfaces.Formularios
{
    partial class FrmInventario
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
            this.panel_inventario = new System.Windows.Forms.Panel();
            this.BtnMovInventario = new System.Windows.Forms.Button();
            this.BtnCatServicios = new System.Windows.Forms.Button();
            this.BtnCatProductos = new System.Windows.Forms.Button();
            this.BtnProveedor = new System.Windows.Forms.Button();
            this.panelMain = new System.Windows.Forms.Panel();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.negocioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.inventarioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cajaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reportesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.sistemaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ventaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.panel_inventario.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
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
            this.panel_inventario.Size = new System.Drawing.Size(231, 522);
            this.panel_inventario.TabIndex = 5;
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
            // 
            // BtnCatServicios
            // 
            this.BtnCatServicios.Location = new System.Drawing.Point(8, 89);
            this.BtnCatServicios.Name = "BtnCatServicios";
            this.BtnCatServicios.Size = new System.Drawing.Size(221, 36);
            this.BtnCatServicios.TabIndex = 5;
            this.BtnCatServicios.Text = "Catalogo de Servicios";
            this.BtnCatServicios.UseVisualStyleBackColor = true;
            // 
            // BtnCatProductos
            // 
            this.BtnCatProductos.Location = new System.Drawing.Point(7, 47);
            this.BtnCatProductos.Name = "BtnCatProductos";
            this.BtnCatProductos.Size = new System.Drawing.Size(221, 36);
            this.BtnCatProductos.TabIndex = 4;
            this.BtnCatProductos.Text = "Catalogo de Productos";
            this.BtnCatProductos.UseVisualStyleBackColor = true;
            // 
            // BtnProveedor
            // 
            this.BtnProveedor.Location = new System.Drawing.Point(7, 5);
            this.BtnProveedor.Name = "BtnProveedor";
            this.BtnProveedor.Size = new System.Drawing.Size(221, 36);
            this.BtnProveedor.TabIndex = 3;
            this.BtnProveedor.Text = "Proveedores";
            this.BtnProveedor.UseVisualStyleBackColor = true;
            // 
            // panelMain
            // 
            this.panelMain.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelMain.Location = new System.Drawing.Point(249, 24);
            this.panelMain.Name = "panelMain";
            this.panelMain.Size = new System.Drawing.Size(923, 525);
            this.panelMain.TabIndex = 6;
            this.panelMain.Paint += new System.Windows.Forms.PaintEventHandler(this.panelMain_Paint);
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
            this.menuStrip1.TabIndex = 4;
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
            // FrmInventario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1184, 561);
            this.Controls.Add(this.panel_inventario);
            this.Controls.Add(this.panelMain);
            this.Controls.Add(this.menuStrip1);
            this.Name = "FrmInventario";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmInventario";
            this.panel_inventario.ResumeLayout(false);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panel_inventario;
        private System.Windows.Forms.Button BtnMovInventario;
        private System.Windows.Forms.Button BtnCatServicios;
        private System.Windows.Forms.Button BtnCatProductos;
        private System.Windows.Forms.Button BtnProveedor;
        private System.Windows.Forms.Panel panelMain;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem negocioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem inventarioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cajaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reportesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem sistemaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ventaToolStripMenuItem;
    }
}