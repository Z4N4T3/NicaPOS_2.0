using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Entidad;
using Negocio;

namespace interfaces.Formularios.Clasificacion
{
    public partial class Frm_Subcategoria : Form
    {
        public Frm_Subcategoria()
        {
            InitializeComponent();
            loadCate();
            loadSubCate();
        }

        private void comboBox_cate_SelectedIndexChanged(object sender, EventArgs e)
        {


        }

        private void loadCate()
        {
            N_categoria cate = new N_categoria();
            DataTable dt = cate.N_mostrarCategorias();
            comboBox_cate.DisplayMember = "nombre";
            comboBox_cate.ValueMember = "id";
            comboBox_cate.DataSource = dt;

        }

        private void loadSubCate()
        {
            N_subcategoria subcategoria = new N_subcategoria();
            DataTable dt = subcategoria.listar();
            dataGridView_sub.DataSource = dt;
        }

        private void categoriaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Frm_Categoria_Prod frm_Categoria_Prod = new Frm_Categoria_Prod();
            this.Close();
            frm_Categoria_Prod.Show();
        }

        private void subcategoriaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Frm_Subcategoria frm_Subcategoria = new Frm_Subcategoria();
            this.Close();
            frm_Subcategoria.Show();
        }

        private void dataGridView_categoria_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void btn_agregar_Click(object sender, EventArgs e)
        {
            N_subcategoria sub = new N_subcategoria();
            insertarSub(sub);

        }

        void insertarSub(N_subcategoria nSub)
        {
            E_subcategoria eSub = new E_subcategoria();

            eSub.nombre = txt_nombre.Text;
            eSub.descripcion = txt_desc.Text;
            if (isActive.Checked)
            {
                eSub.Estado = 1;
            }
            else
            {
                eSub.Estado = 2;
            }
            if (String.IsNullOrEmpty(txt_nombre.Text))
            {
                MessageBox.Show("No se permiten campos vacios");
            }
            int CateSelected;

            if (int.TryParse(comboBox_cate.SelectedValue.ToString(), out CateSelected))
            {
                eSub.IdCat = CateSelected;
            }
            else {
                MessageBox.Show("Selecciona una categoria");
            }
            
            bool creada = nSub.insertar(eSub);
            MessageBox.Show(creada ? "Subcategoria creada exitosamente." : "Error al crear el Subcategoria.");

            loadSubCate();


        }

        private void txt_nombre_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
