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
    public class D_subcategoria
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);


        // sp_mostrar_subcategoriaYCate
        public DataTable D_listar()
        {
            using (SqlCommand cmd = new SqlCommand("sp_mostrar_subcategoria", conn))
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

        public DataTable D_buscar(int id)
        {
            using (SqlCommand cmd = new SqlCommand("sp_buscar_subcategoria", conn))
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


        public bool D_insertar(E_subcategoria sub)
        {
            try
            {
                using (SqlCommand cmd = new SqlCommand("sp_insertar_sub_categoria", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@nombre", sub.nombre);
                    cmd.Parameters.AddWithValue("@descripcion", sub.descripcion);
                    cmd.Parameters.AddWithValue("@estado", sub.Estado);
                    cmd.Parameters.AddWithValue("@idCat", sub.IdCat);
                    
                    conn.Open();
                    int result = cmd.ExecuteNonQuery();
                    conn.Close();

                    return result > 0;
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Error al insertar Sub categoria: " + ex.Message);
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
