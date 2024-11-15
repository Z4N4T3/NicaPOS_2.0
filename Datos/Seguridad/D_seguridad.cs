using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos.Seguridad
{
    public class D_seguridad
    {

        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);

        public List<string> D_get_Accesos(int uuid)
        {
            List<string> perfiles = new List<string>();
            using (SqlCommand cmd = new SqlCommand("sp_control_acceso_u", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@UUID", uuid);
                conn.Open();

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        perfiles.Add(reader["Accesso"].ToString());
                    }
                }
                conn.Close();

            }
            return perfiles;

        }

    }
}
