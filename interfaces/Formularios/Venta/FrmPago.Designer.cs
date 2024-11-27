namespace interfaces.Formularios.Venta
{
    partial class FrmPago
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
            this.btn_tarjeta = new System.Windows.Forms.Button();
            this.btn_cash = new System.Windows.Forms.Button();
            this.btn_otro = new System.Windows.Forms.Button();
            this.groupBox3 = new System.Windows.Forms.GroupBox();
            this.button4 = new System.Windows.Forms.Button();
            this.lb_total = new System.Windows.Forms.Label();
            this.lb_iva = new System.Windows.Forms.Label();
            this.lb_descuento = new System.Windows.Forms.Label();
            this.lb_subtotal = new System.Windows.Forms.Label();
            this.label10 = new System.Windows.Forms.Label();
            this.label9 = new System.Windows.Forms.Label();
            this.label8 = new System.Windows.Forms.Label();
            this.label7 = new System.Windows.Forms.Label();
            this.textBox1 = new System.Windows.Forms.TextBox();
            this.groupBox1 = new System.Windows.Forms.GroupBox();
            this.groupBox2 = new System.Windows.Forms.GroupBox();
            this.label2 = new System.Windows.Forms.Label();
            this.total = new System.Windows.Forms.Label();
            this.groupBox3.SuspendLayout();
            this.groupBox1.SuspendLayout();
            this.groupBox2.SuspendLayout();
            this.SuspendLayout();
            // 
            // btn_tarjeta
            // 
            this.btn_tarjeta.BackColor = System.Drawing.SystemColors.Control;
            this.btn_tarjeta.ForeColor = System.Drawing.SystemColors.ControlText;
            this.btn_tarjeta.Location = new System.Drawing.Point(347, 207);
            this.btn_tarjeta.Name = "btn_tarjeta";
            this.btn_tarjeta.Size = new System.Drawing.Size(143, 52);
            this.btn_tarjeta.TabIndex = 0;
            this.btn_tarjeta.Text = "Tarjeta";
            this.btn_tarjeta.UseVisualStyleBackColor = false;
            this.btn_tarjeta.Click += new System.EventHandler(this.btn_tarjeta_Click);
            // 
            // btn_cash
            // 
            this.btn_cash.Location = new System.Drawing.Point(496, 207);
            this.btn_cash.Name = "btn_cash";
            this.btn_cash.Size = new System.Drawing.Size(143, 52);
            this.btn_cash.TabIndex = 1;
            this.btn_cash.Text = "Efectivo";
            this.btn_cash.UseVisualStyleBackColor = true;
            this.btn_cash.Click += new System.EventHandler(this.btn_cash_Click);
            // 
            // btn_otro
            // 
            this.btn_otro.Location = new System.Drawing.Point(645, 208);
            this.btn_otro.Name = "btn_otro";
            this.btn_otro.Size = new System.Drawing.Size(143, 51);
            this.btn_otro.TabIndex = 2;
            this.btn_otro.Text = "Otro Metodo de Pago";
            this.btn_otro.UseVisualStyleBackColor = true;
            this.btn_otro.Click += new System.EventHandler(this.btn_otro_Click);
            // 
            // groupBox3
            // 
            this.groupBox3.Controls.Add(this.button4);
            this.groupBox3.Controls.Add(this.lb_total);
            this.groupBox3.Controls.Add(this.lb_iva);
            this.groupBox3.Controls.Add(this.lb_descuento);
            this.groupBox3.Controls.Add(this.lb_subtotal);
            this.groupBox3.Controls.Add(this.label10);
            this.groupBox3.Controls.Add(this.label9);
            this.groupBox3.Controls.Add(this.label8);
            this.groupBox3.Controls.Add(this.label7);
            this.groupBox3.Font = new System.Drawing.Font("Microsoft Sans Serif", 12F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.groupBox3.Location = new System.Drawing.Point(12, 12);
            this.groupBox3.Name = "groupBox3";
            this.groupBox3.Size = new System.Drawing.Size(776, 190);
            this.groupBox3.TabIndex = 4;
            this.groupBox3.TabStop = false;
            this.groupBox3.Text = "Retenciones";
            this.groupBox3.Enter += new System.EventHandler(this.groupBox3_Enter);
            // 
            // button4
            // 
            this.button4.Location = new System.Drawing.Point(627, 151);
            this.button4.Name = "button4";
            this.button4.Size = new System.Drawing.Size(143, 33);
            this.button4.TabIndex = 6;
            this.button4.Text = "Pagar";
            this.button4.UseVisualStyleBackColor = true;
            this.button4.Click += new System.EventHandler(this.button4_Click);
            // 
            // lb_total
            // 
            this.lb_total.AutoSize = true;
            this.lb_total.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_total.Location = new System.Drawing.Point(534, 162);
            this.lb_total.Name = "lb_total";
            this.lb_total.Size = new System.Drawing.Size(43, 16);
            this.lb_total.TabIndex = 7;
            this.lb_total.Text = "00.00";
            // 
            // lb_iva
            // 
            this.lb_iva.AutoSize = true;
            this.lb_iva.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_iva.Location = new System.Drawing.Point(534, 140);
            this.lb_iva.Name = "lb_iva";
            this.lb_iva.Size = new System.Drawing.Size(43, 16);
            this.lb_iva.TabIndex = 6;
            this.lb_iva.Text = "00.00";
            // 
            // lb_descuento
            // 
            this.lb_descuento.AutoSize = true;
            this.lb_descuento.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_descuento.Location = new System.Drawing.Point(216, 162);
            this.lb_descuento.Name = "lb_descuento";
            this.lb_descuento.Size = new System.Drawing.Size(43, 16);
            this.lb_descuento.TabIndex = 5;
            this.lb_descuento.Text = "00.00";
            // 
            // lb_subtotal
            // 
            this.lb_subtotal.AutoSize = true;
            this.lb_subtotal.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.lb_subtotal.Location = new System.Drawing.Point(216, 138);
            this.lb_subtotal.Name = "lb_subtotal";
            this.lb_subtotal.Size = new System.Drawing.Size(43, 16);
            this.lb_subtotal.TabIndex = 4;
            this.lb_subtotal.Text = "00.00";
            this.lb_subtotal.Click += new System.EventHandler(this.lb_subtotal_Click);
            // 
            // label10
            // 
            this.label10.AutoSize = true;
            this.label10.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label10.Location = new System.Drawing.Point(362, 162);
            this.label10.Name = "label10";
            this.label10.Size = new System.Drawing.Size(47, 16);
            this.label10.TabIndex = 3;
            this.label10.Text = "Total:";
            // 
            // label9
            // 
            this.label9.AutoSize = true;
            this.label9.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label9.Location = new System.Drawing.Point(340, 140);
            this.label9.Name = "label9";
            this.label9.Size = new System.Drawing.Size(74, 16);
            this.label9.TabIndex = 2;
            this.label9.Text = "Impuesto:";
            // 
            // label8
            // 
            this.label8.AutoSize = true;
            this.label8.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label8.Location = new System.Drawing.Point(12, 162);
            this.label8.Name = "label8";
            this.label8.Size = new System.Drawing.Size(85, 16);
            this.label8.TabIndex = 1;
            this.label8.Text = "Descuento:";
            // 
            // label7
            // 
            this.label7.AutoSize = true;
            this.label7.Font = new System.Drawing.Font("Microsoft Sans Serif", 9.75F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label7.Location = new System.Drawing.Point(26, 138);
            this.label7.Name = "label7";
            this.label7.Size = new System.Drawing.Size(68, 16);
            this.label7.TabIndex = 0;
            this.label7.Text = "Subtotal:";
            // 
            // textBox1
            // 
            this.textBox1.Location = new System.Drawing.Point(6, 26);
            this.textBox1.Name = "textBox1";
            this.textBox1.Size = new System.Drawing.Size(154, 20);
            this.textBox1.TabIndex = 5;
            // 
            // groupBox1
            // 
            this.groupBox1.Controls.Add(this.textBox1);
            this.groupBox1.Location = new System.Drawing.Point(175, 208);
            this.groupBox1.Name = "groupBox1";
            this.groupBox1.Size = new System.Drawing.Size(166, 52);
            this.groupBox1.TabIndex = 6;
            this.groupBox1.TabStop = false;
            this.groupBox1.Text = "Ingresar Monto";
            // 
            // groupBox2
            // 
            this.groupBox2.Controls.Add(this.label2);
            this.groupBox2.Controls.Add(this.total);
            this.groupBox2.Location = new System.Drawing.Point(12, 208);
            this.groupBox2.Name = "groupBox2";
            this.groupBox2.Size = new System.Drawing.Size(157, 52);
            this.groupBox2.TabIndex = 7;
            this.groupBox2.TabStop = false;
            this.groupBox2.Text = "Monto a Pagar:";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.Location = new System.Drawing.Point(47, 29);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(14, 13);
            this.label2.TabIndex = 8;
            this.label2.Text = "$";
            // 
            // total
            // 
            this.total.AutoSize = true;
            this.total.Font = new System.Drawing.Font("Microsoft Sans Serif", 8.25F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.total.Location = new System.Drawing.Point(112, 29);
            this.total.Name = "total";
            this.total.Size = new System.Drawing.Size(39, 13);
            this.total.TabIndex = 8;
            this.total.Text = "00.00";
            this.total.Click += new System.EventHandler(this.total_Click);
            // 
            // FrmPago
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(800, 271);
            this.Controls.Add(this.groupBox2);
            this.Controls.Add(this.groupBox1);
            this.Controls.Add(this.groupBox3);
            this.Controls.Add(this.btn_otro);
            this.Controls.Add(this.btn_cash);
            this.Controls.Add(this.btn_tarjeta);
            this.Name = "FrmPago";
            this.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen;
            this.Text = "FrmPago";
            this.Load += new System.EventHandler(this.FrmPago_Load);
            this.groupBox3.ResumeLayout(false);
            this.groupBox3.PerformLayout();
            this.groupBox1.ResumeLayout(false);
            this.groupBox1.PerformLayout();
            this.groupBox2.ResumeLayout(false);
            this.groupBox2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Button btn_tarjeta;
        private System.Windows.Forms.Button btn_cash;
        private System.Windows.Forms.Button btn_otro;
        private System.Windows.Forms.GroupBox groupBox3;
        private System.Windows.Forms.Label lb_total;
        private System.Windows.Forms.Label lb_iva;
        private System.Windows.Forms.Label lb_descuento;
        private System.Windows.Forms.Label lb_subtotal;
        private System.Windows.Forms.Label label10;
        private System.Windows.Forms.Label label9;
        private System.Windows.Forms.Label label8;
        private System.Windows.Forms.Label label7;
        private System.Windows.Forms.Button button4;
        private System.Windows.Forms.TextBox textBox1;
        private System.Windows.Forms.GroupBox groupBox1;
        private System.Windows.Forms.GroupBox groupBox2;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label total;
    }
}