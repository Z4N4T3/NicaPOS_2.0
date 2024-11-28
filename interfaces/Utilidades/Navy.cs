using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidad;
using System.Windows.Forms;
using Negocio.Seguridad;
using interfaces.Formularios;

namespace interfaces.Utilidades
{
    public class Navy
    {
        private Form myForm;
        private E_usuario usr;
        private int e_id;
        public Navy(Form mainForm, int eid)
        {
            this.myForm = mainForm;
            this.e_id = eid;
        }

        public void SetupMenu(FlowLayoutPanel menuPanel)
        {
            foreach (Control ctrl in menuPanel.Controls)
            {
                if (ctrl is Button btn)
                {
                    btn.Click += MenuItem_Click;
                }
            }
        }

        public void configAcceso(FlowLayoutPanel menuStrip)
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
            foreach (Control ctrl in menuStrip.Controls)
            {
                if (ctrl is Button btn)
                {
                    btn.Visible = AccesosPermitidos.Contains(btn.Text);
                }
            }
        }


        private void MenuItem_Click(object sender, EventArgs e)
        {
            Button button = sender as Button;

            if (button == null)
                return;

            switch (button.Name)
            {
                case "btnNegocio":
                    abrirFrm(new FrmNegocio(e_id));
                    break;

                case "btnCompra":
                    abrirFrm(new FrmInventario(e_id));
                    break;

                case "btnSistema":
                    abrirFrm(new FrmSistema(e_id));
                    break;

                case "btnVenta":
                    abrirFrm(new FrmFacturacion(e_id));
                    break;


                case "btnCaja":
                    abrirFrm(new FrmCaja(e_id));
                    break;

                default:
                    MessageBox.Show("Módulo no disponible");
                    break;
            }
        }
        private void abrirFrm(Form form)
        {
            form.Show();
            myForm.Hide(); // opcional, oculta la ventana principal
        }
    }
}
