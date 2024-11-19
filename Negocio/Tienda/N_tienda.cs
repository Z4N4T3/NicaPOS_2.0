using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;

namespace Negocio.Tienda
{
    public class N_tienda
    {

        D_tienda tienda =new D_tienda();
        public DataTable listarDatos()
        {
            return tienda.D_listar();
        }
    }


    public class N_comp_tel
    {

        D_comp_tel comp_Tel = new D_comp_tel();

        public DataTable listar()
        {
            return comp_Tel.d_listar();
        }
    }
}
