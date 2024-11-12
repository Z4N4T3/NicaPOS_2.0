using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos.Division_Geografica
{
    public class D_departamento
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);
        

        public DataTable loadDept()
        {
            using (SqlCommand cmd = new SqlCommand("sp_mostrar_dept", conn))
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
