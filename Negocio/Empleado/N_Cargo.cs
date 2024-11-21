using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos.Empleado;
using Entidad.Empleado;

namespace Negocio.Empleado
{
    public class N_Cargo
    {

        D_cargo cargo = new D_cargo();

        public DataTable listar()
        {
            return cargo.d_listarCargo();
        }


        public DataTable buscar(int id) { 
            return cargo.d_buscarCargo(id);
        }


        public bool asginar(E_historial_cargo hCargo)
        {

            return cargo.d_asignarCargo(hCargo);
        }

    }
}
