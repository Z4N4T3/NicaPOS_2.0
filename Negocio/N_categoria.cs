using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


using Entidad;
using Datos;
using System.Data;
namespace Negocio
{
    public class N_categoria
    {
        D_categoria cate = new D_categoria();
        public DataTable N_mostrarCategorias()
        {
            return cate.mostrarCategoria();
        }
        public bool insertar (E_categoria Ecate)
        {
            return cate.insertar(Ecate);
        }

    }


}
