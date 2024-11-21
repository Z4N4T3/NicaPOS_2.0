using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad.Empleado
{
    public class E_cargo
    {
    }

    public class E_historial_cargo
    {
       public int id { get; set; }
        public DateTime fecha { get; set; }
        public string motivo { get; set; }
        public int id_cargo { get; set; }
        public int id_empleado { get; set; }
        public int estado { get; set; }

    }
}
