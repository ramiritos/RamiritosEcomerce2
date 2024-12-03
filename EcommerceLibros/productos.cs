//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace EcommerceLibros
{
    using System;
    using System.Collections.Generic;
    
    public partial class productos
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public productos()
        {
            this.Autor_Producto = new HashSet<Autor_Producto>();
            this.Imagen_Producto = new HashSet<Imagen_Producto>();
            this.pedido_productos = new HashSet<pedido_productos>();
            this.producto_categorias = new HashSet<producto_categorias>();
        }
    
        public int producto_id { get; set; }
        public string titulo { get; set; }
        public string descripcion { get; set; }
        public string tipo_producto { get; set; }
        public decimal precio { get; set; }
        public string genero { get; set; }
        public Nullable<System.DateTime> fecha_publicacion { get; set; }
        public Nullable<int> stock { get; set; }
        public string idioma { get; set; }
        public string url_archivo { get; set; }
        public Nullable<decimal> peso { get; set; }
        public Nullable<int> paginas { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Autor_Producto> Autor_Producto { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Imagen_Producto> Imagen_Producto { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<pedido_productos> pedido_productos { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<producto_categorias> producto_categorias { get; set; }
    }
}