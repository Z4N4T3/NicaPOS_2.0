using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Entidad.Venta;
using Negocio.Venta;

namespace interfaces.Formularios.Venta
{
    public partial class FrmPago : Form
    {
        int tipoPago = 1;
        private FrmFacturacion fact;
        private List<E_Det_venta> listaDetalleVenta;
        private E_venta venta;

        
        public FrmPago(List<E_Det_venta> listaDetalle, E_venta venta)
        {
            this.listaDetalleVenta = listaDetalle;

            InitializeComponent();
            this.venta = venta;

            lb_subtotal.Text =venta.Subtotal.ToString("F2");
            lb_descuento.Text = venta.Descuento.ToString("F2");
            lb_iva.Text = venta.Impuesto.ToString("F2");
            lb_total.Text = venta.Total.ToString("F2");
            total.Text = venta.Total.ToString("F2");
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

            // modificar o eliminar esta vaina despues
            N_venta n_venta = new N_venta();
            Console.WriteLine("vemp" + venta.id_empleado);
            Console.WriteLine("VT" + venta.Total);
            
            int VentaActual = n_venta.insertar_temp(venta);
            if (VentaActual < 0) {
                MessageBox.Show("Error al Insertar la Venta");

            }
            else
            {
                bool todoGud=true;
                foreach (E_Det_venta det in listaDetalleVenta)
                {
                    det.Id_venta = VentaActual;
                    Console.WriteLine("det.IDventa" + det.Id_venta);
                    Console.WriteLine("idProd" + det.Id_producto);
                    Console.WriteLine("qty" + det.Cantidad);
                    Console.WriteLine("Prec" + det.PrecioU);


                    bool result = n_venta.insertarDet_temp(det);
                    if (!result) {
                        MessageBox.Show("Error al Insertar la Venta");
                        todoGud = false;
                        break;
                    
                    }
                }
                if (todoGud)
                {
                    MessageBox.Show("Venta registrada correctamente: "+ VentaActual);
                    this.Close();
                   
                }

            }

           

        }

       

        private void groupBox3_Enter(object sender, EventArgs e)
        {

        }

        private void FrmPago_Load(object sender, EventArgs e)
        {

        }

        private void total_Click(object sender, EventArgs e)
        {

        }
    }
}
