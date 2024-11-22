using System;
using System.Collections;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Threading.Tasks;
using Entidad;
using Entidad.Seguridad;

namespace Datos.Seguridad
{
    public class D_seguridad
    {

        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);

        public int D_get_Cargo_actual(int eid)
        {
            int idCargo = -1; 

            using (SqlCommand cmd = new SqlCommand("sp_control_acceso_cargo", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@eid", eid);

                try
                {
                   
                    conn.Open();

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        // Verificar si hay registros en el reader
                        if (reader.HasRows)
                        {
                            // Leer la primera fila de resultados
                            reader.Read();

                                idCargo = reader.GetInt32(reader.GetOrdinal("cargo"));
                          
                        }
                    }
                }
                catch (Exception ex)
                {
                    Console.WriteLine("Error al ejecutar el procedimiento: " + ex.Message);
                }
                finally
                {
                    if (conn.State == ConnectionState.Open)
                    {
                        conn.Close();
                    }
                }
            }

            return idCargo;
        }



        public List<string> D_get_Accesos(int cargo)
        {
            List<string> perfiles = new List<string>();
            using (SqlCommand cmd = new SqlCommand("sp_lista_acceso", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;

                cmd.Parameters.AddWithValue("@cargo", cargo);
                conn.Open();

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        perfiles.Add(reader["PERFILES"].ToString());
                    }
                }
                conn.Close();

            }
            return perfiles;

        }


    }
}
