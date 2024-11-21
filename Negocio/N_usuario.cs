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
    public class N_usuario
    {
        D_usuario usr = new D_usuario();
        public int n_auth(E_usuario usuario)
        {
            return usr.auth(usuario);
        }

        // ver
        public DataTable n_listarAll()
        {
            return usr.listarUsuario_all();
        }
        // listar usuario por ID
        public DataTable n_listar(int id)
        {
            return usr.listarUsuario(id);
        }

        //crear
        public bool n_crear(E_usuario usuario)
        {
            return usr.crearUsuario(usuario);
        }
        // eliminar
        public bool n_eliminar(int id)
        {
            return usr.EliminarUsuario(id);
        }
    }
}
