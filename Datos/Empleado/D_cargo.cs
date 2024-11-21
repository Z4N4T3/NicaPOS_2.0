using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos.Empleado
{
    public class D_cargo
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);

        public DataTable d_listarCargo()
        {

            using (SqlCommand cmd = new SqlCommand("sp_cargo_listar", conn))
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
