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



    public class D_usuario
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);



        // autenticacion del usuario
        public bool auth(E_usuario usuario)
        {


            try
            {
                using (SqlCommand cmd = new SqlCommand("AuthUsuario", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@username", usuario.usr_name);
                    cmd.Parameters.AddWithValue("@password", usuario.usr_pw);

                    conn.Open();
                    var result = cmd.ExecuteScalar();
                    conn.Close();

                    return result != null && Convert.ToBoolean(result);
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Error al validar el login: " + ex.Message);
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


        // crear usuario

        public bool crearUsuario(E_usuario usuario)
        {
            try
            {
                using (SqlCommand cmd = new SqlCommand("sp_crear_usuario", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@username", usuario.usr_name);
                    cmd.Parameters.AddWithValue("@password", usuario.usr_pw);
                    cmd.Parameters.AddWithValue("@eid", usuario.id_emp);

                    conn.Open();
                    int result = cmd.ExecuteNonQuery();
                    conn.Close();

                    return result > 0;
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Error al crear el usuario: " + ex.Message);
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


        // mostrar usuario
        public DataTable listarUsuario_all()
        {
            using (SqlCommand cmd = new SqlCommand("sp_mostrar_usuario_all", conn))
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

        // Mostrar usuario ID

        public DataTable listarUsuario(int id)
        {
           
                using (SqlCommand cmd = new SqlCommand("sp_mostrar_usuario", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@id", id);
                    using (SqlDataAdapter da = new SqlDataAdapter(cmd))
                    {
                        DataTable dt = new DataTable();
                        da.Fill(dt);
                        return dt;
                    }
                }
            
            
        }

        // eliminar
        public bool EliminarUsuario(int id)
        {
            try
            {
                using (SqlCommand cmd = new SqlCommand("sp_eliminar_usuario", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@id", id);

                    conn.Open();
                    int result = cmd.ExecuteNonQuery();
                    conn.Close();

                    return result > 0;
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Error al eliminar el usuario: " + ex.Message);
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
