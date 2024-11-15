using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Entidad;
namespace Datos.Producto
{
    public class D_producto
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);

        public DataTable listarProductoPrecio()
        {
            using (SqlCommand cmd = new SqlCommand("sp_FlistarProducto_all", conn))
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

        public DataTable BuscarProductoPrecio(string cod)
        {
            using (SqlCommand cmd = new SqlCommand("sp_FlistarProducto", conn))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@codProd", cod);
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
