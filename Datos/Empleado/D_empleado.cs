using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Entidad;
using Entidad.Empleado;

namespace Datos
{
    public class D_empleado
    {
        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);

        public bool insertarEmpleado(E_empleado empleado, E_EmpleadoDireccion eDir =null, E_EmpleadoTelefono eTel = null, E_EmpleadoEmail eEmail = null)
        {

            try
            {
                using (SqlCommand cmd = new SqlCommand("sp_CrearEmpleado", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    // para parametros obligatorios
                    cmd.Parameters.AddWithValue("@nombre1", empleado.Nombre1);
                    cmd.Parameters.AddWithValue("@nombre2", empleado.Nombre2 ?? (object)DBNull.Value);
                    cmd.Parameters.AddWithValue("@apellido1", empleado.Apellido1);
                    cmd.Parameters.AddWithValue("@apellido2", empleado.Apellido2 ?? (object)DBNull.Value);
                    cmd.Parameters.AddWithValue("@genero", empleado.Genero);
                    cmd.Parameters.AddWithValue("@fecha_nacimiento", empleado.FechaNacimiento);
                    cmd.Parameters.AddWithValue("@identificacion", empleado.Identificacion);
                    cmd.Parameters.AddWithValue("@id_estado", empleado.IdEstado);
                    cmd.Parameters.AddWithValue("@id_sucursal", empleado.IdSucursal);


                    // 
                    if (eTel != null)
                    {
                        cmd.Parameters.AddWithValue("@telefono", eTel.Telefono ?? (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@id_compania_telefono", eTel.IdCompania ?? (object)DBNull.Value);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@telefono", DBNull.Value);
                        cmd.Parameters.AddWithValue("@id_compania_telefono", DBNull.Value);
                    }

                    // Parámetros opcionales para dirección
                    if (eDir != null)
                    {
                        cmd.Parameters.AddWithValue("@direccion", eDir.Direccion ?? (object)DBNull.Value);
                        cmd.Parameters.AddWithValue("@id_barrio", eDir.IdBarrio ?? (object)DBNull.Value);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@direccion", DBNull.Value);
                        cmd.Parameters.AddWithValue("@id_barrio", DBNull.Value);
                    }

                    // Parámetro opcional para email
                    if (eEmail != null)
                    {
                        cmd.Parameters.AddWithValue("@email", eEmail.Email ?? (object)DBNull.Value);
                    }
                    else
                    {
                        cmd.Parameters.AddWithValue("@email", DBNull.Value);
                    }

                    conn.Open();
                    int result = cmd.ExecuteNonQuery();
                    conn.Close();

                    return result > 0;
                }
            }
            catch (SqlException ex) {
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
