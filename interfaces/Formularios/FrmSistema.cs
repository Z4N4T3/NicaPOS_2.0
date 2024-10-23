using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using interfaces.Clases;

namespace interfaces.Formularios
{
    public partial class FrmSistema : Form
    {
        private ClsNavbar menuHandler;

        public FrmSistema()
        {
            InitializeComponent();
            menuHandler = new ClsNavbar(this);
            menuHandler.SetupMenu(menuStrip1);
        }

        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }
    }
}
