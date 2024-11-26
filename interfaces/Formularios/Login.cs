using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

using Negocio;
using Entidad;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using interfaces.Clases;

namespace interfaces.Formularios
{
    public partial class Login : Form
    {

        public Login()
        {
            InitializeComponent();
  
            textBox2.UseSystemPasswordChar = true;

        }
        // Iniciar sesión
        private void button2_Click(object sender, EventArgs e)
        {

            E_usuario e_usr = new E_usuario();
            N_usuario n_usr = new N_usuario();

            e_usr.usr_name = textBox1.Text;
            e_usr.usr_pw = textBox2.Text;
            int count = 0;

            e_usr.id_emp = n_usr.n_auth(e_usr);
            if (e_usr.id_emp >= 1)
            {
                MessageBox.Show("Inicio de sesion Exitoso");

                Frm_Nav main = new Frm_Nav(e_usr.id_emp);
                //ClsNavbar navy = new ClsNavbar(facturacion, e_usr.id_emp);

                main.Show();
                this.Hide();
                
            }
            else
            {
                MessageBox.Show("Usuario o contraseña incorrectos");

                textBox1.Text = "";
                textBox2.Text = "";
                count++;
                
            }



       

        }

     
        private void button1_Click(object sender, EventArgs e)
        {
            Application.Exit();
        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {
        }

        private void messageTextBox_Click(object sender, EventArgs e)
        {

        }
    }
}
