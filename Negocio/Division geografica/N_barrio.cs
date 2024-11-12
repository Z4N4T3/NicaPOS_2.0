using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Datos;
using Datos.Division_Geografica;

namespace Negocio.Division_geografica
{
    public class N_barrio
    {
        D_barrio barrio = new D_barrio();
        public DataTable n_loadBa(int idMun)
        {
            return barrio.loadBa(idMun);
        }
    }
}
