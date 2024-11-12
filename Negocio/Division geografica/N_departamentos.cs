using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Datos;
using Datos.Division_Geografica;
using Entidad;
namespace Negocio.Division_geografica
{
    public class N_departamentos
    {
        D_departamento dept = new D_departamento();
        public DataTable n_loadDept()
        {
            return dept.loadDept();
        }
    }
}
