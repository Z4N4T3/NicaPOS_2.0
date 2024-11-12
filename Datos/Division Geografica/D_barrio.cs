using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos.Division_Geografica
{
    public class D_barrio
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);

        public DataTable loadBa(int idMun)
        {
            using (SqlCommand cmd = new SqlCommand("sp_mostrar_barrio", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idMun", idMun);
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
