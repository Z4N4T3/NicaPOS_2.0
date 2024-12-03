using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace interfaces.Formularios.Caja
{
    public partial class Frm_DetCaja : Form
    {
        public Frm_DetCaja()
        {
            InitializeComponent();
        }

        private void pictureBox1_Click(object sender, EventArgs e)
        {
            FrmCaja frm_DetCaja = new FrmCaja(1);

            this.Close();
            frm_DetCaja.Show();
            

        }
    }
}
