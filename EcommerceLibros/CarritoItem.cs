using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EcommerceLibros
{
    public class CarritoItem
    {
        public int ProductoID { get; set; }
        public string Titulo { get; set; }
        public string UrllImagen { get; set; }
        public decimal Precio { get; set; }
        public int Cantidad { get; set; }
        public decimal Subtotal => Precio * Cantidad;
    }
}