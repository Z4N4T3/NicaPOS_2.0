using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using interfaces.Clases;

namespace interfaces.Formularios
{
    public partial class FrmInventario : Form
    {
        private ClsNavbar menuHandler;
        private Clases.ClsDatabase objDB;

        public FrmInventario()
        {
            InitializeComponent();
            menuHandler = new ClsNavbar(this);
            menuHandler.SetupMenu(menuStrip1);
            objDB = new Clases.ClsDatabase();
            objDB.conectarBD();
        }

        private void panelMain_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel_inventario_Paint(object sender, PaintEventArgs e)
        {

        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void panelProducto_Paint(object sender, PaintEventArgs e)
        {

        }

        private void BtnCatProductos_Click(object sender, EventArgs e)
        {
            
            panelProducto.Visible = true;
            CargarData("sp_mostrar_informacion_productos");

        }


        private void CargarData(String nombreSP)
        {
            try
            {
                DataTable dataTable = objDB.ExecStoredProc(nombreSP);
                dataGridView1.DataSource = dataTable;
            }
            catch (SqlException ex)
            {
                MessageBox.Show("Error al cargar la data: " + ex.ToString());

            }
        }
    }
}
