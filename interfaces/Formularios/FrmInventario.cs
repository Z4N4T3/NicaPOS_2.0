using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Entidad;
using interfaces.Clases;
using interfaces.Formularios.Clasificacion;
using interfaces.Utilidades;

namespace interfaces.Formularios
{
    public partial class FrmInventario : Form
    {
        private Navy menuHandler;
        private Clases.ClsDatabase objDB;
        private E_usuario e_usr = new E_usuario();
        private int e_id;
        public FrmInventario(int eid)
        {
            this.e_id = eid;
            InitializeComponent();
            menuHandler = new Navy(this, eid);
            menuHandler.SetupMenu(flowLayoutPanel1);
            menuHandler.configAcceso(flowLayoutPanel1);
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

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void menuDePreciosToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void sistemaToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void categoriasToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Frm_Categoria_Prod frm_Categoria_Prod = new Frm_Categoria_Prod();
            frm_Categoria_Prod.Show();
        }

        private void menuDeCategoriasToolStripMenuItem_Click(object sender, EventArgs e)
        {
    
        }

        private void subcategoriaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Frm_Subcategoria frm_Subcategoria = new Frm_Subcategoria();
            frm_Subcategoria.Show();
        }

        private void FrmInventario_Load(object sender, EventArgs e)
        {

        }

        private void flowLayoutPanel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void btn_salir_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            this.Close();
            login.Show();
        }

        private void BtnCatProd_Click(object sender, EventArgs e)
        {
            panelProducto.Visible = true;
            CargarData("sp_mostrar_informacion_productos");
        }
    }
}
