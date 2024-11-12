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
            this.button1 = new System.Windows.Forms.Button();
            this.label4 = new System.Windows.Forms.Label();
            this.txt_usr_id = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.txt_usr_eid = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.BtnDeshabilitar_usr = new System.Windows.Forms.Button();
            this.BtnActualizar_usr = new System.Windows.Forms.Button();
            this.BtnAgregar_usr = new System.Windows.Forms.Button();
            this.txt_usr_pw = new System.Windows.Forms.TextBox();
            this.gridUsuario = new System.Windows.Forms.DataGridView();
            this.txt_usr_name = new System.Windows.Forms.TextBox();
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
            ((System.ComponentModel.ISupportInitialize)(this.gridUsuario)).BeginInit();
            this.panelSistema.SuspendLayout();
            this.menuStrip1.SuspendLayout();
            this.SuspendLayout();
            // 
            // FrmUsuario
            // 
            this.FrmUsuario.BorderStyle = System.Windows.Forms.BorderStyle.Fixed3D;
            this.FrmUsuario.Controls.Add(this.button1);
            this.FrmUsuario.Controls.Add(this.label4);
            this.FrmUsuario.Controls.Add(this.txt_usr_id);
            this.FrmUsuario.Controls.Add(this.label3);
            this.FrmUsuario.Controls.Add(this.txt_usr_eid);
            this.FrmUsuario.Controls.Add(this.label2);
            this.FrmUsuario.Controls.Add(this.label1);
            this.FrmUsuario.Controls.Add(this.BtnDeshabilitar_usr);
            this.FrmUsuario.Controls.Add(this.BtnActualizar_usr);
            this.FrmUsuario.Controls.Add(this.BtnAgregar_usr);
            this.FrmUsuario.Controls.Add(this.txt_usr_pw);
            this.FrmUsuario.Controls.Add(this.gridUsuario);
            this.FrmUsuario.Controls.Add(this.txt_usr_name);
            this.FrmUsuario.Location = new System.Drawing.Point(248, 27);
            this.FrmUsuario.Name = "FrmUsuario";
            this.FrmUsuario.Size = new System.Drawing.Size(924, 522);
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
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(21, 106);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(83, 13);
            this.label3.TabIndex = 9;
            this.label3.Text = "ID de Empleado";
            // 
            // txt_usr_eid
            // 
            this.txt_usr_eid.Location = new System.Drawing.Point(125, 103);
            this.txt_usr_eid.Name = "txt_usr_eid";
            this.txt_usr_eid.Size = new System.Drawing.Size(100, 20);
            this.txt_usr_eid.TabIndex = 8;
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(21, 68);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(61, 13);
            this.label2.TabIndex = 7;
            this.label2.Text = "Contraseña";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(21, 28);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(98, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Nombre de Usuario";
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
            // BtnAgregar_usr
            // 
            this.BtnAgregar_usr.Location = new System.Drawing.Point(680, 122);
            this.BtnAgregar_usr.Name = "BtnAgregar_usr";
            this.BtnAgregar_usr.Size = new System.Drawing.Size(75, 23);
            this.BtnAgregar_usr.TabIndex = 3;
            this.BtnAgregar_usr.Text = "Agregar";
            this.BtnAgregar_usr.UseVisualStyleBackColor = true;
            this.BtnAgregar_usr.Click += new System.EventHandler(this.BtnAgregar_usr_Click);
            // 
            // txt_usr_pw
            // 
            this.txt_usr_pw.Location = new System.Drawing.Point(125, 65);
            this.txt_usr_pw.Name = "txt_usr_pw";
            this.txt_usr_pw.Size = new System.Drawing.Size(100, 20);
            this.txt_usr_pw.TabIndex = 2;
            // 
            // gridUsuario
            // 
            this.gridUsuario.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.gridUsuario.Location = new System.Drawing.Point(3, 151);
            this.gridUsuario.Name = "gridUsuario";
            this.gridUsuario.Size = new System.Drawing.Size(914, 364);
            this.gridUsuario.TabIndex = 1;
            this.gridUsuario.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick);
            // 
            // txt_usr_name
            // 
            this.txt_usr_name.Location = new System.Drawing.Point(125, 28);
            this.txt_usr_name.Name = "txt_usr_name";
            this.txt_usr_name.Size = new System.Drawing.Size(100, 20);
            this.txt_usr_name.TabIndex = 0;
            this.txt_usr_name.TextChanged += new System.EventHandler(this.txt_usr_name_TextChanged);
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
            this.ventaToolStripMenuItem.Size = new System.Drawing.Size(81, 20);
            this.ventaToolStripMenuItem.Text = "Facturacion";
            this.ventaToolStripMenuItem.Click += new System.EventHandler(this.ventaToolStripMenuItem_Click);
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
            ((System.ComponentModel.ISupportInitialize)(this.gridUsuario)).EndInit();
            this.panelSistema.ResumeLayout(false);
            this.menuStrip1.ResumeLayout(false);
            this.menuStrip1.PerformLayout();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.Panel FrmUsuario;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.Button BtnDeshabilitar_usr;
        private System.Windows.Forms.Button BtnActualizar_usr;
        private System.Windows.Forms.Button BtnAgregar_usr;
        private System.Windows.Forms.TextBox txt_usr_pw;
        private System.Windows.Forms.DataGridView gridUsuario;
        private System.Windows.Forms.TextBox txt_usr_name;
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
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.TextBox txt_usr_eid;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.TextBox txt_usr_id;
    }
}