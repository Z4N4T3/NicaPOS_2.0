using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace Database
{
    public class Database
    {

        SqlConnection conn = new SqlConnection();

        String StringConnection = Properties.Settings.Default.DatabaseC;

        public SqlConnection conectarBD()
        {
            try
            {
                conn.ConnectionString = StringConnection;
                conn.Open();
                MessageBox.Show("Conexion exitosa!");
            }
            catch (SqlException ex) { 
            
               MessageBox.Show("No se pudo conectar"+ex.ToString());
            }
         
            return conn;
        }
    }
}
