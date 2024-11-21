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
using Entidad.Empleado;
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
                string nombreApellido = selectedRow.Cells["EMPLEADO"].Value?.ToString();
                string codigoEmpleado = selectedRow.Cells["CODIGO EMPLEADO"].Value?.ToString();

                label6.Text = $"{nombreApellido} ({codigoEmpleado})";

                label12.Text = selectedRow.Cells["TELEFONO"].Value.ToString();
                label14.Text = selectedRow.Cells["EMAIL"].Value.ToString();
                label16.Text = selectedRow.Cells["SUCURSAL"].Value.ToString();
                label9.Text = selectedRow.Cells["CARGO ACTUAL"].Value.ToString();

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

        private void label6_Click(object sender, EventArgs e)
        {

        }

        private void label9_Click(object sender, EventArgs e)
        {

        }

        private void btn_buscar_Click(object sender, EventArgs e)
        {
            N_Cargo cargo = new N_Cargo();
            if (string.IsNullOrEmpty(txt_eid.Text))
            {
                loadDataCargo();
            }
            else
            {
                dataGridView1.DataSource = cargo.buscar(Convert.ToInt32(txt_eid.Text));

            }
        }

        private void btn_asignar_Click(object sender, EventArgs e)
        {


            if (string.IsNullOrEmpty(txt_eid.Text))
            {
                MessageBox.Show("Por favcor selecciona un empleado", "Advertencia");
            }
            else
            {
                E_historial_cargo hCargo = new E_historial_cargo()
                {
                    fecha = dateTimePicker1.Value.Date,
                    motivo = txt_motivo.Text,
                    id_cargo = Convert.ToInt32(comboBox1.SelectedValue.ToString()),
                    id_empleado = Convert.ToInt32(txt_eid.Text),
                };

                N_Cargo cargo = new N_Cargo();

                bool actualizado = cargo.asginar(hCargo);
                if (actualizado)
                {
                    MessageBox.Show("se ha actualizado el empleado correctamente", "Mensaje");
                }
                else
                {
                    MessageBox.Show("Error al actualizar el cargo", "Error");
                }
                txt_eid.Text = String.Empty;
            }
          

        }



    }
}
