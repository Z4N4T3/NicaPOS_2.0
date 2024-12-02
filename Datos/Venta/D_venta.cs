using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Entidad.Venta;

namespace Datos.Venta
{
    public class D_venta
    {

        SqlConnection conn = new SqlConnection(Properties.Settings.Default.db_conn);
        public bool d_InsertarVenta(E_venta venta)
        {
            try
            {
                using (SqlCommand cmd = new SqlCommand("sp_insertar_venta_producto", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@subtotal", venta.Subtotal);
                    cmd.Parameters.AddWithValue("@impuesto", venta.Impuesto);
                    cmd.Parameters.AddWithValue("@descuento", venta.Descuento);
                    cmd.Parameters.AddWithValue("@total", venta.Total);
                    cmd.Parameters.AddWithValue("@id_tipo_comprobate", venta.Tipo_comprobante);
                    cmd.Parameters.AddWithValue("@estado", venta.Estado);
                    cmd.Parameters.AddWithValue("@id_empleado", venta.Eid);
                    cmd.Parameters.AddWithValue("@id_sucursal", venta.Id_sucursal);
                    cmd.Parameters.AddWithValue("@id_cliente", venta.Id_cliente);
                    cmd.Parameters.AddWithValue("@id_pago", venta.Id_tipo_pago); 
                    
                    conn.Open();
                    int result = cmd.ExecuteNonQuery();
                    conn.Close();

                    return result >0;
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Error al insertar venta: "+ex.Message);
                return false;
            }
            finally {

                if (conn.State == ConnectionState.Open)
                {
                    conn.Close();
                }
            }
        }

        // sp_venta_producto_insertar_temp borrar esta vaina despues
        public bool d_InsertarDetVenta_temp(E_Det_venta venta)
        {
            try
            {
                using (SqlCommand cmd = new SqlCommand("sp_venta_producto_insertar_temp", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    cmd.Parameters.AddWithValue("@id_venta", venta.Id_venta);
                    cmd.Parameters.AddWithValue("@id_prod", venta.Id_producto);
                    cmd.Parameters.AddWithValue("@qty", venta.Cantidad);
                    cmd.Parameters.AddWithValue("@precioU", venta.PrecioU);
                    

                    conn.Open();
                    int result = cmd.ExecuteNonQuery();
                    conn.Close();

                    return result > 0;
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Error al insertar venta: " + ex.Message);
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

        public int d_InsertarVenta_temp(E_venta venta)
        {
            try
            {
                using (SqlCommand cmd = new SqlCommand("sp_venta_insertear_temp", conn))
                {
                    cmd.CommandType = CommandType.StoredProcedure;

                    // Agregar parámetros de entrada
                    cmd.Parameters.AddWithValue("@total", venta.Total);
                    cmd.Parameters.AddWithValue("@id_cliente", 1);
                    cmd.Parameters.AddWithValue("@id_empleado", venta.Eid);

                    // Agregar parámetro de salida para el VentaID
                    SqlParameter outputIdParam = new SqlParameter("@VentaID", SqlDbType.Int)
                    {
                        Direction = ParameterDirection.Output
                    };
                    cmd.Parameters.Add(outputIdParam);

                    conn.Open();
                    cmd.ExecuteNonQuery();
                    conn.Close();

                    // Retornar el ID de la venta insertada
                    return (int)outputIdParam.Value;
                }
            }
            catch (SqlException ex)
            {
                Console.WriteLine("Error al insertar venta: " + ex.Message);
                return -1; // Indicar error con un valor especial
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
