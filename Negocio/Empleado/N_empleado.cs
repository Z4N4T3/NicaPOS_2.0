using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Entidad.Empleado;
using Entidad;

namespace Negocio
{
    public class N_empleado
    {

        D_empleado d_Empleado= new D_empleado();

        public bool insertar(E_empleado empleado, E_EmpleadoDireccion eDir = null, E_EmpleadoTelefono eTel = null, E_EmpleadoEmail eEmail = null)
        {
            return d_Empleado.insertarEmpleado(empleado, eDir, eTel, eEmail);
        }
    }
}
