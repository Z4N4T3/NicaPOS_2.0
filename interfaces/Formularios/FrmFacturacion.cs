using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Entidad.Producto;
using Entidad.Tienda;
using Entidad.Venta;
using interfaces.Clases;
using Negocio.Producto;
using Negocio.Tienda;

namespace interfaces.Formularios
{
    public partial class FrmFacturacion : Form
    {
        private ClsNavbar menuHandler;
        double iva = E_tienda.IVA;
        double tasa = E_tienda.TASA;

        public FrmFacturacion()
        {

            InitializeComponent();
            menuHandler = new ClsNavbar(this);
           
            menuHandler.SetupMenu(menuStrip1);
            //menuHandler.configAcceso(menuStrip1);
            loadProdPrecio();
            getTienda();

            lb_tasa.Text = tasa.ToString();

            dtGrid_producto.ReadOnly = true;
            dtGrid_det.ReadOnly = true;


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

            DataTable dt = prod.listarProductoPrecio();

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
                AgregarProductoDetalle(prod, precioUnitario, qty);
                txt_buscar.Text = String.Empty;
                input_qty.Value = 1;
                loadProdPrecio();
                cal_subtotal(iva);
            }
            

        }

        private void dtGrid_det_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            //int qty = 1;

            //DataGridViewRow selectedRow = dtGrid_det.Rows[e.RowIndex];
            //qty = Convert.ToInt32(dtGrid_det.Rows[e.RowIndex].Cells["Column1"].Value);
            //if (selectedRow.Cells["Column4"].Value != DBNull.Value)
            //{
            //    selectedRow.Cells["Column4"].Value = Convert.ToDecimal(selectedRow.Cells["Column4"].Value) * qty;
            //}
            //cal_subtotal(iva);

        }

        private void dtGrid_producto_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow selectedRow = dtGrid_producto.Rows[e.RowIndex];
                int idProducto = Convert.ToInt32(selectedRow.Cells["ID"].Value);  
                cate = selectedRow.Cells["CATEGORIA"].Value.ToString();
                 subCate = selectedRow.Cells["SUBCATEGORIA"].Value.ToString();
                 prod = selectedRow.Cells["PRODUCTO"].Value.ToString();
                 precioUnitario = Convert.ToDecimal(selectedRow.Cells["PRECIO"].Value);
                lb_categoria.Text = cate;
                lb_nombreItem.Text = prod;
            }

            
        }
        private void AgregarProductoDetalle(string prod, decimal precioU,int qty)
        {

            int nuevaFilaIndex = dtGrid_det.Rows.Add(); // Agrega una nueva fila al DataGridView

            // Obtener la nueva fila y asignar los valores
            
            DataGridViewRow nuevaFila = dtGrid_det.Rows[nuevaFilaIndex];
            nuevaFila.Cells["Column1"].Value = qty;
             
            //int qty = Convert.ToInt32(dtGrid_det.Rows[nuevaFilaIndex].Cells["Column1"].Value);

            nuevaFila.Cells["Column2"].Value = prod;
            nuevaFila.Cells["Column3"].Value = precioU;
            nuevaFila.Cells["Column4"].Value = precioU* qty;

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

        E_venta e_Venta = new E_venta();

        private void cal_subtotal(double iva)
        {
            double subtotal = 0, total =0, impuesto =0,descuento=0.0;
            foreach (DataGridViewRow row in dtGrid_det.Rows)
            {
                // valida si no es una fila vacia
                if (row.Cells["Column4"].Value != null && row.Cells["Column4"].Value != DBNull.Value)
                {
                    subtotal += Convert.ToDouble(row.Cells["Column4"].Value);
                }
            }

            impuesto = subtotal * iva;
            total = subtotal+ impuesto - descuento;
            e_Venta.Subtotal = Convert.ToDecimal(subtotal);
            e_Venta.Descuento = Convert.ToDecimal(descuento);
            e_Venta.Impuesto = Convert.ToDecimal(impuesto);
            e_Venta.Total = Convert.ToDecimal(total);

            lb_subtotal.Text = subtotal.ToString("F2");
            lb_descuento.Text = descuento.ToString("F2");
            lb_iva.Text = impuesto.ToString("F2");
            lb_total.Text = total.ToString("F2");
        }

        private void negocioToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void btn_facturar_Click(object sender, EventArgs e)
        {

        }

        private List<E_Producto> exportarData(DataGridView dtGrid)
        {
            List<E_Producto> listaDeProd = new List<E_Producto>();
            foreach(DataGridView row in dtGrid.Rows)
            {
                E_Producto prod = new E_Producto();
                //prod.Id = ;
                //prod.Nombre = ;
                

            }



            return listaDeProd;
        }
    }
}
