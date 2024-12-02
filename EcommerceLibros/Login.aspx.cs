using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace EcommerceLibros
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string email = Request.Form["email"];
            string password = Request.Form["password"];

            using (var context = new ECommercelibrosEntities())
            {
                var usuario = context.usuarios.FirstOrDefault(u => u.email == email && u.contraseña_hash == password);

                if (usuario != null ) // Implementa VerificarContraseña
                {
                    // Guarda el ID del usuario en la sesión
                    Session["UsuarioID"] = usuario.usuario_id;
                    Response.Redirect("Index.aspx"); // Redirige a la página principal u otra página
                }
                else
                {
                    lblError.Text = "Credenciales incorrectas. Inténtalo de nuevo.";
                }
                
            }
        }

    }
}