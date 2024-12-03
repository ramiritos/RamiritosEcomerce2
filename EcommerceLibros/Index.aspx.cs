using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcommerceLibros
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                LoadLibrosFisicos();
                LoadLibrosDigitales();
                LoadAudiolibros();

                CargarCategorias(chkCategorias);
                CargarCategorias(chkCategorias2);
                CargarCategorias(chkCategorias3);

            }

        }

        private void LoadLibrosFisicos()
        {
            using (var context = new ECommercelibrosEntities()) 
            {
                // Consulta para obtener los libros físicos
                var librosFisicos = from p in context.productos
                                    join i in context.Imagen_Producto on p.producto_id equals i.producto_id
                                    join ap in context.Autor_Producto on p.producto_id equals ap.producto_id
                                    join a in context.Autor on ap.AutorID equals a.AutorID
                                    where p.tipo_producto == "Libro Físico"
                                    select new
                                    {
                                        productoid = p.producto_id,
                                        Titulo = p.titulo,
                                        Descripcion = p.descripcion,
                                        Precio = p.precio,
                                        Paginas = p.paginas,
                                        UrllImagen = i.UrlImagen,
                                        Autor = a.Nombre
                                    };

                // Enlazar los datos a un control Repeater
                rptLibrosFisicos.DataSource = librosFisicos.ToList();
                rptLibrosFisicos.DataBind();
            }
        }

        private void LoadLibrosDigitales()
        {
            using(var context = new ECommercelibrosEntities())
            {
                var librosdigitales = from p in context.productos
                                      join i in context.Imagen_Producto on p.producto_id equals i.producto_id
                                      join ap in context.Autor_Producto on p.producto_id equals ap.producto_id
                                      join a in context.Autor on ap.AutorID equals a.AutorID
                                      where p.tipo_producto == "Libro Digital"
                                      select new
                                      {
                                          productoid = p.producto_id,
                                          Titulo = p.titulo,
                                          Descripcion = p.descripcion,
                                          Precio = p.precio,
                                          UrllImagen = i.UrlImagen,
                                          Autor = a.Nombre
                                      };

                rptLibrosDigitales.DataSource = librosdigitales.ToList();
                rptLibrosDigitales.DataBind();
            }
        }

        private void LoadAudiolibros()
        {
            using( var context = new ECommercelibrosEntities())
            {
                var audiolibros = from p in context.productos
                                  join i in context.Imagen_Producto on p.producto_id equals i.producto_id
                                  join ap in context.Autor_Producto on p.producto_id equals ap.producto_id
                                  join a in context.Autor on ap.AutorID equals a.AutorID
                                  where p.tipo_producto == "Audiolibro"
                                  select new
                                  {
                                      productoid = p.producto_id,
                                      Titulo = p.titulo,
                                      Descripcion = p.descripcion,
                                      Precio = p.precio,
                                      UrllImagen = i.UrlImagen,
                                      Autor = a.Nombre
                                  };

                rptAudiolibros.DataSource = audiolibros.ToList();
                rptAudiolibros.DataBind();

            }

        }

        private void CargarCategorias(CheckBoxList checkBoxList)
        {
            using (var context = new ECommercelibrosEntities())
            {
                var categorias = context.categorias
                    .Select(c => new { c.categoria_id, c.nombre_categoria })
                    .ToList();

                checkBoxList.DataSource = categorias;
                checkBoxList.DataTextField = "nombre_categoria";
                checkBoxList.DataValueField = "categoria_id";
                checkBoxList.DataBind();
            }
        }
        private void FiltrarProductos(CheckBoxList checkBoxList, string tipoProducto, Repeater repeater)
        {
            using (var context = new ECommercelibrosEntities())
            {
                // Obtener las categorías seleccionadas
                var selectedCategories = checkBoxList.Items.Cast<ListItem>()
                                        .Where(item => item.Selected)
                                        .Select(item => int.Parse(item.Value))
                                        .ToList();


                // Consulta de productos filtrada
                var productosFiltrados = from p in context.productos
                                         join pc in context.producto_categorias on p.producto_id equals pc.producto_id
                                         join i in context.Imagen_Producto on p.producto_id equals i.producto_id
                                         join ap in context.Autor_Producto on p.producto_id equals ap.producto_id
                                         join a in context.Autor on ap.AutorID equals a.AutorID
                                         where (selectedCategories.Count == 0 || selectedCategories.Contains(pc.categoria_id)) &&
                                               p.tipo_producto == tipoProducto
                                         select new
                                         {
                                             productoid = p.producto_id,
                                             Titulo = p.titulo,
                                             Descripcion = p.descripcion,
                                             Precio = p.precio,
                                             Paginas = p.paginas,
                                             UrllImagen = i.UrlImagen,
                                             Autor = a.Nombre
                                         };

                // Enlazar los productos filtrados al Repeater correspondiente
                repeater.DataSource = productosFiltrados.ToList();
                repeater.DataBind();

            }
        }

        protected void chkCategorias_SelectedIndexChanged(object sender, EventArgs e)
        {
            FiltrarProductos(chkCategorias, "Libro Físico", rptLibrosFisicos);
            ScriptManager.RegisterStartupScript(this, GetType(), "ShowSection", "showSection('libros-fisicos');", true);
        }

        protected void chkCategorias2_SelectedIndexChanged(object sender, EventArgs e)
        {
            FiltrarProductos(chkCategorias2, "Libro Digital", rptLibrosDigitales);
            ScriptManager.RegisterStartupScript(this, GetType(), "ShowSection", "showSection('libros-digitales');", true);
        }

        protected void chkCategorias3_SelectedIndexChanged(object sender, EventArgs e)
        {
            FiltrarProductos(chkCategorias3, "Audiolibro", rptAudiolibros);
            ScriptManager.RegisterStartupScript(this, GetType(), "ShowSection", "showSection('Audio-libros');", true);
        }

        private List<CarritoItem> Carrito
        {
            get
            {
                if (Session["Carrito"] == null)
                {
                    Session["Carrito"] = new List<CarritoItem>();
                }
                return (List<CarritoItem>)Session["Carrito"];
            }
        }

        protected void btnComprar_Click(object sender, EventArgs e)
        {

            if (Session["UsuarioID"] == null)
            {
                Response.Redirect("Login.aspx"); // Redirige al usuario a la página de inicio de sesión
                return;
            }

            Button btn = (Button)sender;
            RepeaterItem item = (RepeaterItem)btn.NamingContainer;

            int productoID = Convert.ToInt32(((HiddenField)item.FindControl("hfProductoID")).Value);
            string titulo = ((Label)item.FindControl("lblTitulo")).Text;
            string urlImagen = ((HiddenField)item.FindControl("hfUrllImagen")).Value;
            decimal precio = Convert.ToDecimal(((HiddenField)item.FindControl("hfPrecio")).Value);

            // Agregar al carrito
            var existente = Carrito.FirstOrDefault(p => p.ProductoID == productoID);
            if (existente == null)
            {
                Carrito.Add(new CarritoItem
                {
                    ProductoID = productoID,
                    Titulo = titulo,
                    UrllImagen = urlImagen,
                    Precio = precio,
                    Cantidad = 1
                });
            }
            else
            {
                existente.Cantidad++;
            }

            CargarCarrito();
        }
        protected void ActualizarCantidad(object sender, EventArgs e)
        {
            TextBox txtCantidad = (TextBox)sender;
            RepeaterItem item = (RepeaterItem)txtCantidad.NamingContainer;

            int productoID = Convert.ToInt32(((HiddenField)item.FindControl("hfCarritoProductoID")).Value);
            int nuevaCantidad = Convert.ToInt32(txtCantidad.Text);

            var producto = Carrito.FirstOrDefault(p => p.ProductoID == productoID);
            if (producto != null)
            {
                producto.Cantidad = nuevaCantidad > 0 ? nuevaCantidad : 1; // Evitar cantidades negativas o cero
            }

            CargarCarrito();
        }

        protected void EliminarProducto_Click(object sender, EventArgs e)
        {
            Button btnEliminar = (Button)sender;
            RepeaterItem item = (RepeaterItem)btnEliminar.NamingContainer;

            int productoID = Convert.ToInt32(((HiddenField)item.FindControl("hfCarritoProductoID")).Value);

            // Buscar y eliminar el producto del carrito
            var producto = Carrito.FirstOrDefault(p => p.ProductoID == productoID);
            if (producto != null)
            {
                Carrito.Remove(producto);
            }

            // Actualizar el carrito
            CargarCarrito();
        }


        private void CargarCarrito()
        {
            rptCarrito.DataSource = Carrito;
            rptCarrito.DataBind();

            decimal total = Carrito.Sum(p => p.Subtotal);
            lblTotal.Text = total.ToString("N2");
        }

        protected void btnFinalizarCompra_Click(object sender, EventArgs e)
        {
            if (Session["UsuarioID"] == null)
            {
                Response.Redirect("Login.aspx"); // Asegúrate de que el usuario esté autenticado
                return;
            }
            decimal total = Carrito.Sum(p => p.Subtotal);

            // Pasa el total a la página de pago como QueryString
            Response.Redirect($"pago.aspx?total={total}");

            int usuarioID = Convert.ToInt32(Session["UsuarioID"]);

            using (var context = new ECommercelibrosEntities())
            {
                var pedido = new pedidos
                {
                    usuario_id = usuarioID, // Usa el ID del usuario autenticado
                    fecha_pedido = DateTime.Now,
                    total = Carrito.Sum(p => p.Subtotal),
                    estado = "Pendiente"
                };

                context.pedidos.Add(pedido);
                context.SaveChanges();

                foreach (var item in Carrito)
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

            // Limpiar carrito
            Carrito.Clear();
            CargarCarrito();
        }

    }
}