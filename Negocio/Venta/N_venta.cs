using System;
using System.Collections.Generic;
using System.Data;
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


        
        public int insertar_temp(E_venta venta)
        {
            return d_venta.d_InsertarVenta_temp(venta);
        }


        // eliminar o cambiar esta vaina tambien
        public bool insertarDet_temp(E_Det_venta venta)
        {
            return d_venta.d_InsertarDetVenta_temp(venta);
        }

        public DataTable filtrar(int eid, DateTime Fini, DateTime FFin){

            return d_venta.D_buscarVenta(eid, Fini, FFin);
        }
    }
}
