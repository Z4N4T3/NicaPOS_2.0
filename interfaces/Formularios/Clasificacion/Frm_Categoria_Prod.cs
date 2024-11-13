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
    public partial class Frm_Categoria_Prod : Form
    {

        

        public Frm_Categoria_Prod()
        {
            InitializeComponent();
            loadCate();
        }

        private void dataGridView_categoria_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }


        void loadCate()
        {
            N_categoria categoria = new N_categoria();

            DataTable dt = categoria.N_mostrarCategorias();

            dataGridView_categoria.DataSource = dt;
        }

        private void btn_agregar_Click(object sender, EventArgs e)
        {
           N_categoria n_Categoria = new N_categoria();
            insertar(n_Categoria);

        }

        private void isActive_CheckedChanged(object sender, EventArgs e)
        {

        }


        void insertar(N_categoria cate)
        {

            int estado;
            if (String.IsNullOrEmpty(txt_nombre.Text))
            {
                MessageBox.Show("No se permiten campos vacios");
            }
            else
            {
                E_categoria eCate = new E_categoria();

                if (isActive.Checked)
                    estado = 1;
                else
                    estado = 2;
                eCate.nombre = txt_nombre.Text;
                eCate.descripcion = txt_desc.Text;
                eCate.Estado = estado;
              
                bool creado = cate.insertar(eCate);
                MessageBox.Show(creado ? "Categoria insertada exitosamente." : "Error al insertar categoria.");
                setDefault();
                loadCate();
            }

        }


        void setDefault()
        {
            txt_buscar.Text = String.Empty;
            txt_nombre.Text = String.Empty;
            txt_desc.Text = String.Empty;
            isActive.Checked = false;
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
    }
}
