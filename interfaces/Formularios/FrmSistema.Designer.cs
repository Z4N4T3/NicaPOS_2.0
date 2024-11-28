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
            System.ComponentModel.ComponentResourceManager resources = new System.ComponentModel.ComponentResourceManager(typeof(FrmSistema));
            this.FrmUsuario = new System.Windows.Forms.Panel();
            this.button1 = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.txt_usr_id = new System.Windows.Forms.TextBox();
            this.BtnDeshabilitar_usr = new System.Windows.Forms.Button();
            this.BtnActualizar_usr = new System.Windows.Forms.Button();
            this.gridUsuario = new System.Windows.Forms.DataGridView();
            this.menuStrip1 = new System.Windows.Forms.MenuStrip();
            this.nuevoUsuarioToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.editarToolStripMenuItem = new System.Windows.Forms.ToolStripMenuItem();
            this.flowLayoutPanel1 = new System.Windows.Forms.FlowLayoutPanel();
            this.btnSistema = new System.Windows.Forms.Button();
            this.btnCompra = new System.Windows.Forms.Button();
            this.btnVenta = new System.Windows.Forms.Button();
            this.btnCaja = new System.Windows.Forms.Button();
            this.btnNegocio = new System.Windows.Forms.Button();
            this.panelOpt = new System.Windows.Forms.FlowLayoutPanel();
            this.btn_salir = new System.Windows.Forms.Button();
            this.button2 = new System.Windows.Forms.Button();
            this.button3 = new System.Windows.Forms.Button();
            this.button4 = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.flowLayoutPanel2 = new System.Windows.Forms.FlowLayoutPanel();
            this.lbl_name = new System.Windows.Forms.Label();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.lbl_cargo = new System.Windows.Forms.Label();
            this.lb_eid = new System.Windows.Forms.Label();
            this.FrmUsuario.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridUsuario)).BeginInit();
            this.menuStrip1.SuspendLayout();
            this.flowLayoutPanel1.SuspendLayout();
            this.panelOpt.SuspendLayout();
            this.panel1.SuspendLayout();
            this.flowLayoutPanel2.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // FrmUsuario
            // 
            this.FrmUsuario.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.FrmUsuario.Controls.Add(this.button1);
            this.FrmUsuario.Controls.Add(this.label4);
            this.FrmUsuario.Controls.Add(this.txt_usr_id);
            this.FrmUsuario.Controls.Add(this.BtnDeshabilitar_usr);
            this.FrmUsuario.Controls.Add(this.BtnActualizar_usr);
            this.FrmUsuario.Controls.Add(this.gridUsuario);
            this.FrmUsuario.Controls.Add(this.menuStrip1);
            this.FrmUsuario.Location = new System.Drawing.Point(217, 117);
            this.FrmUsuario.Name = "FrmUsuario";
            this.FrmUsuario.Size = new System.Drawing.Size(955, 530);
            this.FrmUsuario.TabIndex = 6;
            this.FrmUsuario.Paint += new System.Windows.Forms.PaintEventHandler(this.FrmUsuario_Paint);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(842, 26);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 12;
            this.button1.Text = "Buscar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.Location = new System.Drawing.Point(677, 31);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(34, 13);
            this.label4.TabIndex = 11;
            this.label4.Text = "UUID";
            // 
            // txt_usr_id
            // 
            this.txt_usr_id.Location = new System.Drawing.Point(717, 26);
            this.txt_usr_id.Name = "txt_usr_id";
            this.txt_usr_id.Size = new System.Drawing.Size(119, 20);
            this.txt_usr_id.TabIndex = 10;
            // 
            // BtnDeshabilitar_usr
            // 
            this.BtnDeshabilitar_usr.Location = new System.Drawing.Point(842, 122);
            this.BtnDeshabilitar_usr.Name = "BtnDeshabilitar_usr";
            this.BtnDeshabilitar_usr.Size = new System.Drawing.Size(75, 23);
            this.BtnDeshabilitar_usr.TabIndex = 5;
            this.BtnDeshabilitar_usr.Text = "Eliminar";
            this.BtnDeshabilitar_usr.UseVisualStyleBackColor = true;
            this.BtnDeshabilitar_usr.Click += new System.EventHandler(this.BtnDeshabilitar_usr_Click);
            // 
            // BtnActualizar_usr
            // 
            this.BtnActualizar_usr.Location = new System.Drawing.Point(761, 122);
            this.BtnActualizar_usr.Name = "BtnActualizar_usr";
            this.BtnActualizar_usr.Size = new System.Drawing.Size(75, 23);
            this.BtnActualizar_usr.TabIndex = 4;
            this.BtnActualizar_usr.Text = "Actualizar";
            this.BtnActualizar_usr.UseVisualStyleBackColor = true;
            this.BtnActualizar_usr.Click += new System.EventHandler(this.BtnActualizar_usr_Click);
            // 
            // gridUsuario
            // 
            this.gridUsuario.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridUsuario.Location = new System.Drawing.Point(3, 178);
            this.gridUsuario.Name = "gridUsuario";
            this.gridUsuario.Size = new System.Drawing.Size(945, 337);
            this.gridUsuario.TabIndex = 1;
            this.gridUsuario.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // menuStrip1
            // 
            this.menuStrip1.Items.AddRange(new System.Windows.Forms.ToolStripItem[] {
            this.nuevoUsuarioToolStripMenuItem,
            this.editarToolStripMenuItem});
            this.menuStrip1.Location = new System.Drawing.Point(0, 0);
            this.menuStrip1.Name = "menuStrip1";
            this.menuStrip1.Size = new System.Drawing.Size(951, 24);
            this.menuStrip1.TabIndex = 14;
            this.menuStrip1.Text = "Editar";
            // 
            // nuevoUsuarioToolStripMenuItem
            // 
            this.nuevoUsuarioToolStripMenuItem.Name = "nuevoUsuarioToolStripMenuItem";
            this.nuevoUsuarioToolStripMenuItem.Size = new System.Drawing.Size(50, 20);
            this.nuevoUsuarioToolStripMenuItem.Text = "Crear ";
            this.nuevoUsuarioToolStripMenuItem.Click += new System.EventHandler(this.nuevoUsuarioToolStripMenuItem_Click);
            // 
            // editarToolStripMenuItem
            // 
            this.editarToolStripMenuItem.Name = "editarToolStripMenuItem";
            this.editarToolStripMenuItem.Size = new System.Drawing.Size(49, 20);
            this.editarToolStripMenuItem.Text = "Editar";
            // 
            // flowLayoutPanel1
            // 
            this.flowLayoutPanel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(168)))), ((int)(((byte)(232)))));
            this.flowLayoutPanel1.Controls.Add(this.btnSistema);
            this.flowLayoutPanel1.Controls.Add(this.btnCompra);
            this.flowLayoutPanel1.Controls.Add(this.btnVenta);
            this.flowLayoutPanel1.Controls.Add(this.btnCaja);
            this.flowLayoutPanel1.Controls.Add(this.btnNegocio);
            this.flowLayoutPanel1.Location = new System.Drawing.Point(2, 1);
            this.flowLayoutPanel1.Name = "flowLayoutPanel1";
            this.flowLayoutPanel1.Size = new System.Drawing.Size(1187, 110);
            this.flowLayoutPanel1.TabIndex = 7;
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
            this.panelOpt.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(126)))), ((int)(((byte)(167)))));
            this.panelOpt.Controls.Add(this.btn_salir);
            this.panelOpt.Controls.Add(this.button2);
            this.panelOpt.Controls.Add(this.button3);
            this.panelOpt.Controls.Add(this.button4);
            this.panelOpt.FlowDirection = System.Windows.Forms.FlowDirection.BottomUp;
            this.panelOpt.Location = new System.Drawing.Point(1, 389);
            this.panelOpt.Name = "panelOpt";
            this.panelOpt.Size = new System.Drawing.Size(215, 370);
            this.panelOpt.TabIndex = 8;
            // 
            // btn_salir
            // 
            this.btn_salir.AutoSize = true;
            this.btn_salir.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.btn_salir.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(23)))), ((int)(((byte)(31)))));
            this.btn_salir.Location = new System.Drawing.Point(3, 309);
            this.btn_salir.Name = "btn_salir";
            this.btn_salir.Size = new System.Drawing.Size(196, 58);
            this.btn_salir.TabIndex = 1;
            this.btn_salir.Text = "Salir";
            this.btn_salir.UseVisualStyleBackColor = true;
            this.btn_salir.Click += new System.EventHandler(this.btn_salir_Click);
            // 
            // button2
            // 
            this.button2.AutoSize = true;
            this.button2.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(23)))), ((int)(((byte)(31)))));
            this.button2.Location = new System.Drawing.Point(3, 245);
            this.button2.Name = "button2";
            this.button2.Size = new System.Drawing.Size(196, 58);
            this.button2.TabIndex = 0;
            this.button2.Text = "Texto";
            this.button2.UseVisualStyleBackColor = true;
            // 
            // button3
            // 
            this.button3.AutoSize = true;
            this.button3.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(23)))), ((int)(((byte)(31)))));
            this.button3.Location = new System.Drawing.Point(3, 181);
            this.button3.Name = "button3";
            this.button3.Size = new System.Drawing.Size(196, 58);
            this.button3.TabIndex = 2;
            this.button3.Text = "Texto";
            this.button3.UseVisualStyleBackColor = true;
            // 
            // button4
            // 
            this.button4.AutoSize = true;
            this.button4.Font = new System.Drawing.Font("Microsoft Sans Serif", 14F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.button4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(23)))), ((int)(((byte)(31)))));
            this.button4.Location = new System.Drawing.Point(3, 117);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(196, 58);
            this.button4.TabIndex = 3;
            this.button4.Text = "Usuarios";
            this.button4.UseVisualStyleBackColor = true;
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(0)))), ((int)(((byte)(126)))), ((int)(((byte)(167)))));
            this.panel1.Controls.Add(this.flowLayoutPanel2);
            this.panel1.Location = new System.Drawing.Point(2, 110);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(214, 292);
            this.panel1.TabIndex = 10;
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
            // FrmSistema
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(1184, 761);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.panelOpt);
            this.Controls.Add(this.flowLayoutPanel1);
            this.Controls.Add(this.FrmUsuario);
            this.MainMenuStrip = this.menuStrip1;
            this.Name = "FrmSistema";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmSistema";
            this.Load += new System.EventHandler(this.FrmSistema_Load);
            this.FrmUsuario.ResumeLayout(false);
            this.FrmUsuario.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.gridUsuario)).EndInit();
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
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

        private System.Windows.Forms.Panel FrmUsuario;
        private System.Windows.Forms.Button BtnDeshabilitar_usr;
        private System.Windows.Forms.Button BtnActualizar_usr;
        private System.Windows.Forms.DataGridView gridUsuario;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txt_usr_id;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel1;
        private System.Windows.Forms.Button btnSistema;
        private System.Windows.Forms.Button btnCompra;
        private System.Windows.Forms.Button btnVenta;
        private System.Windows.Forms.Button btnCaja;
        private System.Windows.Forms.Button btnNegocio;
        private System.Windows.Forms.FlowLayoutPanel panelOpt;
        private System.Windows.Forms.Button btn_salir;
        private System.Windows.Forms.Button button2;
        private System.Windows.Forms.Button button3;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.MenuStrip menuStrip1;
        private System.Windows.Forms.ToolStripMenuItem nuevoUsuarioToolStripMenuItem;
        private System.Windows.Forms.ToolStripMenuItem editarToolStripMenuItem;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.FlowLayoutPanel flowLayoutPanel2;
        private System.Windows.Forms.Label lbl_name;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Label lbl_cargo;
        private System.Windows.Forms.Label lb_eid;
    }
}