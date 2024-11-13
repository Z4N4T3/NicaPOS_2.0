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
        }

        private void comboBox_cate_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void loadCate()
        {
            N_categoria cate = new N_categoria();
            DataTable dt = cate.N_mostrarCategorias();
            comboBox_cate.DataSource = dt;
            comboBox_cate.DisplayMember = "nombre";
            comboBox_cate.ValueMember = "id";
           
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
