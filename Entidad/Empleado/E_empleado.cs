using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad
{
    public class E_empleado
    {
      
            public int Id { get; set; }
            public string Nombre1 { get; set; }
            public string Nombre2 { get; set; }
            public string Apellido1 { get; set; }
            public string Apellido2 { get; set; }
            public bool Genero { get; set; } 
            public DateTime FechaNacimiento { get; set; }
            public string Identificacion { get; set; }
            public int IdEstado { get; set; }
            public int IdSucursal { get; set; }
     

    }
}
