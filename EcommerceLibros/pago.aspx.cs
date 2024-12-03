using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using EcommerceLibros.ServiceReference1;
namespace EcommerceLibros
{
    public partial class pago : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Leer el parámetro "total" de la URL
                string totalQuery = Request.QueryString["total"];
                if (!string.IsNullOrEmpty(totalQuery))
                {
                    decimal total = decimal.Parse(totalQuery);
                    lblTotal.Text = $"Total: S/ {total:F2}"; // Asigna el valor al control
                }
            }
        }

        protected void SearchCard_Click(object sender, EventArgs e)
        {
            // Instancia del cliente del servicio web
            ServiceReference1.TC1SoapClient service = new ServiceReference1.TC1SoapClient();

            try
            {
                // Llamar al método del servicio para verificar la tarjeta
                DataSet tarjetaData = service.VerificarTarjeta(TextBox1.Text);

                // Validar los resultados
                if (tarjetaData != null && tarjetaData.Tables.Count > 0 && tarjetaData.Tables[0].Rows.Count > 0)
                {
                    DataRow row = tarjetaData.Tables[0].Rows[0];
                    TxtFecha.Text = Convert.ToDateTime(row["fecha_expiracion"]).ToString("yyyy-MM-dd");
                    Txtcvv.Text = row["cvv"].ToString();
                    Txtbanco.Text = row["empresa"].ToString();
                }
                else
                {
                    // Mensaje si la tarjeta no se encuentra
                    Response.Write("<script>alert('Tarjeta no encontrada');</script>");
                }
            }
            catch (Exception ex)
            {
                // Manejo de errores
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
            finally
            {
                // Cerrar el cliente
                if (service != null)
                    service.Close();
            }
        }

        protected void ProcessPayment_Click(object sender, EventArgs e)
        {
            try
            {
                // Obtener el total desde el query string
                string totalQuery = Request.QueryString["total"];
                if (string.IsNullOrEmpty(totalQuery))
                {
                    Response.Write("<script>alert('El total del carrito no está disponible.');</script>");
                    return;
                }

                decimal total = decimal.Parse(totalQuery);

                // Verificar si el usuario está autenticado
                if (Session["UsuarioID"] == null)
                {
                    Response.Redirect("Login.aspx"); // Asegúrate de que el usuario esté autenticado
                    return;
                }

                // Obtener el número de tarjeta desde el TextBox en la página
                string numeroTarjeta = TextBox1.Text.Trim();

                if (string.IsNullOrEmpty(numeroTarjeta))
                {
                    Response.Write("<script>alert('Por favor, ingrese un número de tarjeta válido.');</script>");
                    return;
                }

                // Llamar al servicio web para procesar el pago
                ServiceReference1.TC1SoapClient service = new ServiceReference1.TC1SoapClient();
                string resultado = service.Pagar(numeroTarjeta, total);

                if (resultado.Contains("Pago realizado exitosamente"))
                {
                    // Procesar el pedido y almacenarlo en la base de datos
                    int usuarioID = Convert.ToInt32(Session["UsuarioID"]);
                    using (var context = new ECommercelibrosEntities())
                    {
                        // Crear el pedido
                        var pedido = new pedidos
                        {
                            usuario_id = usuarioID, // Usa el ID del usuario autenticado
                            fecha_pedido = DateTime.Now,
                            total = total,
                            estado = "Pendiente"
                        };

                        context.pedidos.Add(pedido);
                        context.SaveChanges();

                        // Obtener el carrito desde la sesión y agregar los productos al pedido
                        var carrito = (List<CarritoItem>)Session["Carrito"];
                        foreach (var item in carrito)
                        {
                            context.pedido_productos.Add(new pedido_productos
                            {
                                pedido_id = pedido.pedido_id,
                                producto_id = item.ProductoID,
                                cantidad = item.Cantidad,
                                preciot = item.Precio
                            });
                        }

                        context.SaveChanges();
                    }

                    // Limpiar el carrito y redirigir al usuario
                    Session["Carrito"] = null;
                    Response.Write("<script>alert('Pago realizado exitosamente y pedido procesado.');</script>");
                    Response.Redirect("~/Index.aspx");
                }
                else
                {
                    Response.Write($"<script>alert('{resultado}');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write($"<script>alert('Ocurrió un error al procesar el pago: {ex.Message}');</script>");
            }
        }

        protected void CancelPayment_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Index.aspx");
        }

        protected void NewPaymentMethod_Click(object sender, EventArgs e)
        {
            // Crear una instancia del cliente del servicio web
            ServiceReference1.TC1SoapClient service = new ServiceReference1.TC1SoapClient();

            try
            {
                // Convertir la fecha a DateTime
                DateTime fechaExpiracion;
                if (!DateTime.TryParse(TxtFecha.Text, out fechaExpiracion))
                {
                    Response.Write("<script>alert('Fecha inválida. Por favor, ingrese una fecha en el formato correcto (yyyy-MM-dd)');</script>");
                    return;
                }

                // Llamar al método del servicio para agregar la tarjeta
                string resultado = service.AgregarTarjeta(
                    TextBox1.Text,      // Número de tarjeta (ID corregido)
                    Txtcvv.Text,        // CVV
                    fechaExpiracion,    // Fecha de expiración
                    null,               // Tipo de tarjeta (null porque quieres ignorar este campo)
                    Txtbanco.Text,      // Banco
                    0                   // Saldo (fijado en 0 según tu requerimiento)
                );

                // Mostrar el resultado en un mensaje de alerta
                Response.Write($"<script>alert('{resultado}');</script>");

                // Limpiar los campos si la tarjeta fue agregada exitosamente
                if (resultado == "Tarjeta agregada exitosamente.")
                {
                    LimpiarCampos();
                }
            }
            catch (Exception ex)
            {
                // Manejo de errores
                Response.Write($"<script>alert('Error: {ex.Message}');</script>");
            }
            finally
            {
                // Cerrar el cliente del servicio web
                if (service != null)
                {
                    service.Close();
                }
            }
        }
        private void LimpiarCampos()
        {
            TextBox1.Text = string.Empty; // Número de tarjeta
            Txtcvv.Text = string.Empty;  // CVV
            TxtFecha.Text = string.Empty; // Fecha de expiración
            Txtbanco.Text = string.Empty; // Banco
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }



        protected void pagotoltal_TextChanged(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Leer el parámetro "total" de la URL
                string totalQuery = Request.QueryString["total"];
                if (!string.IsNullOrEmpty(totalQuery))
                {
                    decimal total = decimal.Parse(totalQuery);
                    lblTotal.Text = $"Total: S/ {total:F2}"; // Asigna el valor al control
                }
            }
        }
    }
}