﻿using System;
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
    public partial class FrmMain : Form
    {
        private ClsNavbar menuHandler;
        public FrmMain()
        {
            InitializeComponent();
            menuHandler = new ClsNavbar(this);
            menuHandler.SetupMenu(menuStrip1);
        }

        private void ocultar()
        {
            foreach (Control ctrl in this.Controls)
            {
                if(ctrl is Panel)
                {
                    ctrl.Visible = false;
                }
            }

        }
        private void menuStrip1_ItemClicked(object sender, ToolStripItemClickedEventArgs e)
        {

        }

    
        private void negocioToolStripMenuItem_Click(object sender, EventArgs e)
        {
            this.Close();

        }

        private void panelBtn_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panelMain_Paint(object sender, PaintEventArgs e)
        {

        }

        private void BtnEmpleado_Click(object sender, EventArgs e)
        {

        }

        private void BtnPromo_Click(object sender, EventArgs e)
        {

        }

        private void BtnRoles_Click(object sender, EventArgs e)
        {

        }

        private void BtnPermiso_Click(object sender, EventArgs e)
        {

        }

        private void BtnUser_Click(object sender, EventArgs e)
        {

        }

        private void BtnProveedor_Click(object sender, EventArgs e)
        {

        }

        private void BtnCatProductos_Click(object sender, EventArgs e)
        {

        }

        private void BtnCatServicios_Click(object sender, EventArgs e)
        {

        }

        private void BtnMovInventario_Click(object sender, EventArgs e)
        {

        }

        private void inventarioToolStripMenuItem_Click(object sender, EventArgs e)
        {
       
        }

        private void cajaToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void reportesToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void sistemaToolStripMenuItem_Click(object sender, EventArgs e)
        {
            
        }

        private void panelSistema_Paint(object sender, PaintEventArgs e)
        {

        }

        private void panel_inventario_Paint(object sender, PaintEventArgs e)
        {

        }

        private void label1_Click(object sender, EventArgs e)
        {

        }

        private void ventaToolStripMenuItem_Click(object sender, EventArgs e)
        {

        }

        private void FrmMain_Load(object sender, EventArgs e)
        {

        }
    }
}
