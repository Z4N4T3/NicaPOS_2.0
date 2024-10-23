using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using interfaces.Formularios;
using System.Windows.Forms;
namespace interfaces.Clases
{
    public class ClsNavbar
    {
        private Form mainForm;

        public ClsNavbar(Form mainForm)
        {
            this.mainForm = mainForm;
        }

        public void SetupMenu(MenuStrip menuStrip)
        {
            foreach (ToolStripMenuItem menuItem in menuStrip.Items)
            {
                menuItem.Click += MenuItem_Click;
                foreach (ToolStripItem subItem in menuItem.DropDownItems)
                {
                    subItem.Click += MenuItem_Click;
                }
            }
        }

        private void MenuItem_Click(object sender, EventArgs e)
        {
            ToolStripItem menuItem = sender as ToolStripItem;

            switch (menuItem.Name)
            {
                case "negocioToolStripMenuItem":
                    abrirFrm(new FrmNegocio());
                    break;
                case "inventarioToolStripMenuItem":
                    abrirFrm(new FrmInventario());
                    break;
                case "sistemaToolStripMenuItem":
                    abrirFrm(new FrmSistema());
                    break;
                // Add cases for other forms
                default:
                    MessageBox.Show("Modulo no disponible");
                    break;
            }
        }

        private void abrirFrm(Form form)
        {
            form.Show();
            mainForm.Hide(); // opcional
        }
    }
}
