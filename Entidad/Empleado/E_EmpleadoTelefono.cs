using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad.Empleado
{
    public class E_EmpleadoTelefono
    {
        public int Id { get; set; }
        public string Telefono { get; set; }
        public int? IdCompania { get; set; } 
        public int IdEmpleado { get; set; }
        public int Estado { get; set; }
    }
}
