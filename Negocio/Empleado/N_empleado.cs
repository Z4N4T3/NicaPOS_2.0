using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Entidad.Empleado;
using Entidad;
using System.Data;

namespace Negocio
{
    public class N_empleado
    {

        D_empleado d_Empleado= new D_empleado();

        public bool insertar(E_empleado empleado, E_EmpleadoDireccion eDir = null, E_EmpleadoTelefono eTel = null, E_EmpleadoEmail eEmail = null)
        {
            return d_Empleado.insertarEmpleado(empleado, eDir, eTel, eEmail);
        }


        public DataTable listar()
        {
            return d_Empleado.D_listarDetEmpl();
        }


        public DataTable detCargoEmp()
        {
            return d_Empleado.D_listarDetCargoEmp();
        }
    }
}
