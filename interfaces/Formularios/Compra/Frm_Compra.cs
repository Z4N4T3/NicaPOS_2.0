using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace interfaces.Formularios.Compra
{
    public partial class Frm_Compra : Form
    {
        private int eid;
        public Frm_Compra(int eid)
        {
            InitializeComponent();
            this.eid = eid;
        }

        private void Frm_Compra_Load(object sender, EventArgs e)
        {

        }

        private void nuevaSolicitudToolStripMenuItem_Click(object sender, EventArgs e)
        {
            Frm_NuevaSoli nueva = new Frm_NuevaSoli(eid);
            this.Close();
            nueva.Show();

        }

        private void solicitudToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }
    }
}
