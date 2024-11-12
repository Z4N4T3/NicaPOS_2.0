using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Datos;
using Datos.Division_Geografica;
namespace Negocio.Division_geografica
{
    public class N_municipio
    {

        D_municipio mun = new D_municipio();
        public DataTable n_loadMun(int ID)
        {
            return mun.loadMun(ID);
        }
    }
}
