using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace interfaces.Formularios.Empleados
{
    public partial class FrmCargo : Form
    {
        public FrmCargo()
        {
            InitializeComponent();
        }

        private void cargosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmCargo frmCargo = new FrmCargo();
            this.Close();
            frmCargo.Show();
        }

        private void promoverEmpleadoToolStripMenuItem_Click(object sender, EventArgs e)
        {

            FrmAsignarCargo frmAsignarCargo = new FrmAsignarCargo();
            this.Close();
            frmAsignarCargo.Show();
        }

        private void button1_Click(object sender, EventArgs e)
        {

        }
    }
}
