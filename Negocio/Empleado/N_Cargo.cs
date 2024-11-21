using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos.Empleado;

namespace Negocio.Empleado
{
    public class N_Cargo
    {

        D_cargo cargo = new D_cargo();

        public DataTable listar()
        {
            return cargo.d_listarCargo();
        }
    }
}
