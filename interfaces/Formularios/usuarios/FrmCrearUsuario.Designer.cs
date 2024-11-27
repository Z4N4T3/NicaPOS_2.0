namespace interfaces.Formularios.usuarios
{
    partial class FrmCrearUsuario
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
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.label5 = new System.Windows.Forms.Label();
            this.txt_usr_name = new System.Windows.Forms.TextBox();
            this.label1 = new System.Windows.Forms.Label();
            this.txt_usr_eid = new System.Windows.Forms.TextBox();
            this.label3 = new System.Windows.Forms.Label();
            this.BtnAgregar_usr = new System.Windows.Forms.Button();
            this.txt_usr_pw = new System.Windows.Forms.TextBox();
            this.label2 = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.groupBox1.SuspendLayout();
            this.SuspendLayout();
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.textBox1);
            this.groupBox1.Controls.Add(this.label5);
            this.groupBox1.Controls.Add(this.txt_usr_name);
            this.groupBox1.Controls.Add(this.label1);
            this.groupBox1.Controls.Add(this.txt_usr_eid);
            this.groupBox1.Controls.Add(this.label3);
            this.groupBox1.Controls.Add(this.txt_usr_pw);
            this.groupBox1.Controls.Add(this.label2);
            this.groupBox1.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.groupBox1.Location = new System.Drawing.Point(12, 12);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(413, 169);
            this.groupBox1.TabIndex = 14;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Crear Usuario";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(9, 134);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(186, 20);
            this.textBox1.TabIndex = 9;
            this.textBox1.TextChanged += new System.EventHandler(this.textBox1_TextChanged);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.Location = new System.Drawing.Point(6, 115);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(110, 13);
            this.label5.TabIndex = 8;
            this.label5.Text = "Confirmar contraseña:";
            // 
            // txt_usr_name
            // 
            this.txt_usr_name.Location = new System.Drawing.Point(8, 45);
            this.txt_usr_name.Name = "txt_usr_name";
            this.txt_usr_name.Size = new System.Drawing.Size(186, 20);
            this.txt_usr_name.TabIndex = 0;
            this.txt_usr_name.TextChanged += new System.EventHandler(this.txt_usr_name_TextChanged);
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.Location = new System.Drawing.Point(5, 29);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(189, 13);
            this.label1.TabIndex = 6;
            this.label1.Text = "Nombre de Inicio de sesion de Usuario";
            // 
            // txt_usr_eid
            // 
            this.txt_usr_eid.Location = new System.Drawing.Point(222, 45);
            this.txt_usr_eid.Name = "txt_usr_eid";
            this.txt_usr_eid.Size = new System.Drawing.Size(185, 20);
            this.txt_usr_eid.TabIndex = 8;
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.Location = new System.Drawing.Point(224, 29);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(83, 13);
            this.label3.TabIndex = 9;
            this.label3.Text = "ID de Empleado";
            // 
            // BtnAgregar_usr
            // 
            this.BtnAgregar_usr.Location = new System.Drawing.Point(244, 188);
            this.BtnAgregar_usr.Name = "BtnAgregar_usr";
            this.BtnAgregar_usr.Size = new System.Drawing.Size(75, 23);
            this.BtnAgregar_usr.TabIndex = 3;
            this.BtnAgregar_usr.Text = "Agregar";
            this.BtnAgregar_usr.UseVisualStyleBackColor = true;
            this.BtnAgregar_usr.Click += new System.EventHandler(this.BtnAgregar_usr_Click);
            // 
            // txt_usr_pw
            // 
            this.txt_usr_pw.Location = new System.Drawing.Point(8, 89);
            this.txt_usr_pw.Name = "txt_usr_pw";
            this.txt_usr_pw.Size = new System.Drawing.Size(186, 20);
            this.txt_usr_pw.TabIndex = 2;
            this.txt_usr_pw.TextChanged += new System.EventHandler(this.txt_usr_pw_TextChanged);
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Location = new System.Drawing.Point(6, 72);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(64, 13);
            this.label2.TabIndex = 7;
            this.label2.Text = "Contraseña:";
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(350, 187);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 10;
            this.button1.Text = "Cancelar";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click);
            // 
            // FrmCrearUsuario
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(437, 223);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.BtnAgregar_usr);
            this.Name = "FrmCrearUsuario";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmCrearUsuario";
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.TextBox txt_usr_name;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.TextBox txt_usr_eid;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Button BtnAgregar_usr;
        private System.Windows.Forms.TextBox txt_usr_pw;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Button button1;
    }
}