using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Datos;
using Datos.Seguridad;
namespace Negocio.Seguridad
{
    public class N_seguridad
    {

        D_seguridad d_Seguridad = new D_seguridad();


        public int getCargoActual(int eid)
        {
            return d_Seguridad.D_get_Cargo_actual(eid);
        }

        public List<string> getAccesos(int cargo)
        {
            return d_Seguridad.D_get_Accesos(cargo);
        }
    }
}
