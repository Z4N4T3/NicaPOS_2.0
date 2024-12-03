using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using Negocio;
using Negocio.Venta;

namespace interfaces.Formularios.Venta
{
    public partial class Frm_ReporteVenta : Form
    {
        public Frm_ReporteVenta()
        {
            InitializeComponent();
            loadDataEmp();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
           
            this.Close();
        
        }

        private void Frm_ReporteVenta_Load(object sender, EventArgs e)
        {

        }

        private void loadData()
        {
            N_venta venta = new N_venta();
            
            DataTable dt =  venta.filtrar((int)comboBox1.SelectedValue, dateTimePicker1.Value.Date, dateTimePicker2.Value.Date);
            dataGridView1.DataSource = dt;
        }

        private void loadDataEmp()
        {
            N_empleado emp = new N_empleado();

            comboBox1.DataSource = emp.detCargoEmp();
            comboBox1.DisplayMember = "Empleado";
            comboBox1.ValueMember = "CODIGO EMPLEADO";
        }
        private void button2_Click(object sender, EventArgs e)
        {
           
            loadData();
        }

        private void dateTimePicker1_ValueChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            dataGridView1.Rows.Clear();
        }
    }
}
