using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Entidad.Venta;

namespace interfaces.Formularios.Venta
{
    public partial class FrmPago : Form
    {
        int tipoPago = 1;
        private List<E_Det_venta> listaDetalleVenta;
        private E_venta venta;

        
        public FrmPago(List<E_Det_venta> listaDetalle, E_venta venta)
        {
            this.listaDetalleVenta = listaDetalle;

            InitializeComponent();
            this.venta = venta;

            lb_subtotal.Text =venta.Subtotal.ToString();
            lb_descuento.Text = venta.Descuento.ToString();
            lb_iva.Text = venta.Impuesto.ToString();
            lb_total.Text = venta.Total.ToString();
            total.Text = venta.Total.ToString();
        }

        void colores(Button btn)
        {
            
            btn.BackColor = Color.DeepSkyBlue;

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

        private void groupBox3_Enter(object sender, EventArgs e)
        {

        }

        private void FrmPago_Load(object sender, EventArgs e)
        {

        }
    }
}
