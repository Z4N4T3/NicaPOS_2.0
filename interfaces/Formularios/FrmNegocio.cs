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
using Entidad;
using interfaces.Clases;
using Negocio;

namespace interfaces.Formularios
{
    public partial class FrmNegocio : Form
    {
        private ClsNavbar menuHandler;
        private Clases.ClsDatabase objDB;


        public FrmNegocio()
        {
            InitializeComponent();
            menuHandler = new ClsNavbar(this);
            menuHandler.SetupMenu(menuStrip1);

            objDB = new Clases.ClsDatabase();
            objDB.conectarBD();
            CargarDataSucursal(); 

        }

        private void FrmNegocio_Load(object sender, EventArgs e)
        {

        }

        private void panelMain_Paint(object sender, PaintEventArgs e)
        {

        }

        private void BtnEmpleado_Click(object sender, EventArgs e)
        {
           panelEmpleado.Visible = true;
            CargarData("sp_Leer_Empleados_Todos");
        }


        // agregar
        private void button3_Click(object sender, EventArgs e)
        {
            bool genero = true;
            if (checkBoxF.Checked)
            {
                genero = false;
            }
            else if (checkBoxM.Checked) { genero = true; }


            SqlParameter[] parameters = {
                new SqlParameter("@nombre1", SqlDbType.VarChar) { Value = txtPrimerNombre.Text },
                new SqlParameter("@nombre2", SqlDbType.VarChar) { Value = string.IsNullOrEmpty(txtSegundoNombre.Text) ? (object)DBNull.Value : txtSegundoNombre.Text },
                new SqlParameter("@apellido1", SqlDbType.VarChar) { Value = txtPrimerApellido.Text },
                new SqlParameter("@apellido2", SqlDbType.VarChar) { Value = string.IsNullOrEmpty(txtSegundoApellido.Text) ? (object)DBNull.Value : txtSegundoApellido.Text },
                new SqlParameter("@genero", SqlDbType.Bit) { Value = genero },
                new SqlParameter("@fecha_nacimiento", SqlDbType.Date) { Value = fechaNacimiento.Value },
                new SqlParameter("@identificacion", SqlDbType.VarChar) { Value = txtIdentificacion.Text },
                new SqlParameter("@id_estado", SqlDbType.Int) { Value = checkBox_estado.Checked ? 1 : 0 },
                new SqlParameter("@id_sucursal", SqlDbType.Int) { Value = Convert.ToInt32(comboBox1.SelectedValue) }
            };

            int newEmpleadoID = objDB.ExectSP_insertar("sp_Crear_Empleado", parameters);
            if (newEmpleadoID > 0)
            {
                MessageBox.Show("Empleado creado con éxito! Nuevo ID: " + newEmpleadoID);
            }
            else
            {
                MessageBox.Show("Error creando el empleado.");
            }


        }

        private void txtPrimerNombre_TextChanged(object sender, EventArgs e)
        {

        }

        private void checkBoxM_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxM.Checked)
            {
                checkBoxF.Checked = false;
            }
        }

        private void checkBoxF_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxF.Checked)
            {
                checkBoxM.Checked = false;
            }
        }

        private void fechaNacimiento_ValueChanged(object sender, EventArgs e)
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


        private void CargarDataSucursal()
        {

            E_sucursal e_Sucursal = new E_sucursal();
            N_sucursal n_Sucursal = new N_sucursal();

            try
            {
                DataTable dt = new DataTable();
                

                comboBox1.Items.Clear();
                foreach (DataRow row in dt.Rows)
                {
                    comboBox1.Items.
                }
            }
            catch (SqlException ex)
            {
                MessageBox.Show("Error loading data: " + ex.ToString());
            }
        }
        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }


    
    }
}
