-- Creación de la base de datos
Use master
go

if DB_ID('ECommercelibros') is not null
   drop database ECommercelibros
go

CREATE DATABASE ECommercelibros;
GO

USE ECommercelibros;
GO

-- Tabla de Usuarios
CREATE TABLE usuarios (
    usuario_id INT PRIMARY KEY IDENTITY,
    nombre VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    contraseña_hash VARCHAR(255) NOT NULL,
    fecha_creacion DATETIME DEFAULT GETDATE(),
    direccion VARCHAR(255),
    telefono VARCHAR(15),
    es_admin BIT DEFAULT 0
);

-- Tabla de Productos
CREATE TABLE productos (
    producto_id INT PRIMARY KEY IDENTITY,
    titulo VARCHAR(255) NOT NULL,
    descripcion TEXT,
    tipo_producto VARCHAR(50) CHECK (tipo_producto IN ('Audiolibro', 'Libro Digital', 'Libro Físico')),
    precio DECIMAL(10, 2) NOT NULL,
    genero VARCHAR(50),
    fecha_publicacion DATE,
    stock INT DEFAULT 0,
    idioma VARCHAR(50),
    url_archivo VARCHAR(255), -- URL para descargas de libros digitales o audiolibros
    peso DECIMAL(5, 2), -- Peso en kg (relevante solo para libros físicos)
    paginas INT -- Número de páginas (solo para libros físicos)
);

Create table Autor(

    AutorID INT PRIMARY KEY IDENTITY(1,1),    -- Clave primaria para Autor
    Nombre NVARCHAR(100) NOT NULL,             -- Nombre del autor
    FechaNacimiento DATETIME                   -- Fecha de nacimiento del autor
)
go

CREATE TABLE Autor_Producto (
    AutorID INT,                               -- Clave foránea hacia la tabla Autor
    producto_id INT,                            -- Clave foránea hacia la tabla Producto
    FechaAsociacion DATETIME DEFAULT GETDATE(), -- Fecha en la que se hizo la asociación
    PRIMARY KEY (AutorID, producto_id),         -- Clave primaria compuesta para asegurar que cada relación sea única
    FOREIGN KEY (AutorID) REFERENCES Autor(AutorID) ON DELETE CASCADE,      -- Restricción de clave foránea con acción de borrado en cascada
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id) ON DELETE CASCADE -- Restricción de clave foránea con acción de borrado en cascada
)
go

-- Tabla de Categorías
CREATE TABLE categorias (
    categoria_id INT PRIMARY KEY IDENTITY,
    nombre_categoria VARCHAR(100) NOT NULL UNIQUE,
    descripcion TEXT
);

-- Tabla de Producto-Categoría (relación muchos a muchos entre productos y categorías)
CREATE TABLE producto_categorias (
    producto_id INT FOREIGN KEY REFERENCES productos(producto_id),
    categoria_id INT FOREIGN KEY REFERENCES categorias(categoria_id),
    PRIMARY KEY (producto_id, categoria_id)
);

-- Tabla de Pedidos
CREATE TABLE pedidos (
    pedido_id INT PRIMARY KEY IDENTITY,
    usuario_id INT FOREIGN KEY REFERENCES usuarios(usuario_id),
    fecha_pedido DATETIME DEFAULT GETDATE(),
    total DECIMAL(10, 2) NOT NULL,
    estado VARCHAR(50) CHECK (estado IN ('Pendiente', 'Enviado', 'Entregado', 'Cancelado'))
);


CREATE TABLE Imagen_Producto (

    ImagenID INT PRIMARY KEY IDENTITY(1,1),   
    producto_id INT,                            
    UrlImagen NVARCHAR(255) NOT NULL,          
    Descripcion NVARCHAR(255),                 
    FechaCreacion DATETIME DEFAULT GETDATE(), 
    FOREIGN KEY (producto_id) REFERENCES productos(producto_id)  

)
go

-- Tabla de Pedido-Productos (relación entre los pedidos y los productos comprados)
CREATE TABLE pedido_productos (
    pedido_id INT FOREIGN KEY REFERENCES pedidos(pedido_id),
    producto_id INT FOREIGN KEY REFERENCES productos(producto_id),
    cantidad INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (pedido_id, producto_id)
);

-- Tabla de Envíos
CREATE TABLE envios (
    envio_id INT PRIMARY KEY IDENTITY,
    pedido_id INT FOREIGN KEY REFERENCES pedidos(pedido_id),
    direccion_envio VARCHAR(255) NOT NULL,
    ciudad VARCHAR(100),
    codigo_postal VARCHAR(10),
    pais VARCHAR(100),
    fecha_envio DATETIME,
    fecha_entrega_estimada DATETIME,
    fecha_entrega DATETIME,
    estado VARCHAR(50) CHECK (estado IN ('Preparando', 'En tránsito', 'Entregado'))
);

-- Tabla de Métodos de Pago
CREATE TABLE metodos_pago (
    metodo_pago_id INT PRIMARY KEY IDENTITY,
    nombre_metodo VARCHAR(50) NOT NULL UNIQUE,
    descripcion TEXT
);

-- Tabla de Transacciones (registra las transacciones de pago de cada pedido)
CREATE TABLE transacciones (
    transaccion_id INT PRIMARY KEY IDENTITY,
    pedido_id INT UNIQUE,
	foreign key (pedido_id) references pedidos(pedido_id),
    metodo_pago_id INT FOREIGN KEY REFERENCES metodos_pago(metodo_pago_id),
    fecha_pago DATETIME DEFAULT GETDATE(),
    monto DECIMAL(10, 2) NOT NULL,
    estado VARCHAR(50) CHECK (estado IN ('Pendiente', 'Completado', 'Fallido'))
);