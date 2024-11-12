using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad.Empleado
{
    public class E_EmpleadoDireccion
    {
        public int Id { get; set; }
        public string Direccion { get; set; }
        public int IdEmpleado { get; set; }
        public int? IdBarrio { get; set; }
        public int? Estado { get; set; }
    }
}
