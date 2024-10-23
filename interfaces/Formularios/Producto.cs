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

namespace interfaces.Formularios
{
    public partial class Producto : Form
    {
        private Clases.ClsDatabase objDB;

        public Producto()
        {
            InitializeComponent();
            objDB = new Clases.ClsDatabase();
            objDB.conectarBD();
            CargarData();
        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void label4_Click(object sender, EventArgs e)
        {

        }

        private void textBox3_TextChanged(object sender, EventArgs e)
        {

        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
        private void CargarData()
        {
            try
            {
                DataTable dataTable = objDB.ExecStoredProc("sp_mostrar_informacion_productos");
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
    }
}
