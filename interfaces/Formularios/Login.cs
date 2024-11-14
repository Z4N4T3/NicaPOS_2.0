using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

using Negocio;
using Entidad;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;

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
            //if (!isLoging)
            //{
            //    messageTextBox.Visible = true;
            //    button1.Visible = false;
            //    button2.Visible=false;
            //    textBox1.Text=String.Empty; textBox2.Text=String.Empty;
            //}


            E_usuario e_usr = new E_usuario();
            N_usuario n_usr = new N_usuario();

            e_usr.usr_name = textBox1.Text;
            e_usr.usr_pw = textBox2.Text;
            int count = 0;
            bool isLogin = n_usr.n_auth(e_usr);
            if (isLogin)
            {
                MessageBox.Show("Inicio de sesion Exitoso");

                FrmFacturacion facturacion = new FrmFacturacion();
                facturacion.Show();
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
