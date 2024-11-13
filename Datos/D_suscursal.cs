using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidad;
namespace Datos
{
    public class D_suscursal
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);



     
        public DataTable listarSucursales()
        {
            using (SqlCommand cmd = new SqlCommand("sp_listarSucursales_All", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    return dt;
                }
            }
        }

        
    }
}
