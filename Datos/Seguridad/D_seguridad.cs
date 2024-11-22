using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidad;

namespace Datos.Seguridad
{
    public class D_seguridad
    {

        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);

        public int D_get_Accesos(int eid)
        {
            try
            {
                using (SqlCommand cmd = new SqlCommand("sp_control_acceso_cargo", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@eid", eid);
              
                    conn.Open();
                    var result = cmd.ExecuteScalar();
                    conn.Close();

                    if (result != null && int.TryParse(result.ToString(), out int idEmpleado))
                    {
                        return idEmpleado;
                    }
                    else
                    {
                        return -1;
                    }
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Error al validar acceso: "+ex.Message);
                return -1;

            }
            finally {

                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }

            }
        }


    }
}
