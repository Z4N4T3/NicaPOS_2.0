using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using interfaces.Formularios.Caja;

namespace interfaces.Formularios
{
    public partial class FrmCaja : Form
    {

        int eid;
        public FrmCaja(int e_id)
        {
            this.eid = e_id;
            InitializeComponent();

            
        }

        private void FrmCaja_Load(object sender, EventArgs e)
        {

        }

        private void dataGridView1_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Frm_Nav nav = new Frm_Nav(eid);

            this.Close();
            nav.Show();
        }

        private void label4_Click(object sender, EventArgs e)
        {
            Frm_DetCaja frm_DetCaja = new Frm_DetCaja();

            this.Close();
            frm_DetCaja.Show();
        }
    }
}
