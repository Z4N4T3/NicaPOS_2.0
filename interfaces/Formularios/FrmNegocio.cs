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
using Entidad.Empleado;
using interfaces.Clases;
using Negocio;
using Negocio.Division_geografica;

namespace interfaces.Formularios
{
    public partial class FrmNegocio : Form
    {
        private ClsNavbar menuHandler;
       
        public FrmNegocio()
        {
            InitializeComponent();
            menuHandler = new ClsNavbar(this);
            menuHandler.SetupMenu(menuStrip1);

            loadDept();
            
            loadSuc(); 
            

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

            N_empleado n_Empleado = new N_empleado();
            insertarEmpleado(n_Empleado,genero);

        }

        private void insertarEmpleado(N_empleado nemp, bool genero)
        {
            E_empleado emp = new E_empleado();
            E_EmpleadoDireccion eDir = new E_EmpleadoDireccion();
            E_EmpleadoEmail email = new E_EmpleadoEmail();
            E_EmpleadoTelefono eTel = new E_EmpleadoTelefono();

            emp.Nombre1 = txtPrimerNombre.Text;
            emp.Nombre2 = txtSegundoNombre.Text;
            emp.Apellido1 = txtPrimerApellido.Text;
            emp.Apellido2 = txtSegundoApellido.Text;
            emp.Genero = genero;
            emp.FechaNacimiento = fechaNacimiento.Value.Date;
            emp.Identificacion = txtIdentificacion.Text;
            emp.IdSucursal = Int32.Parse(comboBox1.SelectedValue.ToString());

            if (checkBox_estado.Checked)
            {
                emp.IdEstado = 1;
            } else
            { emp.IdEstado = 2;}

            eTel.Telefono = txt_numero.Text;
            eTel.IdCompania = Int32.Parse(cb_company.SelectedValue.ToString());

            eDir.Direccion = textBox4.Text;
            int baSelec;
            if (int.TryParse(cb_barrio.SelectedValue.ToString(), out baSelec))
            {
                eDir.IdBarrio = baSelec;
            }
            else
            {
                Console.WriteLine("El valor seleccionado no es válido");
            }

            email.Email = txt_email.Text;
            
            bool creado = nemp.insertar(emp,eDir,eTel,email);
            MessageBox.Show(creado ? "Empleado creado exitosamente." : "Error al crear el Empleado.");

        }

        private void txtPrimerNombre_TextChanged(object sender, EventArgs e)
        {

        }

        private void checkBoxM_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxM.Checked)
            {
                checkBoxF.Checked = false;
                genero = true;
            }
        }

        private void checkBoxF_CheckedChanged(object sender, EventArgs e)
        {
            if (checkBoxF.Checked)
            {
                checkBoxM.Checked = false;
                genero = false;
            }
        }

        private void fechaNacimiento_ValueChanged(object sender, EventArgs e)
        {

        }



        private void CargarData(String nombreSP)
        {
           
        }


        private void loadSuc()
        {

            N_sucursal n_Sucursal = new N_sucursal();
            DataTable dt = n_Sucursal.N_listarSucursalAll();
            comboBox1.DataSource = dt;
            comboBox1.DisplayMember = "nombre";
            comboBox1.ValueMember= "id";
     
        }



        void loadDept()
        {
            N_departamentos dept = new N_departamentos();

            DataTable dt = dept.n_loadDept();
            cb_dept.DataSource = dt;
            cb_dept.DisplayMember = "nombreDep";
            cb_dept.ValueMember = "idDep";
        }

        void loadMun(int idDept)
        {
            N_municipio municipio = new N_municipio();
            DataTable dt=municipio.n_loadMun(idDept);
            cb_mun.DataSource = dt;
            cb_mun.DisplayMember = "nombreMun";
            cb_mun.ValueMember= "idMun";

        }

        void loadBa(int idMun)
        {
            N_barrio barrio = new N_barrio();
            DataTable dt = barrio.n_loadBa(idMun);

            cb_barrio.DataSource = dt;
            cb_barrio.DisplayMember = "nombreB";
            cb_barrio.ValueMember = "idB";
        }
        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void comboBox1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void textBox2_TextChanged(object sender, EventArgs e)
        {

        }

        private void label2_Click(object sender, EventArgs e)
        {

        }

        private void label12_Click(object sender, EventArgs e)
        {

        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }

        private void label16_Click(object sender, EventArgs e)
        {

        }

        private void label15_Click(object sender, EventArgs e)
        {

        }

        private void comboBox4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cb_mun.SelectedIndex >= 0)
            {
                int munSelec;
                if (int.TryParse(cb_mun.SelectedValue.ToString(), out munSelec))
                {
                    loadBa(munSelec);  
                }
                else
                {
                    Console.WriteLine("El valor seleccionado no es válido");
                }

            }

        }

        private void comboBox3_SelectedIndexChanged(object sender, EventArgs e)
        {
         
            if (cb_dept.SelectedIndex >= 0)
            {
                int deptSelec;
                if (int.TryParse(cb_dept.SelectedValue.ToString(), out deptSelec))
                {
                    loadMun(deptSelec);  
                }
                else
                {
                    Console.WriteLine("El valor seleccionado no es válido");
                }
                cb_barrio.DataSource = null;
            }

        }

        private void cb_barrio_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        private void checkBox_estado_CheckedChanged(object sender, EventArgs e)
        {
            
        }
    }
}
