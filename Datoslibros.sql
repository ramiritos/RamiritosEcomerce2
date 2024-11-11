


INSERT INTO usuarios (nombre, email, contraseña_hash, direccion, telefono, es_admin) VALUES
('Juan Pérez', 'juan.perez@example.com', 'hashed_password_1', 'Calle Falsa 123', '555-1234', 1),
('Ana Gómez', 'ana.gomez@example.com', 'hashed_password_2', 'Avenida Real 456', '555-5678', 0),
('Luis Martínez', 'luis.martinez@example.com', 'hashed_password_3', 'Calle Luna 789', '555-8765', 0),
('María López', 'maria.lopez@example.com', 'hashed_password_4', 'Avenida Sol 101', '555-4321', 0),
('Carlos Sánchez', 'carlos.sanchez@example.com', 'hashed_password_5', 'Calle Oro 202', '555-1122', 1),
('Carmen Rojas', 'carmen.rojas@example.com', 'hashed_password_6', 'Avenida Paz 303', '555-3344', 0),
('Sofía Flores', 'sofia.flores@example.com', 'hashed_password_7', 'Calle Azul 404', '555-5566', 0),
('Andrés Villa', 'andres.villa@example.com', 'hashed_password_8', 'Avenida Verde 505', '555-7788', 0),
('Laura Castillo', 'laura.castillo@example.com', 'hashed_password_9', 'Calle Rosa 606', '555-9900', 0),
('Diego Ruiz', 'diego.ruiz@example.com', 'hashed_password_10', 'Avenida Luna 707', '555-2233', 0);
go

INSERT INTO productos (titulo, descripcion, tipo_producto, precio, autor, genero, fecha_publicacion, stock, idioma, url_archivo, peso, paginas) VALUES
('El Quijote', 'Clásico de la literatura española', 'Libro Físico', 25.50, 'Miguel de Cervantes', 'Novela', '1605-01-16', 50, 'Español', NULL, 0.75, 1056),
('Cien Años de Soledad', 'Novela icónica de García Márquez', 'Libro Físico', 20.99, 'Gabriel García Márquez', 'Realismo Mágico', '1967-05-30', 30, 'Español', NULL, 0.65, 417),
('Harry Potter y la Piedra Filosofal', 'Primera entrega de Harry Potter', 'Libro Digital', 10.99, 'J.K. Rowling', 'Fantasía', '1997-06-26', 100, 'Español', 'url_digital_1', NULL, NULL),
('La Sombra del Viento', 'Novela de misterio en la Barcelona de posguerra', 'Audiolibro', 15.50, 'Carlos Ruiz Zafón', 'Novela', '2001-04-06', 40, 'Español', 'url_audio_1', NULL, NULL),
('Sapiens', 'Breve historia de la humanidad', 'Libro Digital', 12.75, 'Yuval Noah Harari', 'Historia', '2011-09-04', 75, 'Español', 'url_digital_2', NULL, NULL),
('Don Quijote de la Mancha', 'Segunda edición ilustrada', 'Libro Físico', 18.90, 'Miguel de Cervantes', 'Novela', '1615-01-01', 20, 'Español', NULL, 0.80, 992),
('Los Juegos del Hambre', 'Primer libro de la saga', 'Libro Físico', 15.30, 'Suzanne Collins', 'Distopía', '2008-09-14', 60, 'Español', NULL, 0.70, 374),
('El Poder del Ahora', 'Guía espiritual para la paz', 'Audiolibro', 8.99, 'Eckhart Tolle', 'Autoayuda', '1997-10-06', 90, 'Español', 'url_audio_2', NULL, NULL),
('Padre Rico, Padre Pobre', 'Finanzas personales', 'Libro Digital', 7.99, 'Robert Kiyosaki', 'Finanzas', '1997-04-01', 110, 'Español', 'url_digital_3', NULL, NULL),
('La Odisea', 'Obra épica griega', 'Libro Físico', 9.99, 'Homero', 'Épica', '800-01-01', 40, 'Español', NULL, 0.50, 321);
go

INSERT INTO categorias (nombre_categoria, descripcion) VALUES
('Novela', 'Ficción narrativa extensa con desarrollo de personajes'),
('Fantasía', 'Obras con elementos mágicos y sobrenaturales'),
('Historia', 'Libros sobre eventos y personajes históricos'),
('Autoayuda', 'Libros que fomentan el desarrollo personal'),
('Distopía', 'Historias de sociedades opresivas o en crisis'),
('Finanzas', 'Libros sobre economía y gestión de dinero'),
('Épica', 'Narraciones de grandes hazañas y héroes'),
('Realismo Mágico', 'Género que mezcla realidad con elementos mágicos'),
('Ciencia Ficción', 'Ficción con elementos futuristas o tecnológicos'),
('Misterio', 'Historias con elementos de suspenso y enigmas');
go

INSERT INTO producto_categorias (producto_id, categoria_id) VALUES
(1, 1), (1, 7),
(2, 8),
(3, 2),
(4, 10),
(5, 3),
(6, 1),
(7, 5),
(8, 4),
(9, 6),
(10, 7);
go

INSERT INTO pedidos (usuario_id, total, estado) VALUES
(1, 50.00, 'Pendiente'),
(2, 30.99, 'Enviado'),
(3, 45.50, 'Entregado'),
(4, 20.99, 'Cancelado'),
(5, 25.00, 'Pendiente'),
(6, 12.75, 'Enviado'),
(7, 15.99, 'Entregado'),
(8, 8.99, 'Pendiente'),
(9, 10.99, 'Cancelado'),
(10, 25.00, 'Pendiente');
go

INSERT INTO pedido_productos (pedido_id, producto_id, cantidad, precio) VALUES
(1, 1, 1, 25.50),
(1, 2, 1, 20.99),
(2, 3, 1, 10.99),
(2, 4, 1, 15.50),
(3, 5, 1, 12.75),
(3, 6, 1, 18.90),
(4, 7, 1, 15.30),
(5, 8, 1, 8.99),
(6, 9, 1, 7.99),
(7, 10, 1, 9.99);
go

INSERT INTO envios (pedido_id, direccion_envio, ciudad, codigo_postal, pais, fecha_envio, fecha_entrega_estimada, estado) VALUES
(1, 'Calle Falsa 123', 'Ciudad X', '12345', 'País A', '2023-01-01', '2023-01-05', 'En tránsito'),
(2, 'Avenida Real 456', 'Ciudad Y', '67890', 'País B', '2023-02-01', '2023-02-03', 'Entregado'),
(3, 'Calle Luna 789', 'Ciudad Z', '54321', 'País C', '2023-03-01', '2023-03-06', 'Entregado'),
(4, 'Avenida Sol 101', 'Ciudad W', '98765', 'País D', '2023-04-01', '2023-04-05', 'Cancelado'),
(5, 'Calle Oro 202', 'Ciudad V', '12345', 'País A', '2023-05-01', '2023-05-06', 'En tránsito'),
(6, 'Avenida Paz 303', 'Ciudad U', '67890', 'País B', '2023-06-01', '2023-06-05', 'En tránsito'),
(7, 'Calle Azul 404', 'Ciudad T', '54321', 'País C', '2023-07-01', '2023-07-06', 'Entregado'),
(8, 'Avenida Verde 505', 'Ciudad S', '98765', 'País D', '2023-08-01', '2023-08-05', 'En tránsito'),
(9, 'Calle Rosa 606', 'Ciudad R', '12345', 'País A', '2023-09-01', '2023-09-06', 'Cancelado'),
(10, 'Avenida Luna 707', 'Ciudad Q', '67890', 'País B', '2023-10-01', '2023-10-05', 'Preparando');
go

INSERT INTO metodos_pago (nombre_metodo, descripcion) VALUES
('Tarjeta de Crédito', 'Pago mediante tarjeta de crédito'),
('Paypal', 'Pago mediante cuenta de Paypal'),
('Transferencia Bancaria', 'Pago mediante transferencia bancaria directa'),
('Criptomonedas', 'Pago mediante criptomonedas como Bitcoin'),
('Pago en Efectivo', 'Pago en efectivo en la tienda física'),
('Apple Pay', 'Pago mediante Apple Pay'),
('Google Pay', 'Pago mediante Google Pay'),
('Visa', 'Pago con tarjeta Visa'),
('Mastercard', 'Pago con tarjeta Mastercard'),
('American Express', 'Pago con tarjeta American Express');
go

INSERT INTO transacciones (pedido_id, metodo_pago_id, monto, estado) VALUES
(1, 1, 50.00, 'Pendiente'),
(2, 2, 30.99, 'Completado'),
(3, 3, 45.50, 'Completado'),
(4, 4, 20.99, 'Fallido'),
(5, 5, 25.00, 'Pendiente'),
(6, 6, 12.75, 'Completado'),
(7, 7, 15.99, 'Completado'),
(8, 8, 8.99, 'Pendiente'),
(9, 9, 10.99, 'Fallido'),
(10, 10, 25.00, 'Pendiente');
go