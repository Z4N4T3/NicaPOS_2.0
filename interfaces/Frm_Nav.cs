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
using interfaces.Formularios;
using interfaces.Utilidades;
using Negocio;
using Negocio.Empleado;

namespace interfaces
{
    public partial class Frm_Nav : Form
    {
        private Navy navy;
        private E_usuario e_usr = new E_usuario();
        private int e_id;
        public Frm_Nav(int eid)
        {
            this.e_id = eid;

            InitializeComponent();
            navy = new Navy(this,  eid);
            navy.SetupMenu(flowLayoutPanel1);
            navy.configAcceso(flowLayoutPanel1);
            loadEmpleado();
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
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

        private void Frm_Nav_Load(object sender, EventArgs e)
        {

        }

        private void loadEmpleado()
        {
            
            N_Cargo cargo = new N_Cargo();
            E_empleado emp = new E_empleado();
            DataTable dt = cargo.buscar(e_id);
            foreach(DataRow dr in dt.Rows)
            {
                lb_eid.Text = dr[0].ToString();
                lbl_name.Text = dr[1].ToString();
                lbl_cargo.Text = dr[2].ToString();
            }
            
        }
    }
}
