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

namespace interfaces.Formularios.Compra
{
    public partial class Frm_NuevaSoli : Form
    {
        private int e_id;
        public Frm_NuevaSoli(int eid)
        {
            this.e_id = eid;
            InitializeComponent();
           
        }

        private void groupBox1_Enter(object sender, EventArgs e)
        {

        }

        private void Frm_NuevaSoli_Load(object sender, EventArgs e)
        {

        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            Frm_Compra compra = new Frm_Compra(e_id);

            this.Close();
            compra.Show();
        }
    }
}
