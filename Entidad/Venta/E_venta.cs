using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad.Venta
{
    public  class E_venta{

        public int Id { get; set; }
        public DateTime Fecha { get; set; }
        public string Num_comprobante { get; set; }
        public decimal Subtotal { get; set; }
        public decimal Impuesto { get; set; }
        public decimal Descuento { get; set; }
        public decimal Total { get; set; }
        public int Tipo_comprobante { get; set; }
        public int Estado { get; set; }
        public int Eid { get; set; }
        public int Id_sucursal { get; set; }
        public int Id_cliente { get; set; }
        public int Id_tipo_pago { get; set; }
        public int id_empleado { get; set; }

    }

    public class E_Det_venta {
        public int Id { get; set; }
        public int Cantidad { get; set; }
        public decimal PrecioU { get; set; }
        public decimal Descuento { get; set; }
        public decimal Impuesto { get; set; }
        public decimal Total { get; set; }
        public int Id_venta { get; set; }
        public int Id_producto { get; set; }
        public int Id_promo { get; set; }

    }

}
