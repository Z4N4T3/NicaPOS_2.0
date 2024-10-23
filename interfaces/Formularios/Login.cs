using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace interfaces.Formularios
{
    public partial class Login : Form
    {
        private Clases.ClsDatabase objDB;

        public Login()
        {
            InitializeComponent();
            objDB = new Clases.ClsDatabase();
            objDB.conectarBD();
        }

        // Iniciar sesión
        private void button2_Click(object sender, EventArgs e)
        {
            String TxtUsername = textBox1.Text;
            String TxtPassword = textBox2.Text;
            int count = 0;
            do
            {
                if (string.IsNullOrEmpty(TxtUsername) || string.IsNullOrEmpty(TxtPassword))
                {
                    MessageBox.Show("No se permiten campos vacíos");
                    count++;
                    //return;
                }

                if (AuthUsuario(TxtUsername, TxtPassword))
                {
                    MessageBox.Show("Inicio de sesión exitoso!");

                    FrmMain FrmMain = new FrmMain();
                    FrmMain.Show();
                    this.Hide();
                }
                else
                {
                    MessageBox.Show("Usuario o contraseña incorrectos");
                    count++;
                }
            } while (count <= 3);

            if (count >= 3)
            {
                messageTextBox.Visible = true;
                button1.Visible = false;
                button2.Visible=false;
                textBox1.Text=String.Empty; textBox2.Text=String.Empty;
            }
        }

           

        private bool AuthUsuario(string username, string password)
        {
            SqlParameter[] parameters = {
                new SqlParameter("@username", SqlDbType.VarChar) { Value = username },
                new SqlParameter("@password", SqlDbType.VarChar) { Value = password }
            };

            SqlCommand cmd = new SqlCommand("AuthUsuario", objDB.conectarBD());
            cmd.CommandType = CommandType.StoredProcedure;

            if (parameters != null)
            {
                foreach (SqlParameter param in parameters)
                {
                    cmd.Parameters.Add(param);
                }
            }

            try
            {
                SqlDataReader reader = cmd.ExecuteReader();
                if (reader.HasRows)
                {
                    reader.Close();
                    return true;
                }
                else
                {
                    reader.Close();
                    return false;
                }
            }
            catch (SqlException ex)
            {
                MessageBox.Show("Error autenticando el usuario: " + ex.ToString());
                return false;
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
