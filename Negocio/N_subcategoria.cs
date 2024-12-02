using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Entidad;

namespace Negocio
{
    public class N_subcategoria
    {

        D_subcategoria sub = new D_subcategoria();
        public DataTable listar()
        {
            return sub.D_listar();
        }

        public bool insertar(E_subcategoria Esub)
        {
            return sub.D_insertar(Esub);
        }

        public DataTable buscar(int id)
        {
            return sub.D_buscar(id);
        }
    }
}
