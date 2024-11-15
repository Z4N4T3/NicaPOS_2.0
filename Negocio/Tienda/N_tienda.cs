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
}
