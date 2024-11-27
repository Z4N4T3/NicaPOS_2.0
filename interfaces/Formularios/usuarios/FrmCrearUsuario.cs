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
using Negocio;

namespace interfaces.Formularios.usuarios
{
    public partial class FrmCrearUsuario : Form
    {
        public FrmCrearUsuario()
        {
            InitializeComponent();
            txt_usr_pw.UseSystemPasswordChar = true;
            textBox1.UseSystemPasswordChar = true;
        }

        private void button1_Click(object sender, EventArgs e)
        {
            this.Close();
        }

        private void BtnAgregar_usr_Click(object sender, EventArgs e)
        {
            N_usuario n_usr = new N_usuario();
            crearUsuario(n_usr);
        }

        void crearUsuario(N_usuario n_usr)
        {


            if (String.IsNullOrEmpty(txt_usr_name.Text) || String.IsNullOrEmpty(txt_usr_pw.Text) || String.IsNullOrEmpty(txt_usr_eid.Text))
            {
                MessageBox.Show("No se permiten campos vacios");
            }
            else
            {
                if (!txt_usr_pw.Text.Equals(textBox1.Text))
                {

                    MessageBox.Show("Las contraseñas no coinciden");
                }
                else {
                    E_usuario usr = new E_usuario();
                    usr.usr_name = txt_usr_name.Text;
                    usr.usr_pw = txt_usr_pw.Text;

                    if (int.TryParse(txt_usr_eid.Text, out int eid))
                    {
                        usr.id_emp = eid;
                    }
                    else
                    {
                        MessageBox.Show("El eid debe ser un número.");
                        return;
                    }
                    bool creado = n_usr.n_crear(usr);
                    MessageBox.Show(creado ? "Usuario creado exitosamente." : "Error al crear el usuario.");
                }
                
               
            }

        }

        private void textBox1_TextChanged(object sender, EventArgs e)
        {

        }

        private void txt_usr_name_TextChanged(object sender, EventArgs e)
        {

        }

        private void txt_usr_pw_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
