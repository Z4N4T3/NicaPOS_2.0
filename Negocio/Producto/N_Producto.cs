using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


using Datos;
using Datos.Producto;
using Entidad;
namespace Negocio.Producto
{
    public class N_Producto
    {
        D_producto d_Producto = new D_producto();
        public DataTable listarProductoPrecio()
        {
            return d_Producto.listarProductoPrecio();
        }

        public DataTable buscarProd(string cod)
        {
            return d_Producto.BuscarProductoPrecio(cod);
        }
    }
}
