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
    }
}
