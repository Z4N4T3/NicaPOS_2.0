using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Entidad;
using Entidad.Division_Geografica;

namespace Datos.Division_Geografica
{
    public class D_municipio
    {

        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);


        public DataTable loadMun(int idDept)
        {
            using (SqlCommand cmd = new SqlCommand("sp_mostrar_municipio", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@idDept", idDept);

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
