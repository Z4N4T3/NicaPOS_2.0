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
using Entidad;
using interfaces.Clases;
using interfaces.Formularios.usuarios;
using interfaces.Utilidades;
using Negocio;

namespace interfaces.Formularios
{
    public partial class FrmSistema : Form
    {
        private Navy menuHandler;

        private int e_id;
       
        public FrmSistema(int eid)
        {
            this.e_id = eid;
            InitializeComponent();
            menuHandler = new Navy(this, eid);
            menuHandler.SetupMenu(flowLayoutPanel1);
            menuHandler.configAcceso(flowLayoutPanel1);
            loadData();
        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void BtnUser_Click(object sender, EventArgs e)
        {

        }

        private void FrmUsuario_Paint(object sender, PaintEventArgs e)
        {

        }

        void loadData()
        {
            N_usuario n_usr = new N_usuario();
            E_usuario e_usr = new E_usuario();
            DataTable dt = n_usr.n_listarAll();

            gridUsuario.DataSource = dt;


        }

        private void BtnAgregar_usr_Click(object sender, EventArgs e)
        {
            N_usuario n_usr = new N_usuario();

          
        }

        

        private void txt_usr_name_TextChanged(object sender, EventArgs e)
        {

        }

        private void button1_Click(object sender, EventArgs e)
        {
            N_usuario n_usr = new N_usuario();

            buscarUsuario(n_usr);
            txt_usr_id.Text = String.Empty;
        }

        void buscarUsuario(N_usuario n_usr)
        {
            E_usuario usr = new E_usuario();
            if (int.TryParse(txt_usr_id.Text, out int id))
            {
                usr.id = id;
            }
            else
            {
                MessageBox.Show("El UUID debe ser un número.");
                return;
            }

            DataTable dt = n_usr.n_listar(usr.id);
            gridUsuario.DataSource = dt;

        }

        private void BtnDeshabilitar_usr_Click(object sender, EventArgs e)
        {
            E_usuario usr = new E_usuario();
            N_usuario n_usr = new N_usuario();

            DialogResult dr= MessageBox.Show("Deseas eliminar el Usuario?","Eliminar",MessageBoxButtons.YesNo,MessageBoxIcon.Question);
            if (dr == DialogResult.Yes)
            {
                eliminarUsuario(n_usr);
            }

            txt_usr_id.Text = String.Empty;
            loadData();
        }

        private void BtnActualizar_usr_Click(object sender, EventArgs e)
        {
            loadData();
        }

        void eliminarUsuario(N_usuario n_usr)
        {
            E_usuario usr = new E_usuario();

            if (int.TryParse(txt_usr_id.Text, out int id))
            {
                usr.id = id;
            }
            else
            {
                MessageBox.Show("El UUID debe ser un número.");
                return;
            }
            bool eliminado = n_usr.n_eliminar(usr.id);
            MessageBox.Show(eliminado ? "Usuario eliminado exitosamente." : "Error al eliminar el usuario.");


        }

        private void ventaToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void FrmSistema_Load(object sender, EventArgs e)
        {

        }

        private void btn_salir_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            this.Close();
            login.Show();
        }

        private void label3_Click(object sender, EventArgs e)
        {

        }

        private void txt_usr_eid_TextChanged(object sender, EventArgs e)
        {

        }

        private void nuevoUsuarioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmCrearUsuario frmCrearUsuario = new FrmCrearUsuario();
            frmCrearUsuario.Show();
        }
    }
}
