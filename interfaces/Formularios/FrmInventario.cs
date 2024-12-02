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
using interfaces.Formularios.Compra;
using interfaces.Utilidades;
using Negocio;
using Negocio.Empleado;

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
            loadEmpleado();
            loadCate();
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
           
        }

        private void cb_cate_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cb_cate.SelectedIndex >= 0)
            {
                int cateSelected;
                if (int.TryParse(cb_cate.SelectedValue.ToString(), out cateSelected))
                {
                    loadSubcate(cateSelected);
                    //MessageBox.Show("" + munSelec);

                }
                else
                {
                    Console.WriteLine("El municipio seleccionado no es válido");
                }

            }
        }

        private void loadCate()
        {
            N_categoria cate = new N_categoria();

            DataTable dt = cate.N_mostrarCategorias();
            cb_cate.DataSource = dt;
            cb_cate.DisplayMember = "nombre";
            cb_cate.ValueMember = "id";

        }

        private void loadSubcate(int idCate)
        {
            N_subcategoria subcategoria = new N_subcategoria();
            DataTable dt = subcategoria.buscar(idCate);

            cb_subCate.DataSource = dt;
            cb_subCate.DisplayMember = "nombre";
            cb_subCate.ValueMember= "id";
        }

        private void BtnSoli_Click(object sender, EventArgs e)
        {
            Frm_Compra Fcompra = new Frm_Compra();
            Fcompra.Show(e_id);
        }
    }
}
