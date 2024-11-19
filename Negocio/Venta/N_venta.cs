using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos.Venta;
using Entidad.Venta;

namespace Negocio.Venta
{
    public class N_venta
    {
        D_venta d_venta = new D_venta();
       
        public bool insertar(E_venta venta)
        {
            return d_venta.d_InsertarVenta(venta);
        }

    }
}
