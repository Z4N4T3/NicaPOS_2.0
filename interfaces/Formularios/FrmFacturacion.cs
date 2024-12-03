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
using Entidad;
using Entidad.Producto;
using Entidad.Tienda;
using Entidad.Venta;
using interfaces.Clases;
using interfaces.Formularios.Venta;
using interfaces.Utilidades;
using Negocio.Empleado;
using Negocio.Producto;
using Negocio.Tienda;
using Negocio.Venta;

namespace interfaces.Formularios
{
    public partial class FrmFacturacion : Form
    {
        private Navy menuHandler;
        
        double iva = E_tienda.IVA;
        double tasa = E_tienda.TASA;
        private E_usuario e_usr = new E_usuario();
        private E_venta venta = new E_venta()
        {

            Subtotal = 0.0m,
            Impuesto = 0.0m,
            Descuento = 0.0m,
            Total = 0.0m,
        };
        private int e_id;
        public FrmFacturacion(int eid)
        {
            this.e_id = eid;
            InitializeComponent();
            menuHandler = new Navy(this, eid);

            menuHandler.SetupMenu(flowLayoutPanel1);
            menuHandler.configAcceso(flowLayoutPanel1);
            loadProdPrecio();
            getTienda();

            lb_tasa.Text = tasa.ToString();

            dtGrid_producto.ReadOnly = true;
            dtGrid_det.ReadOnly = true;
            loadEmpleado();

        }
        private void getTienda()
        {
            E_tienda eTienda = new E_tienda();

            N_tienda tienda = new N_tienda();
            DataTable dt = tienda.listarDatos();

            foreach (DataRow dr in dt.Rows) {
                eTienda.id = Convert.ToInt32(dr["id"]);
                lb_nombre_negocio.Text = dr["nombre"].ToString();
                lb_ruc.Text = dr["RUC"].ToString();
                eTienda.telefono = dr["nombre"].ToString();
                eTienda.razon_social = dr["razon_social"].ToString();

            }


        }
        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void panelNegocio_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panelMain_Paint(object sender, PaintEventArgs e)
        {

        }

        private void txt_buscar_MaskInputRejected(object sender, MaskInputRejectedEventArgs e)
        {

        }

      



        void loadProdPrecio()
        {

            N_Producto prod =new N_Producto();

            //DataTable dt = prod.listarProductoPrecio();
            DataTable dt = prod.listarProductoTemp();
            dtGrid_producto.DataSource = dt;
            

        }
        private string cate;
        private string subCate;
        private string prod;
     
        private decimal precioUnitario;
        private int idProd, qty=1;
        private void btn_agregar_Click(object sender, EventArgs e)
        {

            if (input_qty.Value <= 0)
            {
                MessageBox.Show("Ingresa una cantidad valido", "Advertencia");
            }
            else {
                qty = Convert.ToInt32(input_qty.Value);
                AgregarProductoDetalle(prod, precioUnitario, qty,idProd);
                txt_buscar.Text = String.Empty;
                input_qty.Value = 1;
                loadProdPrecio();
                cal_subtotal(iva);
                
            }
            

        }

        private void dtGrid_det_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
  

        }

        private void dtGrid_producto_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow selectedRow = dtGrid_producto.Rows[e.RowIndex];
                idProd = Convert.ToInt32(selectedRow.Cells["ID"].Value);  
                cate = selectedRow.Cells["CATEGORIA"].Value.ToString();
                 subCate = selectedRow.Cells["SUBCATEGORIA"].Value.ToString();
                 prod = selectedRow.Cells["PRODUCTO"].Value.ToString();
                 precioUnitario = Convert.ToDecimal(selectedRow.Cells["PRECIO"].Value);
                lb_categoria.Text = cate;
                lb_nombreItem.Text = prod;
            }

            
        }
        List<E_Det_venta> listaDetVenta = new List<E_Det_venta>();

        private void AgregarProductoDetalle(string prod, decimal precioU,int qty, int idProducto)
        {

            
            int nuevaFilaIndex = dtGrid_det.Rows.Add(); 

            // Obtener la nueva fila y asignar los valores
            
            DataGridViewRow nuevaFila = dtGrid_det.Rows[nuevaFilaIndex];
            nuevaFila.Cells["Column1"].Value = qty;
             
            //int qty = Convert.ToInt32(dtGrid_det.Rows[nuevaFilaIndex].Cells["Column1"].Value);

            nuevaFila.Cells["Column2"].Value = prod;
            nuevaFila.Cells["Column3"].Value = precioU;
            nuevaFila.Cells["Column4"].Value = precioU * qty;
            E_Det_venta detalleVenta = new E_Det_venta()
            {
                Id_producto = idProducto,
                Cantidad = qty,
                PrecioU = precioU,
                Total = qty * precioU,
                Descuento = 1,
                Impuesto = 0,
             
            };
            listaDetVenta.Add(detalleVenta);
        }

       

        private void lb_nombre_negocio_Click(object sender, EventArgs e)
        {

        }

        private void lb_categoria_Click(object sender, EventArgs e)
        {

        }

        private void btb_buscar_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(txt_buscar.Text))
            {
                buscar();
            }
            else
            {
                loadProdPrecio();
            }
            
        }

        
        private void buscar()
        {
            N_Producto prod = new N_Producto();
           dtGrid_producto.ClearSelection();
            string cod = txt_buscar.Text;
            DataTable dt = prod.buscarProd(cod);
            dtGrid_producto.DataSource = dt;
        }

        
        private void cal_subtotal(double iva)
        {
            
            
            foreach (DataGridViewRow row in dtGrid_det.Rows)
            {
                // valida si no es una fila vacia
                if (row.Cells["Column4"].Value != null && row.Cells["Column4"].Value != DBNull.Value)
                {
                    venta.Subtotal += Convert.ToDecimal(row.Cells["Column4"].Value);
                }
            }

            venta.Impuesto = venta.Subtotal * Convert.ToDecimal(iva);
            venta.Total= venta.Subtotal + venta.Impuesto - venta.Descuento;
           
            lb_subtotal.Text = venta.Subtotal.ToString("F2");
            lb_descuento.Text = venta.Descuento.ToString("F2");
            lb_iva.Text = venta.Impuesto.ToString("F2");
            lb_total.Text = venta.Total.ToString("F2");
        }

        private void negocioToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void flowLayoutPanel1_Paint(object sender, PaintEventArgs e)
        {

        }
        private void loadEmpleado()
        {

            N_Cargo cargo = new N_Cargo();
            E_empleado emp = new E_empleado();
            DataTable dt = cargo.buscar(e_id);
            foreach (DataRow dr in dt.Rows)
            {
                lb_eid.Text = dr[0].ToString();
                lbl_name.Text = dr[1].ToString();
                lbl_cargo.Text = dr[2].ToString();
            }

        }
        private void btn_salir_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            this.Close();
            login.Show();
        }

        private void btn_cancelar_Click(object sender, EventArgs e)
        {
            limpiarVenta();
        }
        private void limpiarVenta()
        {
            dtGrid_det.Rows.Clear();
            venta.Subtotal = 0.0m;
            venta.Descuento = 0.0m;
            venta.Impuesto = 0.0m;
            venta.Total = 0.0m;
            lb_subtotal.Text = venta.Subtotal.ToString("F2");
            lb_descuento.Text = venta.Descuento.ToString("F2");
            lb_iva.Text = venta.Impuesto.ToString("F2");
            lb_total.Text = venta.Total.ToString("F2");

        }

        private void FrmFacturacion_Load(object sender, EventArgs e)
        {

        }

        private void Btn_reporte_Click(object sender, EventArgs e)
        {
            Frm_ReporteVenta rep = new Frm_ReporteVenta();

            rep.Show();
        }

        private void btn_facturar_Click(object sender, EventArgs e)
        {
            // verificar si contiene filas
            if (dtGrid_det.Rows.Count <= 1)
            {
                MessageBox.Show("Lista de productos vacía", "Advertencia");
                return;
            }
            else
            {

                venta.id_empleado = e_id;


                MessageBox.Show(""+ venta.id_empleado);

                foreach (E_Det_venta det in listaDetVenta)
                {
                    Console.WriteLine("det.IDventa" + det.Id_venta);
                    Console.WriteLine("idProd" + det.Id_producto);
                    Console.WriteLine("qty" + det.Cantidad);
                    Console.WriteLine("Prec" + det.PrecioU);


                   
                }
                
                FrmPago frmPago = new FrmPago(listaDetVenta,venta);
                frmPago.Show();
                //limpiarVenta();
            }
        }

       
    }
}
