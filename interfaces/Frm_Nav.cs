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
using interfaces.Utilidades;

namespace interfaces
{
    public partial class Frm_Nav : Form
    {
        private Navy navy;
        private E_usuario e_usr = new E_usuario();
        private int e_id;
        public Frm_Nav(int eid)
        {
            this.e_id = eid;

            InitializeComponent();
            navy = new Navy(this,  eid);
            navy.SetupMenu(flowLayoutPanel1);
            navy.configAcceso(flowLayoutPanel1);
        }

        private void panel1_Paint(object sender, PaintEventArgs e)
        {

        }

        private void flowLayoutPanel1_Paint(object sender, PaintEventArgs e)
        {

        }
    }
}
