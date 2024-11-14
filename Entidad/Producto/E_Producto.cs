using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Entidad.Producto
{
    public class E_Producto
    {
   
            public int Id { get; set; }
            public string Nombre { get; set; }
            public string CodigoProducto { get; set; }
            public string Descripcion { get; set; }
            public int IdSubcategoria { get; set; }
            public int IdMarca { get; set; }
            public int? IdUM { get; set; } 
            public int Estado { get; set; }
        

    }

    public class E_ProductoCategoria
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public int Estado { get; set; }
    }
    public class E_ProductoSubCategoria
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public int Estado { get; set; }
        public int IdCat { get; set; }

    }
    public class E_ProductoMarca
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public int Estado { get; set; }

    }

    public class ProductoModelo
    {
        public int Id { get; set; }
        public string Nombre { get; set; }
        public int Estado { get; set; }  
        public int IdMarca { get; set; }
    }


}
