using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using interfaces.Clases;
using Negocio.Producto;

namespace interfaces.Formularios
{
    public partial class FrmFacturacion : Form
    {
        private ClsNavbar menuHandler;
        public FrmFacturacion()
        {
            InitializeComponent();
            menuHandler = new ClsNavbar(this);
            menuHandler.SetupMenu(menuStrip1);
            loadProdPrecio();

         
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

        private void btn_agregar_Click(object sender, EventArgs e)
        {
          
        }

        private void dtGrid_det_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
       
        }

        private void dtGrid_producto_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow selectedRow = dtGrid_producto.Rows[e.RowIndex];

                string cate = selectedRow.Cells["CATEGORIA"].Value.ToString();
                string subCate = selectedRow.Cells["SUBCATEGORIA"].Value.ToString();
                string prod = selectedRow.Cells["PRODUCTO"].Value.ToString();
                decimal precioUnitario = Convert.ToDecimal(selectedRow.Cells["PRECIO"].Value);

                AgregarProductoDetalle(prod, precioUnitario);
            }
        }
        private void AgregarProductoDetalle(string prod, decimal precioU)
        {

            // Si no está en el detalle, agregarlo
            int nuevaFilaIndex = dtGrid_det.Rows.Add(); // Agrega una nueva fila al DataGridView

            // Obtener la nueva fila y asignar los valores
            
            DataGridViewRow nuevaFila = dtGrid_det.Rows[nuevaFilaIndex];
            nuevaFila.Cells["Column1"].Value = 1;
            int qty = Convert.ToInt32(dtGrid_det.Rows[nuevaFilaIndex].Cells["Column1"].Value);
            nuevaFila.Cells["Column2"].Value = prod;
            nuevaFila.Cells["Column3"].Value = precioU;
            nuevaFila.Cells["Column4"].Value = precioU* qty;

        }


      
    }
}
