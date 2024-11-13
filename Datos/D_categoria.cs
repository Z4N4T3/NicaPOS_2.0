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
    public class D_categoria
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);


        public DataTable mostrarCategoria()
        {

            using (SqlCommand cmd = new SqlCommand("sp_mostrar_categoria", conn))
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


        public bool insertar(E_categoria cate)
        {

            try
            {
                using (SqlCommand cmd = new SqlCommand("sp_insertar_categoria", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@nombre", cate.nombre);
                    cmd.Parameters.AddWithValue("@descripcion", cate.descripcion);
                    cmd.Parameters.AddWithValue("@estado", cate.Estado);

                    conn.Open();
                    int result = cmd.ExecuteNonQuery();
                    conn.Close();

                    return result > 0;
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Error al insertar categoria: " + ex.Message);
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
