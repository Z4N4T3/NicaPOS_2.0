
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace interfaces.Clases
{
    internal class ClsDatabase
    {
        SqlConnection conn = new SqlConnection();
        String StringConnection = Properties.Settings.Default.NicaPOS_DBC_String;

        public SqlConnection conectarBD()
        {
            if (conn.State == System.Data.ConnectionState.Closed)
            {
                try
                {
                    conn.ConnectionString = StringConnection;
                    conn.Open();
                }
                catch (SqlException ex)
                {
                    MessageBox.Show("No se pudo conectar" + ex.ToString());
                }
            }
            return conn;
        }

        public void ExecQuery(string query)
        {
            SqlCommand cmd = new SqlCommand(query, conn);
            try
            {
                cmd.ExecuteNonQuery();
                MessageBox.Show("Query ejecutada con éxito!");
            }
            catch (SqlException ex)
            {
                MessageBox.Show("Error ejecutando la query: " + ex.ToString());
            }
        }

        // para procedimientos almacenados
        public DataTable ExecStoredProc(string procName, SqlParameter[] parameters = null)
        {
            SqlCommand cmd = new SqlCommand(procName, conn);
            cmd.CommandType = CommandType.StoredProcedure;

            if (parameters != null)
            {
                foreach (SqlParameter param in parameters)
                {
                    cmd.Parameters.Add(param);
                }
            }

            DataTable dataTable = new DataTable();

            try
            {
                SqlDataAdapter dataAdapter = new SqlDataAdapter(cmd);
                dataAdapter.Fill(dataTable);
            }
            catch (SqlException ex)
            {
                MessageBox.Show("Error ejecutando el procedimiento: " + ex.ToString());
            }

            return dataTable;
        }
    }
}
