using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace interfaces.Formularios.Venta
{
    public partial class FrmPago : Form
    {
        int tipoPago = 1;
        public FrmPago()
        {
            InitializeComponent();
        }

        void colores(Button btn)
        {
            
            btn.BackColor = Color.Azure;

            if (btn != btn_cash)
            {
                btn_cash.BackColor = SystemColors.Control;  
            }

            if (btn != btn_otro)
            {
                btn_otro.BackColor = SystemColors.Control;  
            }
            if (btn != btn_tarjeta)
            {
                btn_tarjeta.BackColor = SystemColors.Control;
            }
        }
        private void lb_subtotal_Click(object sender, EventArgs e)
        {

        }

        private void btn_tarjeta_Click(object sender, EventArgs e)
        {
            colores(btn_tarjeta);
            tipoPago = 2;
        }

        private void btn_cash_Click(object sender, EventArgs e)
        {
            colores(btn_cash);
            tipoPago = 1;

        }

        private void btn_otro_Click(object sender, EventArgs e)
        {
            colores(btn_otro);
            tipoPago = 3;

        }

        private void button4_Click(object sender, EventArgs e)
        {

        }
    }
}
