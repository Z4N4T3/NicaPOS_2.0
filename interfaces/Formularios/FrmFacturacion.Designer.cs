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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmFacturacion));
            this.panelMain = new System.Windows.Forms.Panel();
            this.splitContainer1 = new System.Windows.Forms.SplitContainer();
            this.groupBox_Servicios = new System.Windows.Forms.GroupBox();
            this.dtGrid_servicio = new System.Windows.Forms.DataGridView();
            this.groupBox_Productos = new System.Windows.Forms.GroupBox();
            this.dtGrid_producto = new System.Windows.Forms.DataGridView();
            this.groupBox_DatosGenerales = new System.Windows.Forms.GroupBox();
            this.img_producto = new System.Windows.Forms.PictureBox();
            this.input_qty = new System.Windows.Forms.NumericUpDown();
            this.btn_agregar = new System.Windows.Forms.Button();
            this.txt_buscar = new System.Windows.Forms.TextBox();
            this.btb_buscar = new System.Windows.Forms.Button();
            this.label3 = new System.Windows.Forms.Label();
            this.lb_categoria = new System.Windows.Forms.Label();
            this.lb_nombreItem = new System.Windows.Forms.Label();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.lb_total = new System.Windows.Forms.Label();
            this.lb_iva = new System.Windows.Forms.Label();
            this.lb_descuento = new System.Windows.Forms.Label();
            this.lb_subtotal = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.btn_cancelar = new System.Windows.Forms.Button();
            this.btn_facturar = new System.Windows.Forms.Button();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.lb_tasa = new System.Windows.Forms.Label();
            this.label4 = new System.Windows.Forms.Label();
            this.lb_cliente = new System.Windows.Forms.Label();
            this.lb_ruc = new System.Windows.Forms.Label();
            this.label5 = new System.Windows.Forms.Label();
            this.label6 = new System.Windows.Forms.Label();
            this.lb_nombre_negocio = new System.Windows.Forms.Label();
            this.dtGrid_det = new System.Windows.Forms.DataGridView();
            this.Column1 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column2 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column3 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Column4 = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.btnSistema = new System.Windows.Forms.Button();
            this.btnCompra = new System.Windows.Forms.Button();
            this.btnVenta = new System.Windows.Forms.Button();
            this.btnCaja = new System.Windows.Forms.Button();
            this.btnNegocio = new System.Windows.Forms.Button();
            this.panelOpt = new System.Windows.Forms.FlowLayoutPanel();
            this.btn_salir = new System.Windows.Forms.Button();
            this.Btn_reporte = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.flowLayoutPanel2 = new System.Windows.Forms.FlowLayoutPanel();
            this.lbl_name = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lbl_cargo = new System.Windows.Forms.Label();
            this.lb_eid = new System.Windows.Forms.Label();
            this.panelMain.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).BeginInit();
            this.splitContainer1.Panel1.SuspendLayout();
            this.splitContainer1.Panel2.SuspendLayout();
            this.splitContainer1.SuspendLayout();
            this.groupBox_Servicios.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtGrid_servicio)).BeginInit();
            this.groupBox_Productos.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtGrid_producto)).BeginInit();
            this.groupBox_DatosGenerales.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.img_producto)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.input_qty)).BeginInit();
            this.groupBox3.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.groupBox1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtGrid_det)).BeginInit();
            this.flowLayoutPanel1.SuspendLayout();
            this.panelOpt.SuspendLayout();
            this.panel1.SuspendLayout();
            this.flowLayoutPanel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // panelMain
            // 
            this.panelMain.BackColor = System.Drawing.SystemColors.HighlightText;
            this.panelMain.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.panelMain.Controls.Add(this.splitContainer1);
            this.panelMain.Location = new System.Drawing.Point(212, 109);
            this.panelMain.Name = "panelMain";
            this.panelMain.Size = new System.Drawing.Size(975, 652);
            this.panelMain.TabIndex = 6;
            this.panelMain.Paint += new System.Windows.Forms.PaintEventHandler(this.panelMain_Paint);
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
            this.splitContainer1.Panel2.Controls.Add(this.groupBox1);
            this.splitContainer1.Panel2.Controls.Add(this.dtGrid_det);
            this.splitContainer1.Size = new System.Drawing.Size(971, 648);
            this.splitContainer1.SplitterDistance = 619;
            this.splitContainer1.TabIndex = 0;
            // 
            // groupBox_Servicios
            // 
            this.groupBox_Servicios.Controls.Add(this.dtGrid_servicio);
            this.groupBox_Servicios.Location = new System.Drawing.Point(3, 380);
            this.groupBox_Servicios.Name = "groupBox_Servicios";
            this.groupBox_Servicios.Size = new System.Drawing.Size(599, 246);
            this.groupBox_Servicios.TabIndex = 2;
            this.groupBox_Servicios.TabStop = false;
            this.groupBox_Servicios.Text = "Servicios";
            // 
            // dtGrid_servicio
            // 
            this.dtGrid_servicio.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dtGrid_servicio.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(49)))), ((int)(((byte)(54)))), ((int)(((byte)(56)))));
            this.dtGrid_servicio.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtGrid_servicio.Location = new System.Drawing.Point(6, 19);
            this.dtGrid_servicio.Name = "dtGrid_servicio";
            this.dtGrid_servicio.Size = new System.Drawing.Size(587, 221);
            this.dtGrid_servicio.TabIndex = 0;
            // 
            // groupBox_Productos
            // 
            this.groupBox_Productos.Controls.Add(this.dtGrid_producto);
            this.groupBox_Productos.Location = new System.Drawing.Point(3, 171);
            this.groupBox_Productos.Name = "groupBox_Productos";
            this.groupBox_Productos.Size = new System.Drawing.Size(602, 203);
            this.groupBox_Productos.TabIndex = 1;
            this.groupBox_Productos.TabStop = false;
            this.groupBox_Productos.Text = "Productos";
            // 
            // dtGrid_producto
            // 
            this.dtGrid_producto.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dtGrid_producto.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(49)))), ((int)(((byte)(54)))), ((int)(((byte)(56)))));
            this.dtGrid_producto.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtGrid_producto.Dock = System.Windows.Forms.DockStyle.Fill;
            this.dtGrid_producto.Location = new System.Drawing.Point(3, 16);
            this.dtGrid_producto.Name = "dtGrid_producto";
            this.dtGrid_producto.Size = new System.Drawing.Size(596, 184);
            this.dtGrid_producto.TabIndex = 0;
            this.dtGrid_producto.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtGrid_producto_CellContentClick);
            // 
            // groupBox_DatosGenerales
            // 
            this.groupBox_DatosGenerales.Controls.Add(this.img_producto);
            this.groupBox_DatosGenerales.Controls.Add(this.input_qty);
            this.groupBox_DatosGenerales.Controls.Add(this.btn_agregar);
            this.groupBox_DatosGenerales.Controls.Add(this.txt_buscar);
            this.groupBox_DatosGenerales.Controls.Add(this.btb_buscar);
            this.groupBox_DatosGenerales.Controls.Add(this.label3);
            this.groupBox_DatosGenerales.Controls.Add(this.lb_categoria);
            this.groupBox_DatosGenerales.Controls.Add(this.lb_nombreItem);
            this.groupBox_DatosGenerales.Location = new System.Drawing.Point(3, 3);
            this.groupBox_DatosGenerales.Name = "groupBox_DatosGenerales";
            this.groupBox_DatosGenerales.Size = new System.Drawing.Size(599, 162);
            this.groupBox_DatosGenerales.TabIndex = 0;
            this.groupBox_DatosGenerales.TabStop = false;
            this.groupBox_DatosGenerales.Text = "Datos Generales";
            // 
            // img_producto
            // 
            this.img_producto.Location = new System.Drawing.Point(468, 19);
            this.img_producto.Name = "img_producto";
            this.img_producto.Size = new System.Drawing.Size(100, 100);
            this.img_producto.TabIndex = 7;
            this.img_producto.TabStop = false;
            // 
            // input_qty
            // 
            this.input_qty.Location = new System.Drawing.Point(443, 136);
            this.input_qty.Name = "input_qty";
            this.input_qty.Size = new System.Drawing.Size(44, 20);
            this.input_qty.TabIndex = 6;
            // 
            // btn_agregar
            // 
            this.btn_agregar.BackColor = System.Drawing.Color.DeepSkyBlue;
            this.btn_agregar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btn_agregar.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_agregar.ForeColor = System.Drawing.SystemColors.Control;
            this.btn_agregar.Location = new System.Drawing.Point(493, 136);
            this.btn_agregar.Name = "btn_agregar";
            this.btn_agregar.Size = new System.Drawing.Size(75, 23);
            this.btn_agregar.TabIndex = 1;
            this.btn_agregar.Text = "Agregar";
            this.btn_agregar.UseVisualStyleBackColor = false;
            this.btn_agregar.Click += new System.EventHandler(this.btn_agregar_Click);
            // 
            // txt_buscar
            // 
            this.txt_buscar.Location = new System.Drawing.Point(52, 133);
            this.txt_buscar.Name = "txt_buscar";
            this.txt_buscar.Size = new System.Drawing.Size(304, 20);
            this.txt_buscar.TabIndex = 5;
            // 
            // btb_buscar
            // 
            this.btb_buscar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btb_buscar.Location = new System.Drawing.Point(362, 133);
            this.btb_buscar.Name = "btb_buscar";
            this.btb_buscar.Size = new System.Drawing.Size(75, 23);
            this.btb_buscar.TabIndex = 4;
            this.btb_buscar.Text = "Buscar";
            this.btb_buscar.UseVisualStyleBackColor = true;
            this.btb_buscar.Click += new System.EventHandler(this.btb_buscar_Click);
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
            // lb_categoria
            // 
            this.lb_categoria.AutoSize = true;
            this.lb_categoria.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_categoria.Location = new System.Drawing.Point(39, 29);
            this.lb_categoria.Name = "lb_categoria";
            this.lb_categoria.Size = new System.Drawing.Size(61, 13);
            this.lb_categoria.TabIndex = 1;
            this.lb_categoria.Text = "Categoria";
            this.lb_categoria.Click += new System.EventHandler(this.lb_categoria_Click);
            // 
            // lb_nombreItem
            // 
            this.lb_nombreItem.AutoSize = true;
            this.lb_nombreItem.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_nombreItem.Location = new System.Drawing.Point(39, 54);
            this.lb_nombreItem.Name = "lb_nombreItem";
            this.lb_nombreItem.Size = new System.Drawing.Size(50, 13);
            this.lb_nombreItem.TabIndex = 0;
            this.lb_nombreItem.Text = "Nombre";
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
            this.groupBox3.Location = new System.Drawing.Point(12, 405);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(329, 108);
            this.groupBox3.TabIndex = 3;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Retenciones";
            // 
            // lb_total
            // 
            this.lb_total.AutoSize = true;
            this.lb_total.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_total.Location = new System.Drawing.Point(277, 84);
            this.lb_total.Name = "lb_total";
            this.lb_total.Size = new System.Drawing.Size(39, 13);
            this.lb_total.TabIndex = 7;
            this.lb_total.Text = "00.00";
            // 
            // lb_iva
            // 
            this.lb_iva.AutoSize = true;
            this.lb_iva.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_iva.Location = new System.Drawing.Point(277, 62);
            this.lb_iva.Name = "lb_iva";
            this.lb_iva.Size = new System.Drawing.Size(39, 13);
            this.lb_iva.TabIndex = 6;
            this.lb_iva.Text = "00.00";
            // 
            // lb_descuento
            // 
            this.lb_descuento.AutoSize = true;
            this.lb_descuento.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_descuento.Location = new System.Drawing.Point(277, 40);
            this.lb_descuento.Name = "lb_descuento";
            this.lb_descuento.Size = new System.Drawing.Size(39, 13);
            this.lb_descuento.TabIndex = 5;
            this.lb_descuento.Text = "00.00";
            // 
            // lb_subtotal
            // 
            this.lb_subtotal.AutoSize = true;
            this.lb_subtotal.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_subtotal.Location = new System.Drawing.Point(277, 16);
            this.lb_subtotal.Name = "lb_subtotal";
            this.lb_subtotal.Size = new System.Drawing.Size(39, 13);
            this.lb_subtotal.TabIndex = 4;
            this.lb_subtotal.Text = "00.00";
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(38, 84);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(40, 13);
            this.label10.TabIndex = 3;
            this.label10.Text = "Total:";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(16, 62);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(62, 13);
            this.label9.TabIndex = 2;
            this.label9.Text = "Impuesto:";
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
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.btn_cancelar);
            this.groupBox2.Controls.Add(this.btn_facturar);
            this.groupBox2.Location = new System.Drawing.Point(12, 519);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(326, 119);
            this.groupBox2.TabIndex = 2;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Facturar";
            // 
            // btn_cancelar
            // 
            this.btn_cancelar.BackColor = System.Drawing.Color.Tomato;
            this.btn_cancelar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btn_cancelar.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_cancelar.ForeColor = System.Drawing.SystemColors.ControlLightLight;
            this.btn_cancelar.Location = new System.Drawing.Point(6, 71);
            this.btn_cancelar.Name = "btn_cancelar";
            this.btn_cancelar.Size = new System.Drawing.Size(310, 42);
            this.btn_cancelar.TabIndex = 1;
            this.btn_cancelar.Text = "Cancelar";
            this.btn_cancelar.UseVisualStyleBackColor = false;
            this.btn_cancelar.Click += new System.EventHandler(this.btn_cancelar_Click);
            // 
            // btn_facturar
            // 
            this.btn_facturar.BackColor = System.Drawing.Color.Orange;
            this.btn_facturar.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.btn_facturar.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_facturar.ForeColor = System.Drawing.SystemColors.Control;
            this.btn_facturar.Location = new System.Drawing.Point(6, 19);
            this.btn_facturar.Name = "btn_facturar";
            this.btn_facturar.Size = new System.Drawing.Size(310, 42);
            this.btn_facturar.TabIndex = 0;
            this.btn_facturar.Text = "Facturar";
            this.btn_facturar.UseVisualStyleBackColor = false;
            this.btn_facturar.Click += new System.EventHandler(this.btn_facturar_Click);
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
            this.groupBox1.Location = new System.Drawing.Point(12, 5);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(332, 120);
            this.groupBox1.TabIndex = 0;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Datos de la Factura";
            // 
            // lb_tasa
            // 
            this.lb_tasa.AutoSize = true;
            this.lb_tasa.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_tasa.Location = new System.Drawing.Point(252, 95);
            this.lb_tasa.Name = "lb_tasa";
            this.lb_tasa.Size = new System.Drawing.Size(39, 13);
            this.lb_tasa.TabIndex = 6;
            this.lb_tasa.Text = "TASA";
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
            // lb_cliente
            // 
            this.lb_cliente.AutoSize = true;
            this.lb_cliente.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_cliente.Location = new System.Drawing.Point(212, 69);
            this.lb_cliente.Name = "lb_cliente";
            this.lb_cliente.Size = new System.Drawing.Size(94, 13);
            this.lb_cliente.TabIndex = 4;
            this.lb_cliente.Text = "Cliente Regular";
            // 
            // lb_ruc
            // 
            this.lb_ruc.AutoSize = true;
            this.lb_ruc.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_ruc.Location = new System.Drawing.Point(212, 45);
            this.lb_ruc.Name = "lb_ruc";
            this.lb_ruc.Size = new System.Drawing.Size(91, 13);
            this.lb_ruc.TabIndex = 3;
            this.lb_ruc.Text = "111111111111";
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
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.Location = new System.Drawing.Point(6, 45);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(33, 13);
            this.label6.TabIndex = 1;
            this.label6.Text = "RUC:";
            // 
            // lb_nombre_negocio
            // 
            this.lb_nombre_negocio.AutoSize = true;
            this.lb_nombre_negocio.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_nombre_negocio.Location = new System.Drawing.Point(107, 16);
            this.lb_nombre_negocio.Name = "lb_nombre_negocio";
            this.lb_nombre_negocio.Size = new System.Drawing.Size(122, 13);
            this.lb_nombre_negocio.TabIndex = 0;
            this.lb_nombre_negocio.Text = "Nombre del Negocio";
            this.lb_nombre_negocio.Click += new System.EventHandler(this.lb_nombre_negocio_Click);
            // 
            // dtGrid_det
            // 
            this.dtGrid_det.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dtGrid_det.BackgroundColor = System.Drawing.Color.FromArgb(((int)(((byte)(49)))), ((int)(((byte)(54)))), ((int)(((byte)(56)))));
            this.dtGrid_det.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dtGrid_det.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Column1,
            this.Column2,
            this.Column3,
            this.Column4});
            this.dtGrid_det.Location = new System.Drawing.Point(12, 131);
            this.dtGrid_det.Name = "dtGrid_det";
            this.dtGrid_det.Size = new System.Drawing.Size(332, 268);
            this.dtGrid_det.TabIndex = 1;
            this.dtGrid_det.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dtGrid_det_CellContentClick);
            // 
            // Column1
            // 
            this.Column1.HeaderText = "Cantidad";
            this.Column1.Name = "Column1";
            // 
            // Column2
            // 
            this.Column2.HeaderText = "Articulo";
            this.Column2.Name = "Column2";
            // 
            // Column3
            // 
            this.Column3.HeaderText = "P.Unit";
            this.Column3.Name = "Column3";
            // 
            // Column4
            // 
            this.Column4.HeaderText = "TOTAL\'";
            this.Column4.Name = "Column4";
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.BackColor = System.Drawing.SystemColors.Highlight;
            this.flowLayoutPanel1.Controls.Add(this.btnSistema);
            this.flowLayoutPanel1.Controls.Add(this.btnCompra);
            this.flowLayoutPanel1.Controls.Add(this.btnVenta);
            this.flowLayoutPanel1.Controls.Add(this.btnCaja);
            this.flowLayoutPanel1.Controls.Add(this.btnNegocio);
            this.flowLayoutPanel1.Dock = System.Windows.Forms.DockStyle.Top;
            this.flowLayoutPanel1.Location = new System.Drawing.Point(0, 0);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(1184, 110);
            this.flowLayoutPanel1.TabIndex = 7;
            this.flowLayoutPanel1.Paint += new System.Windows.Forms.PaintEventHandler(this.flowLayoutPanel1_Paint);
            // 
            // btnSistema
            // 
            this.btnSistema.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(168)))), ((int)(((byte)(232)))));
            this.btnSistema.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnSistema.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnSistema.ForeColor = System.Drawing.Color.White;
            this.btnSistema.Image = ((System.Drawing.Image)(resources.GetObject("btnSistema.Image")));
            this.btnSistema.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.btnSistema.Location = new System.Drawing.Point(3, 3);
            this.btnSistema.Name = "btnSistema";
            this.btnSistema.Size = new System.Drawing.Size(100, 100);
            this.btnSistema.TabIndex = 3;
            this.btnSistema.Text = "Sistema";
            this.btnSistema.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.btnSistema.UseVisualStyleBackColor = false;
            // 
            // btnCompra
            // 
            this.btnCompra.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(168)))), ((int)(((byte)(232)))));
            this.btnCompra.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnCompra.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCompra.ForeColor = System.Drawing.Color.White;
            this.btnCompra.Image = ((System.Drawing.Image)(resources.GetObject("btnCompra.Image")));
            this.btnCompra.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.btnCompra.Location = new System.Drawing.Point(109, 3);
            this.btnCompra.Name = "btnCompra";
            this.btnCompra.Size = new System.Drawing.Size(100, 100);
            this.btnCompra.TabIndex = 4;
            this.btnCompra.Text = "Compra";
            this.btnCompra.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.btnCompra.UseVisualStyleBackColor = false;
            // 
            // btnVenta
            // 
            this.btnVenta.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(168)))), ((int)(((byte)(232)))));
            this.btnVenta.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnVenta.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnVenta.ForeColor = System.Drawing.Color.White;
            this.btnVenta.Image = ((System.Drawing.Image)(resources.GetObject("btnVenta.Image")));
            this.btnVenta.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.btnVenta.Location = new System.Drawing.Point(215, 3);
            this.btnVenta.Name = "btnVenta";
            this.btnVenta.Size = new System.Drawing.Size(100, 100);
            this.btnVenta.TabIndex = 5;
            this.btnVenta.Text = "Venta";
            this.btnVenta.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.btnVenta.UseVisualStyleBackColor = false;
            // 
            // btnCaja
            // 
            this.btnCaja.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(168)))), ((int)(((byte)(232)))));
            this.btnCaja.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnCaja.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnCaja.ForeColor = System.Drawing.Color.White;
            this.btnCaja.Image = ((System.Drawing.Image)(resources.GetObject("btnCaja.Image")));
            this.btnCaja.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.btnCaja.Location = new System.Drawing.Point(321, 3);
            this.btnCaja.Name = "btnCaja";
            this.btnCaja.Size = new System.Drawing.Size(100, 100);
            this.btnCaja.TabIndex = 6;
            this.btnCaja.Text = "Caja";
            this.btnCaja.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.btnCaja.UseVisualStyleBackColor = false;
            // 
            // btnNegocio
            // 
            this.btnNegocio.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(168)))), ((int)(((byte)(232)))));
            this.btnNegocio.BackgroundImageLayout = System.Windows.Forms.ImageLayout.None;
            this.btnNegocio.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btnNegocio.ForeColor = System.Drawing.Color.White;
            this.btnNegocio.Image = ((System.Drawing.Image)(resources.GetObject("btnNegocio.Image")));
            this.btnNegocio.ImageAlign = System.Drawing.ContentAlignment.TopCenter;
            this.btnNegocio.Location = new System.Drawing.Point(427, 3);
            this.btnNegocio.Name = "btnNegocio";
            this.btnNegocio.Size = new System.Drawing.Size(100, 100);
            this.btnNegocio.TabIndex = 7;
            this.btnNegocio.Text = "Negocio";
            this.btnNegocio.TextImageRelation = System.Windows.Forms.TextImageRelation.ImageAboveText;
            this.btnNegocio.UseVisualStyleBackColor = false;
            // 
            // panelOpt
            // 
            this.panelOpt.BackColor = System.Drawing.SystemColors.Highlight;
            this.panelOpt.Controls.Add(this.btn_salir);
            this.panelOpt.Controls.Add(this.Btn_reporte);
            this.panelOpt.FlowDirection = System.Windows.Forms.FlowDirection.BottomUp;
            this.panelOpt.Location = new System.Drawing.Point(-3, 394);
            this.panelOpt.Name = "panelOpt";
            this.panelOpt.Size = new System.Drawing.Size(217, 370);
            this.panelOpt.TabIndex = 8;
            // 
            // btn_salir
            // 
            this.btn_salir.AutoSize = true;
            this.btn_salir.BackColor = System.Drawing.Color.White;
            this.btn_salir.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.btn_salir.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_salir.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(23)))), ((int)(((byte)(31)))));
            this.btn_salir.Location = new System.Drawing.Point(3, 309);
            this.btn_salir.Name = "btn_salir";
            this.btn_salir.Size = new System.Drawing.Size(211, 58);
            this.btn_salir.TabIndex = 1;
            this.btn_salir.Text = "Salir";
            this.btn_salir.UseVisualStyleBackColor = false;
            this.btn_salir.Click += new System.EventHandler(this.btn_salir_Click);
            // 
            // Btn_reporte
            // 
            this.Btn_reporte.AutoSize = true;
            this.Btn_reporte.BackColor = System.Drawing.Color.White;
            this.Btn_reporte.FlatStyle = System.Windows.Forms.FlatStyle.Flat;
            this.Btn_reporte.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.Btn_reporte.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(23)))), ((int)(((byte)(31)))));
            this.Btn_reporte.Location = new System.Drawing.Point(3, 245);
            this.Btn_reporte.Name = "Btn_reporte";
            this.Btn_reporte.Size = new System.Drawing.Size(211, 58);
            this.Btn_reporte.TabIndex = 0;
            this.Btn_reporte.Text = "Reportes";
            this.Btn_reporte.UseVisualStyleBackColor = false;
            this.Btn_reporte.Click += new System.EventHandler(this.Btn_reporte_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.SystemColors.Highlight;
            this.panel1.Controls.Add(this.flowLayoutPanel2);
            this.panel1.Location = new System.Drawing.Point(0, 109);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(214, 292);
            this.panel1.TabIndex = 9;
            // 
            // flowLayoutPanel2
            // 
            this.flowLayoutPanel2.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Top | System.Windows.Forms.AnchorStyles.Bottom)));
            this.flowLayoutPanel2.AutoSize = true;
            this.flowLayoutPanel2.AutoSizeMode = System.Windows.Forms.AutoSizeMode.GrowAndShrink;
            this.flowLayoutPanel2.BackColor = System.Drawing.Color.Transparent;
            this.flowLayoutPanel2.Controls.Add(this.lbl_name);
            this.flowLayoutPanel2.Controls.Add(this.pictureBox1);
            this.flowLayoutPanel2.Controls.Add(this.lbl_cargo);
            this.flowLayoutPanel2.Controls.Add(this.lb_eid);
            this.flowLayoutPanel2.FlowDirection = System.Windows.Forms.FlowDirection.TopDown;
            this.flowLayoutPanel2.Location = new System.Drawing.Point(25, 34);
            this.flowLayoutPanel2.Name = "flowLayoutPanel2";
            this.flowLayoutPanel2.Size = new System.Drawing.Size(161, 201);
            this.flowLayoutPanel2.TabIndex = 4;
            // 
            // lbl_name
            // 
            this.lbl_name.AutoSize = true;
            this.lbl_name.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_name.ForeColor = System.Drawing.Color.White;
            this.lbl_name.Location = new System.Drawing.Point(3, 0);
            this.lbl_name.Name = "lbl_name";
            this.lbl_name.Size = new System.Drawing.Size(155, 20);
            this.lbl_name.TabIndex = 1;
            this.lbl_name.Text = "Nombre Y apellido";
            this.lbl_name.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // pictureBox1
            // 
            this.pictureBox1.Image = ((System.Drawing.Image)(resources.GetObject("pictureBox1.Image")));
            this.pictureBox1.Location = new System.Drawing.Point(3, 23);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(140, 140);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.StretchImage;
            this.pictureBox1.TabIndex = 0;
            this.pictureBox1.TabStop = false;
            // 
            // lbl_cargo
            // 
            this.lbl_cargo.AutoSize = true;
            this.lbl_cargo.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lbl_cargo.ForeColor = System.Drawing.Color.White;
            this.lbl_cargo.Location = new System.Drawing.Point(3, 166);
            this.lbl_cargo.Name = "lbl_cargo";
            this.lbl_cargo.Size = new System.Drawing.Size(49, 16);
            this.lbl_cargo.TabIndex = 3;
            this.lbl_cargo.Text = "Cargo";
            this.lbl_cargo.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // lb_eid
            // 
            this.lb_eid.AutoSize = true;
            this.lb_eid.Font = new System.Drawing.Font("Consolas", 12F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_eid.ForeColor = System.Drawing.Color.White;
            this.lb_eid.Location = new System.Drawing.Point(3, 182);
            this.lb_eid.Name = "lb_eid";
            this.lb_eid.Size = new System.Drawing.Size(108, 19);
            this.lb_eid.TabIndex = 2;
            this.lb_eid.Text = "ID_empleado";
            this.lb_eid.TextAlign = System.Drawing.ContentAlignment.MiddleCenter;
            // 
            // FrmFacturacion
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.Color.White;
            this.ClientSize = new System.Drawing.Size(1184, 761);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panelOpt);
            this.Controls.Add(this.flowLayoutPanel1);
            this.Controls.Add(this.panelMain);
            this.Name = "FrmFacturacion";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmFacturacion";
            this.Load += new System.EventHandler(this.FrmFacturacion_Load);
            this.panelMain.ResumeLayout(false);
            this.splitContainer1.Panel1.ResumeLayout(false);
            this.splitContainer1.Panel2.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.splitContainer1)).EndInit();
            this.splitContainer1.ResumeLayout(false);
            this.groupBox_Servicios.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dtGrid_servicio)).EndInit();
            this.groupBox_Productos.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.dtGrid_producto)).EndInit();
            this.groupBox_DatosGenerales.ResumeLayout(false);
            this.groupBox_DatosGenerales.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.img_producto)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.input_qty)).EndInit();
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dtGrid_det)).EndInit();
            this.flowLayoutPanel1.ResumeLayout(false);
            this.panelOpt.ResumeLayout(false);
            this.panelOpt.PerformLayout();
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            this.flowLayoutPanel2.ResumeLayout(false);
            this.flowLayoutPanel2.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panelMain;
        private System.Windows.Forms.SplitContainer splitContainer1;
        private System.Windows.Forms.GroupBox groupBox_DatosGenerales;
        private System.Windows.Forms.GroupBox groupBox_Servicios;
        private System.Windows.Forms.GroupBox groupBox_Productos;
        private System.Windows.Forms.Label lb_categoria;
        private System.Windows.Forms.Label lb_nombreItem;
        private System.Windows.Forms.Button btb_buscar;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.DataGridView dtGrid_servicio;
        private System.Windows.Forms.DataGridView dtGrid_producto;
        private System.Windows.Forms.DataGridView dtGrid_det;
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
        private System.Windows.Forms.DataGridViewTextBoxColumn Column1;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column3;
        private System.Windows.Forms.DataGridViewTextBoxColumn Column4;
        private System.Windows.Forms.NumericUpDown input_qty;
        private System.Windows.Forms.PictureBox img_producto;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.Button btnSistema;
        private System.Windows.Forms.Button btnCompra;
        private System.Windows.Forms.Button btnVenta;
        private System.Windows.Forms.Button btnCaja;
        private System.Windows.Forms.Button btnNegocio;
        private System.Windows.Forms.FlowLayoutPanel panelOpt;
        private System.Windows.Forms.Button btn_salir;
        private System.Windows.Forms.Button Btn_reporte;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel2;
        private System.Windows.Forms.Label lbl_name;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lbl_cargo;
        private System.Windows.Forms.Label lb_eid;
    }
}