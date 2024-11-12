namespace interfaces.Formularios
{
    partial class FrmFacturacion
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
            this.panelMain = new System.Windows.Forms.Panel();
            this.panelSide = new System.Windows.Forms.Panel();
            this.negocioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.inventarioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.cajaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.reportesToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.sistemaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.ventaToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.groupBox_DatosGenerales = new System.Windows.Forms.GroupBox();
            this.groupBox_Productos = new System.Windows.Forms.GroupBox();
            this.groupBox_Servicios = new System.Windows.Forms.GroupBox();
            this.label1 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.btb_buscar = new System.Windows.Forms.Button();
            this.dtGrid_producto = new System.Windows.Forms.DataGridView();
            this.dtGrid_servicio = new System.Windows.Forms.DataGridView();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lb_nombre_negocio = new System.Windows.Forms.Label();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btn_facturar = new System.Windows.Forms.Button();
            this.btn_cancelar = new System.Windows.Forms.Button();
            this.txt_buscar = new System.Windows.Forms.TextBox();
            this.btn_agregar = new System.Windows.Forms.Button();
            this.label6 = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.lb_ruc = new System.Windows.Forms.Label();
            this.lb_cliente = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.lb_tasa = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.label7 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.lb_subtotal = new System.Windows.Forms.Label();
            this.lb_descuento = new System.Windows.Forms.Label();
            this.lb_iva = new System.Windows.Forms.Label();
            this.lb_total = new System.Windows.Forms.Label();
            this.panelMain.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.groupBox_DatosGenerales.SuspendLayout();
            this.groupBox_Productos.SuspendLayout();
            this.groupBox_Servicios.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtGrid_producto)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtGrid_servicio)).BeginInit();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.groupBox2.SuspendLayout();
            this.groupBox3.SuspendLayout();
            this.SuspendLayout();
            // 
            // panelMain
            // 
            this.panelMain.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelMain.Controls.Add(this.splitContainer1);
            this.panelMain.Location = new System.Drawing.Point(249, 31);
            this.panelMain.Name = "panelMain";
            this.panelMain.Size = new System.Drawing.Size(923, 525);
            this.panelMain.TabIndex = 6;
            this.panelMain.Paint += new System.Windows.Forms.PaintEventHandler(this.panelMain_Paint);
            // 
            // panelSide
            // 
            this.panelSide.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelSide.Location = new System.Drawing.Point(12, 31);
            this.panelSide.Name = "panelSide";
            this.panelSide.Size = new System.Drawing.Size(231, 525);
            this.panelSide.TabIndex = 5;
            this.panelSide.Visible = false;
            this.panelSide.Paint += new System.Windows.Forms.PaintEventHandler(this.panelNegocio_Paint);
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
            this.ventaToolStripMenuItem.Size = new System.Drawing.Size(81, 20);
            this.ventaToolStripMenuItem.Text = "Facturacion";
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
            // splitContainer1
            // 
            this.splitContainer1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.splitContainer1.Location = new System.Drawing.Point(0, 0);
            this.splitContainer1.Name = "splitContainer1";
            // 
            // splitContainer1.Panel1
            // 
            this.splitContainer1.Panel1.Controls.Add(this.groupBox_Servicios);
            this.splitContainer1.Panel1.Controls.Add(this.groupBox_Productos);
            this.splitContainer1.Panel1.Controls.Add(this.groupBox_DatosGenerales);
            // 
            // splitContainer1.Panel2
            // 
            this.splitContainer1.Panel2.Controls.Add(this.groupBox3);
            this.splitContainer1.Panel2.Controls.Add(this.groupBox2);
            this.splitContainer1.Panel2.Controls.Add(this.dataGridView1);
            this.splitContainer1.Panel2.Controls.Add(this.groupBox1);
            this.splitContainer1.Size = new System.Drawing.Size(919, 521);
            this.splitContainer1.SplitterDistance = 654;
            this.splitContainer1.TabIndex = 0;
            // 
            // groupBox_DatosGenerales
            // 
            this.groupBox_DatosGenerales.Controls.Add(this.btn_agregar);
            this.groupBox_DatosGenerales.Controls.Add(this.txt_buscar);
            this.groupBox_DatosGenerales.Controls.Add(this.btb_buscar);
            this.groupBox_DatosGenerales.Controls.Add(this.label3);
            this.groupBox_DatosGenerales.Controls.Add(this.label2);
            this.groupBox_DatosGenerales.Controls.Add(this.label1);
            this.groupBox_DatosGenerales.Location = new System.Drawing.Point(3, 3);
            this.groupBox_DatosGenerales.Name = "groupBox_DatosGenerales";
            this.groupBox_DatosGenerales.Size = new System.Drawing.Size(648, 162);
            this.groupBox_DatosGenerales.TabIndex = 0;
            this.groupBox_DatosGenerales.TabStop = false;
            this.groupBox_DatosGenerales.Text = "Datos Generales";
            // 
            // groupBox_Productos
            // 
            this.groupBox_Productos.Controls.Add(this.dtGrid_producto);
            this.groupBox_Productos.Location = new System.Drawing.Point(3, 171);
            this.groupBox_Productos.Name = "groupBox_Productos";
            this.groupBox_Productos.Size = new System.Drawing.Size(648, 203);
            this.groupBox_Productos.TabIndex = 1;
            this.groupBox_Productos.TabStop = false;
            this.groupBox_Productos.Text = "Productos";
            // 
            // groupBox_Servicios
            // 
            this.groupBox_Servicios.Controls.Add(this.dtGrid_servicio);
            this.groupBox_Servicios.Location = new System.Drawing.Point(3, 380);
            this.groupBox_Servicios.Name = "groupBox_Servicios";
            this.groupBox_Servicios.Size = new System.Drawing.Size(648, 136);
            this.groupBox_Servicios.TabIndex = 2;
            this.groupBox_Servicios.TabStop = false;
            this.groupBox_Servicios.Text = "Servicios";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(39, 54);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(44, 13);
            this.label1.TabIndex = 0;
            this.label1.Text = "Nombre";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(39, 29);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(52, 13);
            this.label2.TabIndex = 1;
            this.label2.Text = "Categoria";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(6, 133);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(40, 13);
            this.label3.TabIndex = 2;
            this.label3.Text = "Codigo";
            // 
            // btb_buscar
            // 
            this.btb_buscar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btb_buscar.Location = new System.Drawing.Point(486, 133);
            this.btb_buscar.Name = "btb_buscar";
            this.btb_buscar.Size = new System.Drawing.Size(75, 23);
            this.btb_buscar.TabIndex = 4;
            this.btb_buscar.Text = "Buscar";
            this.btb_buscar.UseVisualStyleBackColor = true;
            // 
            // dtGrid_producto
            // 
            this.dtGrid_producto.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtGrid_producto.Location = new System.Drawing.Point(6, 19);
            this.dtGrid_producto.Name = "dtGrid_producto";
            this.dtGrid_producto.Size = new System.Drawing.Size(636, 178);
            this.dtGrid_producto.TabIndex = 0;
            // 
            // dtGrid_servicio
            // 
            this.dtGrid_servicio.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtGrid_servicio.Location = new System.Drawing.Point(6, 19);
            this.dtGrid_servicio.Name = "dtGrid_servicio";
            this.dtGrid_servicio.Size = new System.Drawing.Size(636, 111);
            this.dtGrid_servicio.TabIndex = 0;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.lb_tasa);
            this.groupBox1.Controls.Add(this.label4);
            this.groupBox1.Controls.Add(this.lb_cliente);
            this.groupBox1.Controls.Add(this.lb_ruc);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.label6);
            this.groupBox1.Controls.Add(this.lb_nombre_negocio);
            this.groupBox1.Location = new System.Drawing.Point(3, 3);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(255, 120);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Datos de la Factura";
            // 
            // lb_nombre_negocio
            // 
            this.lb_nombre_negocio.AutoSize = true;
            this.lb_nombre_negocio.Location = new System.Drawing.Point(83, 16);
            this.lb_nombre_negocio.Name = "lb_nombre_negocio";
            this.lb_nombre_negocio.Size = new System.Drawing.Size(104, 13);
            this.lb_nombre_negocio.TabIndex = 0;
            this.lb_nombre_negocio.Text = "Nombre del Negocio";
            // 
            // dataGridView1
            // 
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Location = new System.Drawing.Point(3, 129);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.Size = new System.Drawing.Size(255, 150);
            this.dataGridView1.TabIndex = 1;
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btn_cancelar);
            this.groupBox2.Controls.Add(this.btn_facturar);
            this.groupBox2.Location = new System.Drawing.Point(3, 399);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(255, 119);
            this.groupBox2.TabIndex = 2;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Facturar";
            // 
            // btn_facturar
            // 
            this.btn_facturar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btn_facturar.Location = new System.Drawing.Point(6, 19);
            this.btn_facturar.Name = "btn_facturar";
            this.btn_facturar.Size = new System.Drawing.Size(243, 42);
            this.btn_facturar.TabIndex = 0;
            this.btn_facturar.Text = "Facturar";
            this.btn_facturar.UseVisualStyleBackColor = true;
            // 
            // btn_cancelar
            // 
            this.btn_cancelar.BackColor = System.Drawing.Color.Tomato;
            this.btn_cancelar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btn_cancelar.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.btn_cancelar.Location = new System.Drawing.Point(6, 71);
            this.btn_cancelar.Name = "btn_cancelar";
            this.btn_cancelar.Size = new System.Drawing.Size(243, 42);
            this.btn_cancelar.TabIndex = 1;
            this.btn_cancelar.Text = "Cancelar";
            this.btn_cancelar.UseVisualStyleBackColor = false;
            // 
            // txt_buscar
            // 
            this.txt_buscar.Location = new System.Drawing.Point(52, 133);
            this.txt_buscar.Name = "txt_buscar";
            this.txt_buscar.Size = new System.Drawing.Size(428, 20);
            this.txt_buscar.TabIndex = 5;
            // 
            // btn_agregar
            // 
            this.btn_agregar.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.btn_agregar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btn_agregar.ForeColor = System.Drawing.SystemColors.Control;
            this.btn_agregar.Location = new System.Drawing.Point(567, 133);
            this.btn_agregar.Name = "btn_agregar";
            this.btn_agregar.Size = new System.Drawing.Size(75, 23);
            this.btn_agregar.TabIndex = 1;
            this.btn_agregar.Text = "Agregar";
            this.btn_agregar.UseVisualStyleBackColor = false;
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(6, 45);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(33, 13);
            this.label6.TabIndex = 1;
            this.label6.Text = "RUC:";
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 69);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(42, 13);
            this.label5.TabIndex = 2;
            this.label5.Text = "Cliente:";
            // 
            // lb_ruc
            // 
            this.lb_ruc.AutoSize = true;
            this.lb_ruc.Location = new System.Drawing.Point(56, 45);
            this.lb_ruc.Name = "lb_ruc";
            this.lb_ruc.Size = new System.Drawing.Size(79, 13);
            this.lb_ruc.TabIndex = 3;
            this.lb_ruc.Text = "111111111111";
            // 
            // lb_cliente
            // 
            this.lb_cliente.AutoSize = true;
            this.lb_cliente.Location = new System.Drawing.Point(56, 69);
            this.lb_cliente.Name = "lb_cliente";
            this.lb_cliente.Size = new System.Drawing.Size(79, 13);
            this.lb_cliente.TabIndex = 4;
            this.lb_cliente.Text = "Cliente Regular";
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(6, 95);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(84, 13);
            this.label4.TabIndex = 5;
            this.label4.Text = "Tasa de Cambio";
            // 
            // lb_tasa
            // 
            this.lb_tasa.AutoSize = true;
            this.lb_tasa.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_tasa.Location = new System.Drawing.Point(96, 95);
            this.lb_tasa.Name = "lb_tasa";
            this.lb_tasa.Size = new System.Drawing.Size(39, 13);
            this.lb_tasa.TabIndex = 6;
            this.lb_tasa.Text = "TASA";
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.lb_total);
            this.groupBox3.Controls.Add(this.lb_iva);
            this.groupBox3.Controls.Add(this.lb_descuento);
            this.groupBox3.Controls.Add(this.lb_subtotal);
            this.groupBox3.Controls.Add(this.label10);
            this.groupBox3.Controls.Add(this.label9);
            this.groupBox3.Controls.Add(this.label8);
            this.groupBox3.Controls.Add(this.label7);
            this.groupBox3.Location = new System.Drawing.Point(3, 285);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(255, 108);
            this.groupBox3.TabIndex = 3;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Retenciones";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(20, 16);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(58, 13);
            this.label7.TabIndex = 0;
            this.label7.Text = "Subtotal:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(6, 40);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(72, 13);
            this.label8.TabIndex = 1;
            this.label8.Text = "Descuento:";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(16, 70);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(62, 13);
            this.label9.TabIndex = 2;
            this.label9.Text = "Impuesto:";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(38, 92);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(40, 13);
            this.label10.TabIndex = 3;
            this.label10.Text = "Total:";
            // 
            // lb_subtotal
            // 
            this.lb_subtotal.AutoSize = true;
            this.lb_subtotal.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_subtotal.Location = new System.Drawing.Point(210, 16);
            this.lb_subtotal.Name = "lb_subtotal";
            this.lb_subtotal.Size = new System.Drawing.Size(39, 13);
            this.lb_subtotal.TabIndex = 4;
            this.lb_subtotal.Text = "00.00";
            // 
            // lb_descuento
            // 
            this.lb_descuento.AutoSize = true;
            this.lb_descuento.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_descuento.Location = new System.Drawing.Point(210, 40);
            this.lb_descuento.Name = "lb_descuento";
            this.lb_descuento.Size = new System.Drawing.Size(39, 13);
            this.lb_descuento.TabIndex = 5;
            this.lb_descuento.Text = "00.00";
            // 
            // lb_iva
            // 
            this.lb_iva.AutoSize = true;
            this.lb_iva.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_iva.Location = new System.Drawing.Point(210, 70);
            this.lb_iva.Name = "lb_iva";
            this.lb_iva.Size = new System.Drawing.Size(39, 13);
            this.lb_iva.TabIndex = 6;
            this.lb_iva.Text = "00.00";
            // 
            // lb_total
            // 
            this.lb_total.AutoSize = true;
            this.lb_total.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_total.Location = new System.Drawing.Point(210, 92);
            this.lb_total.Name = "lb_total";
            this.lb_total.Size = new System.Drawing.Size(39, 13);
            this.lb_total.TabIndex = 7;
            this.lb_total.Text = "00.00";
            // 
            // FrmFacturacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1184, 561);
            this.Controls.Add(this.panelMain);
            this.Controls.Add(this.panelSide);
            this.Controls.Add(this.menuStrip1);
            this.Name = "FrmFacturacion";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmFacturacion";
            this.panelMain.ResumeLayout(false);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.groupBox_DatosGenerales.ResumeLayout(false);
            this.groupBox_DatosGenerales.PerformLayout();
            this.groupBox_Productos.ResumeLayout(false);
            this.groupBox_Servicios.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dtGrid_producto)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.dtGrid_servicio)).EndInit();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.groupBox2.ResumeLayout(false);
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel panelMain;
        private System.Windows.Forms.Panel panelSide;
        private System.Windows.Forms.ToolStripMenuItem negocioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem inventarioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem cajaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem reportesToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem sistemaToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem ventaToolStripMenuItem;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.GroupBox groupBox_DatosGenerales;
        private System.Windows.Forms.GroupBox groupBox_Servicios;
        private System.Windows.Forms.GroupBox groupBox_Productos;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button btb_buscar;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridView dtGrid_servicio;
        private System.Windows.Forms.DataGridView dtGrid_producto;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.Label lb_nombre_negocio;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Button btn_cancelar;
        private System.Windows.Forms.Button btn_facturar;
        private System.Windows.Forms.TextBox txt_buscar;
        private System.Windows.Forms.Button btn_agregar;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Label lb_cliente;
        private System.Windows.Forms.Label lb_ruc;
        private System.Windows.Forms.Label lb_tasa;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Label lb_subtotal;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Label lb_total;
        private System.Windows.Forms.Label lb_iva;
        private System.Windows.Forms.Label lb_descuento;
    }
}