using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using interfaces.Formularios;
using System.Windows.Forms;
using Negocio;
using Negocio.Seguridad;
using Entidad;
namespace interfaces.Clases
{
    public class ClsNavbar
    {
        private Form mainForm;
        private E_usuario usr;
        private int e_id;
        public ClsNavbar(Form mainForm, int eid)
        {
            this.mainForm = mainForm;
            this.e_id = eid;
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
        public void configAcceso(MenuStrip menuStrip)
        {
            N_seguridad seguridad = new N_seguridad();
            // revisar esa mierda porque no esta capturando los parametros del login 
            int cargo = seguridad.getCargoActual(e_id);
            List<string> AccesosPermitidos = seguridad.getAccesos(cargo);
            Console.WriteLine("cargo: " + cargo);
            foreach (string acceso in AccesosPermitidos)
            {
                Console.WriteLine(acceso);
            }
            foreach (ToolStripMenuItem item in menuStrip.Items)
            {
                // Si el acceso está permitido, habilitar y asignar evento
                item.Enabled = AccesosPermitidos.Contains(item.Text);

            }
        }

     

        private void MenuItem_Click(object sender, EventArgs e)
        {
            ToolStripItem menuItem = sender as ToolStripItem;
        
            switch (menuItem.Name)
            {
                case "negocioToolStripMenuItem":
                    
                    abrirFrm(new FrmNegocio(e_id));
                    break;
                case "inventarioToolStripMenuItem":
                    abrirFrm(new FrmInventario(e_id));
                    break;
                case "sistemaToolStripMenuItem":
                    abrirFrm(new FrmSistema(e_id));
                    break;
                case "ventaToolStripMenuItem":
                    abrirFrm(new FrmFacturacion(e_id));
                    break;
                    
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
