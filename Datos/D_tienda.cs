using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Datos
{
    public  class D_tienda
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);


        public DataTable D_listar()
        {

            using (SqlCommand cmd = new SqlCommand("sp_datos_tienda", conn))
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


    public class D_comp_tel
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);


        public DataTable d_listar() {

            using (SqlCommand cmd = new SqlCommand("sp_listar_comp_tel", conn))
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
