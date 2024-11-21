using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidad.Empleado;

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
        public DataTable d_buscarCargo(int id)
        {

            using (SqlCommand cmd = new SqlCommand("sp_buscar_empleado_cargo", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@eid", id);
                using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                {
                    DataTable dt = new DataTable();
                    da.Fill(dt);
                    return dt;
                }
            }
        }



        public bool d_asignarCargo(E_historial_cargo hCargo)
        {
            try
            {
                using (SqlCommand cmd = new SqlCommand("sp_asignar_empleado_cargo", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@fecha", hCargo.fecha);
                    cmd.Parameters.AddWithValue("@motivo", hCargo.motivo);
                    cmd.Parameters.AddWithValue("@id_cargo", hCargo.id_cargo);
                    cmd.Parameters.AddWithValue("@id_empleado", hCargo.id_empleado);

                    conn.Open();
                    int result = cmd.ExecuteNonQuery();
                    conn.Close();

                    return result > 0;
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Error al crear el Empleado: " + ex.Message);
                return false;
            }
            finally
            {
                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
            
        }
    }
}
