using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad.Tienda
{
    public class E_tienda
    {

        public int id {  get; set; }
        public string nombre { get; set; }
        public string RUC { get; set; }
        public string telefono { get; set; }
        public string razon_social { get; set; }

        public const double TASA = 36.50;
        public const double IVA = 0.15;
    }
}
