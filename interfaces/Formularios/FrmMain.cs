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
using interfaces.Clases;
using interfaces.Utilidades;

namespace interfaces.Formularios
{
    public partial class FrmMain : Form
    {
        private Navy menuHandler;
        private E_usuario e_usr = new E_usuario();
        private int e_id;
        public FrmMain(int eid)
        {
            this.e_id = eid;
            InitializeComponent();
            //menuHandler = new ClsNavbar(this, eid);
            //menuHandler.SetupMenu(menuStrip1);
            //menuHandler.configAcceso(menuStrip1);

        }

        private void ocultar()
        {
            foreach (Control ctrl in this.Controls)
            {
                if(ctrl is Panel)
                {
                    ctrl.Visible = false;
                }
            }

        }
        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

    
        private void negocioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();

        }

        private void panelBtn_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panelMain_Paint(object sender, PaintEventArgs e)
        {

        }

        private void BtnEmpleado_Click(object sender, EventArgs e)
        {

        }

        private void BtnPromo_Click(object sender, EventArgs e)
        {

        }

        private void BtnRoles_Click(object sender, EventArgs e)
        {

        }

        private void BtnPermiso_Click(object sender, EventArgs e)
        {

        }

        private void BtnUser_Click(object sender, EventArgs e)
        {

        }

        private void BtnProveedor_Click(object sender, EventArgs e)
        {

        }

        private void BtnCatProductos_Click(object sender, EventArgs e)
        {

        }

        private void BtnCatServicios_Click(object sender, EventArgs e)
        {

        }

        private void BtnMovInventario_Click(object sender, EventArgs e)
        {

        }

        private void inventarioToolStripMenuItem_Click(object sender, EventArgs e)
        {
       
        }

        private void cajaToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void reportesToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void sistemaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void panelSistema_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel_inventario_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void ventaToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void FrmMain_Load(object sender, EventArgs e)
        {

        }

        private void menuStrip1_ItemClicked_1(object sender, ToolStripItemClickedEventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            this.Close();

            login.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            Login login = new Login();
            this.Close();

            login.Show();
        }
    }
}
