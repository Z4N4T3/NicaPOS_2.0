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
            this.panelProducto = new System.Windows.Forms.Panel();
            this.label6 = new System.Windows.Forms.Label();
            this.button3 = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            this.checkBox1 = new System.Windows.Forms.CheckBox();
            this.label5 = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.textBox3 = new System.Windows.Forms.TextBox();
            this.richTextBox1 = new System.Windows.Forms.RichTextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.textBox2 = new System.Windows.Forms.TextBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.panel_inventario.SuspendLayout();
            this.panelMain.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.panelProducto.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
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
            // 
            // panelMain
            // 
            this.panelMain.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelMain.Controls.Add(this.panelProducto);
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
            // panelProducto
            // 
            this.panelProducto.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelProducto.Controls.Add(this.label6);
            this.panelProducto.Controls.Add(this.button3);
            this.panelProducto.Controls.Add(this.button2);
            this.panelProducto.Controls.Add(this.button1);
            this.panelProducto.Controls.Add(this.checkBox1);
            this.panelProducto.Controls.Add(this.label5);
            this.panelProducto.Controls.Add(this.label4);
            this.panelProducto.Controls.Add(this.textBox3);
            this.panelProducto.Controls.Add(this.richTextBox1);
            this.panelProducto.Controls.Add(this.label3);
            this.panelProducto.Controls.Add(this.textBox2);
            this.panelProducto.Controls.Add(this.textBox1);
            this.panelProducto.Controls.Add(this.label2);
            this.panelProducto.Controls.Add(this.label1);
            this.panelProducto.Controls.Add(this.dataGridView1);
            this.panelProducto.Location = new System.Drawing.Point(-2, -2);
            this.panelProducto.Name = "panelProducto";
            this.panelProducto.Size = new System.Drawing.Size(923, 525);
            this.panelProducto.TabIndex = 7;
            this.panelProducto.Visible = false;
            this.panelProducto.Paint += new System.Windows.Forms.PaintEventHandler(this.panelProducto_Paint);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(541, 40);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(57, 13);
            this.label6.TabIndex = 30;
            this.label6.Text = "Categorias";
            // 
            // button3
            // 
            this.button3.Location = new System.Drawing.Point(654, 183);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(75, 23);
            this.button3.TabIndex = 29;
            this.button3.Text = "button3";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button2
            // 
            this.button2.Location = new System.Drawing.Point(751, 183);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(75, 23);
            this.button2.TabIndex = 28;
            this.button2.Text = "button2";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(841, 183);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 27;
            this.button1.Text = "button1";
            this.button1.UseVisualStyleBackColor = true;
            // 
            // checkBox1
            // 
            this.checkBox1.AutoSize = true;
            this.checkBox1.Location = new System.Drawing.Point(246, 55);
            this.checkBox1.Name = "checkBox1";
            this.checkBox1.Size = new System.Drawing.Size(75, 17);
            this.checkBox1.TabIndex = 26;
            this.checkBox1.Text = "Disponible";
            this.checkBox1.UseVisualStyleBackColor = true;
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(10, 193);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(100, 13);
            this.label5.TabIndex = 25;
            this.label5.Text = "Detalle de producto";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(10, 55);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(37, 13);
            this.label4.TabIndex = 24;
            this.label4.Text = "Marca";
            // 
            // textBox3
            // 
            this.textBox3.Location = new System.Drawing.Point(79, 52);
            this.textBox3.Name = "textBox3";
            this.textBox3.Size = new System.Drawing.Size(146, 20);
            this.textBox3.TabIndex = 23;
            // 
            // richTextBox1
            // 
            this.richTextBox1.Location = new System.Drawing.Point(79, 101);
            this.richTextBox1.Name = "richTextBox1";
            this.richTextBox1.Size = new System.Drawing.Size(343, 57);
            this.richTextBox1.TabIndex = 22;
            this.richTextBox1.Text = "";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(10, 104);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(63, 13);
            this.label3.TabIndex = 21;
            this.label3.Text = "Descripcion";
            // 
            // textBox2
            // 
            this.textBox2.Location = new System.Drawing.Point(276, 11);
            this.textBox2.Name = "textBox2";
            this.textBox2.Size = new System.Drawing.Size(146, 20);
            this.textBox2.TabIndex = 20;
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(79, 11);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(146, 20);
            this.textBox1.TabIndex = 19;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(243, 14);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(18, 13);
            this.label2.TabIndex = 18;
            this.label2.Text = "ID";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(10, 14);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 17;
            this.label1.Text = "Nombre";
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(3, 212);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(913, 306);
            this.dataGridView1.TabIndex = 16;
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
            this.panelMain.ResumeLayout(false);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.panelProducto.ResumeLayout(false);
            this.panelProducto.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
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
        private System.Windows.Forms.Panel panelProducto;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.CheckBox checkBox1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox textBox3;
        private System.Windows.Forms.RichTextBox richTextBox1;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox textBox2;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DataGridView dataGridView1;
    }
}