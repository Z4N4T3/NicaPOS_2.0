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
        int eid;
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

        }
    }
}
