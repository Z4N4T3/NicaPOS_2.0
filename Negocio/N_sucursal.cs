using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


using Datos;
using Entidad;
namespace Negocio
{
    public class N_sucursal
    {
        D_suscursal d_suscursal = new D_suscursal();
        public DataTable N_listarSucursalAll() {
            return d_suscursal.listarSucursales();
        } 
    }
}
