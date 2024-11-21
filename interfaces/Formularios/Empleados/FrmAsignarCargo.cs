using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Reflection.Emit;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Negocio;
using Negocio.Empleado;

namespace interfaces.Formularios.Empleados
{
    public partial class FrmAsignarCargo : Form
    {
        
        public FrmAsignarCargo()
        {
            InitializeComponent();
            loadDataEmp();
            loadDataCargo();
            dataGridView1.ReadOnly = true;
        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            if (e.RowIndex >= 0)
            {
                DataGridViewRow selectedRow = dataGridView1.Rows[e.RowIndex];

                txt_eid.Text = selectedRow.Cells["CODIGO EMPLEADO"].Value.ToString();
                label9.Text = selectedRow.Cells["CODIGO EMPLEADO"].Value.ToString();
                label6.Text = selectedRow.Cells["Empleado"].Value.ToString();
                label12.Text = selectedRow.Cells["TELEFONO"].Value.ToString();
                //cate = selectedRow.Cells["CATEGORIA"].Value.ToString();
                //subCate = selectedRow.Cells["SUBCATEGORIA"].Value.ToString();
                //prod = selectedRow.Cells["PRODUCTO"].Value.ToString();
                //precioUnitario = Convert.ToDecimal(selectedRow.Cells["PRECIO"].Value);
                //lb_categoria.Text = cate;
                //lb_nombreItem.Text = prod;
            }

        }


        private void loadDataEmp()
        {
            N_empleado emp = new N_empleado();

            dataGridView1.DataSource = emp.detCargoEmp();
        }
        private void loadDataCargo()
        {
            N_Cargo cargo = new N_Cargo();
            comboBox1.ValueMember = "id"; 
            comboBox1.DisplayMember = "nombre";
            comboBox1.DataSource = cargo.listar();

        }


        private void cargosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmCargo frmCargo = new FrmCargo();
            this.Close();
            frmCargo.Show();
           
        }

        private void promoverEmpleadoToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmAsignarCargo frmAsignarCargo = new FrmAsignarCargo();
            this.Close();
            frmAsignarCargo.Show();
        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
