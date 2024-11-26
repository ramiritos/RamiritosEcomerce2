Use ECommercelibros
go

INSERT INTO usuarios (nombre, email, contrase�a_hash, direccion, telefono, es_admin)
VALUES
('Juan P�rez', 'juan.perez@mail.com', 'hash123', 'Calle 1, Ciudad 1', '1234567890', 0),
('Carlos G�mez', 'carlos.gomez@mail.com', 'hash234', 'Calle 2, Ciudad 2', '1234567891', 0),
('Pedro Mart�nez', 'pedro.martinez@mail.com', 'hash345', 'Calle 3, Ciudad 3', '1234567892', 0),
('Jhon Rodr�guez', 'jhon.rodriguez@mail.com', 'hash456', 'Calle 4, Ciudad 4', '1234567893', 0),
('Luis Fern�ndez', 'luis.fernandez@mail.com', 'hash567', 'Calle 5, Ciudad 5', '1234567894', 0),
('Miguel Ram�rez', 'miguel.ramirez@mail.com', 'hash678', 'Calle 6, Ciudad 6', '1234567895', 0),
('Andr�s Torres', 'andres.torres@mail.com', 'hash789', 'Calle 7, Ciudad 7', '1234567896', 0),
('Sof�a Morales', 'sofia.morales@mail.com', 'hash890', 'Calle 8, Ciudad 8', '1234567897', 0),
('Mar�a L�pez', 'maria.lopez@mail.com', 'hash901', 'Calle 9, Ciudad 9', '1234567898', 0),
('Camila Vargas', 'camila.vargas@mail.com', 'hash012', 'Calle 10, Ciudad 10', '1234567899', 0),
('Ana Garc�a', 'ana.garcia@mail.com', 'hash1234', 'Calle 11, Ciudad 11', '1234567810', 0),
('Luc�a Rivera', 'lucia.rivera@mail.com', 'hash2345', 'Calle 12, Ciudad 12', '1234567811', 0),
('Diana Castillo', 'diana.castillo@mail.com', 'hash3456', 'Calle 13, Ciudad 13', '1234567812', 0),
('Elena Ortiz', 'elena.ortiz@mail.com', 'hash4567', 'Calle 14, Ciudad 14', '1234567813', 0),
('Jorge Ram�rez', 'jorge.ramirez@mail.com', 'hash5678', 'Calle 15, Ciudad 15', '1234567814', 0),
('Daniel P�rez', 'daniel.perez@mail.com', 'hash6789', 'Calle 16, Ciudad 16', '1234567815', 0),
('Gabriel Cruz', 'gabriel.cruz@mail.com', 'hash7890', 'Calle 17, Ciudad 17', '1234567816', 0),
('Isabel S�nchez', 'isabel.sanchez@mail.com', 'hash8901', 'Calle 18, Ciudad 18', '1234567817', 0),
('Fernanda Ruiz', 'fernanda.ruiz@mail.com', 'hash9012', 'Calle 19, Ciudad 19', '1234567818', 0),
('Claudia Delgado', 'claudia.delgado@mail.com', 'hash0123', 'Calle 20, Ciudad 20', '1234567819', 0),
('Esteban Silva', 'esteban.silva@mail.com', 'hash12345', 'Calle 21, Ciudad 21', '1234567820', 0),
('Javier Herrera', 'javier.herrera@mail.com', 'hash23456', 'Calle 22, Ciudad 22', '1234567821', 0),
('Mateo Soto', 'mateo.soto@mail.com', 'hash34567', 'Calle 23, Ciudad 23', '1234567822', 0),
('Valeria Le�n', 'valeria.leon@mail.com', 'hash45678', 'Calle 24, Ciudad 24', '1234567823', 0),
('Victoria Guzm�n', 'victoria.guzman@mail.com', 'hash56789', 'Calle 25, Ciudad 25', '1234567824', 0),
('Alejandro Castro', 'alejandro.castro@mail.com', 'hash67890', 'Calle 26, Ciudad 26', '1234567825', 0),
('Mart�n Navarro', 'martin.navarro@mail.com', 'hash78901', 'Calle 27, Ciudad 27', '1234567826', 0),
('Sebasti�n Aguilar', 'sebastian.aguilar@mail.com', 'hash89012', 'Calle 28, Ciudad 28', '1234567827', 0),
('Carla Medina', 'carla.medina@mail.com', 'hash90123', 'Calle 29, Ciudad 29', '1234567828', 0),
('Natalia Paredes', 'natalia.paredes@mail.com', 'hash01234', 'Calle 30, Ciudad 30', '1234567829', 0),
('Emilio Vega', 'emilio.vega@mail.com', 'hash123456', 'Calle 31, Ciudad 31', '1234567830', 0),
('Patricia Ramos', 'patricia.ramos@mail.com', 'hash234567', 'Calle 32, Ciudad 32', '1234567831', 0),
('H�ctor Pe�a', 'hector.pena@mail.com', 'hash345678', 'Calle 33, Ciudad 33', '1234567832', 0),
('Andrea Lara', 'andrea.lara@mail.com', 'hash456789', 'Calle 34, Ciudad 34', '1234567833', 0),
('Paula Mu�oz', 'paula.munoz@mail.com', 'hash567890', 'Calle 35, Ciudad 35', '1234567834', 0),
('Rafael Ortiz', 'rafael.ortiz@mail.com', 'hash678901', 'Calle 36, Ciudad 36', '1234567835', 0),
('Fabiola Flores', 'fabiola.flores@mail.com', 'hash789012', 'Calle 37, Ciudad 37', '1234567836', 0),
('Marcos Escobar', 'marcos.escobar@mail.com', 'hash890123', 'Calle 38, Ciudad 38', '1234567837', 0),
('Alberto Valdez', 'alberto.valdez@mail.com', 'hash901234', 'Calle 39, Ciudad 39', '1234567838', 0),
('Carmen Molina', 'carmen.molina@mail.com', 'hash012345', 'Calle 40, Ciudad 40', '1234567839', 1)
go

-- Insertar Autores
INSERT INTO Autor (Nombre, FechaNacimiento)
VALUES
('Emanuel Rivas', '1975-03-15'),
('Florencia Cardozo', '1980-07-22'),
('Ulises Aranda', '1968-01-11'),
('Isabela Montiel', '1990-09-05'),
('Agust�n Bravo', '1985-12-19'),
('Luciana Ortega', '1978-04-30'),
('Maximiliano Su�rez', '1965-11-20'),
('Gabriela Dom�nguez', '1992-06-10'),
('Leandro Campos', '1983-08-17'),
('M�nica Estrada', '1977-10-14'),
('Ignacio Paredes', '1988-02-25'),
('Renata Espinoza', '1995-05-09'),
('Esteban Quiroga', '1970-07-03'),
('Carolina Vargas', '1982-11-08'),
('Tom�s Castillo', '1969-03-28')
go

-- Insertar Categor�as
INSERT INTO categorias (nombre_categoria, descripcion)
VALUES
('Ficci�n', 'Libros que narran historias imaginarias o inventadas.'),
('Romance', 'Historias centradas en relaciones amorosas.'),
('Ciencia Ficci�n', 'Obras que exploran avances cient�ficos y tecnol�gicos imaginarios.'),
('Fantas�a', 'Relatos en mundos ficticios con elementos m�gicos.'),
('Historia', 'Libros sobre eventos hist�ricos y sus an�lisis.'),
('Biograf�a', 'Relatos de la vida de personajes importantes.'),
('Autodesarrollo', 'Obras enfocadas en el crecimiento personal y profesional.'),
('Infantil', 'Libros dirigidos al p�blico infantil.'),
('Juvenil', 'Historias pensadas para adolescentes y j�venes adultos.'),
('Misterio', 'Novelas centradas en resolver cr�menes o enigmas.'),
('Terror', 'Historias dise�adas para generar miedo o suspenso.'),
('Cl�sicos', 'Obras literarias reconocidas universalmente.'),
('Poes�a', 'Libros que contienen composiciones po�ticas.'),
('Aventura', 'Historias emocionantes y llenas de acci�n.'),
('Religi�n y Espiritualidad', 'Textos sobre creencias, valores y espiritualidad.')
go

-- Insertar Productos
INSERT INTO productos (titulo, descripcion, tipo_producto, precio, genero, fecha_publicacion, stock, idioma, url_archivo, peso, paginas)
VALUES
('El viajero del tiempo', 'Una emocionante novela sobre viajes temporales.', 'Libro F�sico', 19.99, 'Ciencia Ficci�n', '2023-01-10', 30, 'Espa�ol', NULL, 0.8, 320),
('Romance bajo la lluvia', 'Una historia de amor en medio de la tormenta.', 'Libro Digital', 9.99, 'Romance', '2022-07-14', 100, 'Espa�ol', 'url1', NULL, NULL),
('El mago oscuro', 'Una �pica aventura en un mundo de fantas�a.', 'Audiolibro', 14.99, 'Fantas�a', '2021-05-21', 50, 'Espa�ol', 'url2', NULL, NULL),
('Historias perdidas', 'Relatos hist�ricos olvidados del siglo XVIII.', 'Libro F�sico', 24.99, 'Historia', '2020-11-02', 20, 'Espa�ol', NULL, 1.2, 450),
('El arte de liderar', 'Gu�a para el desarrollo del liderazgo personal.', 'Libro Digital', 12.99, 'Autodesarrollo', '2023-04-10', 200, 'Espa�ol', 'url3', NULL, NULL),
('Cuentos m�gicos para ni�os', 'Relatos fant�sticos para los m�s peque�os.', 'Libro F�sico', 15.99, 'Infantil', '2022-09-15', 40, 'Espa�ol', NULL, 0.5, 120),
('El enigma del asesino', 'Una novela de misterio que te mantendr� en vilo.', 'Audiolibro', 11.99, 'Misterio', '2021-03-12', 70, 'Espa�ol', 'url4', NULL, NULL),
('La sombra en la noche', 'Un thriller que no te dejar� dormir.', 'Libro F�sico', 18.99, 'Terror', '2022-01-25', 50, 'Espa�ol', NULL, 0.7, 280),
('Poemas de una vida', 'Una recopilaci�n de los mejores poemas.', 'Libro Digital', 7.99, 'Poes�a', '2023-06-18', 120, 'Espa�ol', 'url5', NULL, NULL),
('Las aventuras de Max', 'Una serie de emocionantes historias de aventura.', 'Libro F�sico', 22.99, 'Aventura', '2021-08-30', 25, 'Espa�ol', NULL, 0.9, 350),
('Meditaciones diarias', 'Reflexiones espirituales para cada d�a.', 'Audiolibro', 13.99, 'Religi�n y Espiritualidad', '2022-12-15', 60, 'Espa�ol', 'url6', NULL, NULL),
('El camino de Santiago', 'Una historia de superaci�n personal.', 'Libro Digital', 10.99, 'Autodesarrollo', '2023-05-12', 90, 'Espa�ol', 'url7', NULL, NULL),
('El �ltimo guerrero', 'Una novela de fantas�a �pica.', 'Libro F�sico', 25.99, 'Fantas�a', '2020-07-01', 40, 'Espa�ol', NULL, 1.1, 400),
('El misterio del faro', 'Un crimen por resolver en un peque�o pueblo.', 'Audiolibro', 16.99, 'Misterio', '2021-09-20', 80, 'Espa�ol', 'url8', NULL, NULL),
('Amor eterno', 'Una historia de amor a trav�s del tiempo.', 'Libro Digital', 8.99, 'Romance', '2022-03-15', 150, 'Espa�ol', 'url9', NULL, NULL),
('El futuro incierto', 'Una mirada a las posibles sociedades futuras.', 'Libro F�sico', 20.99, 'Ciencia Ficci�n', '2023-10-05', 35, 'Espa�ol', NULL, 0.8, 330),
('Cuentos para so�ar', 'Relatos infantiles llenos de imaginaci�n.', 'Libro F�sico', 14.99, 'Infantil', '2023-02-14', 50, 'Espa�ol', NULL, 0.6, 100),
('Cl�sicos del terror', 'Una selecci�n de los mejores relatos de miedo.', 'Libro F�sico', 18.99, 'Terror', '2020-10-31', 45, 'Espa�ol', NULL, 0.9, 300),
('La gran aventura', 'Un viaje lleno de peligros y descubrimientos.', 'Audiolibro', 17.99, 'Aventura', '2021-06-18', 70, 'Espa�ol', 'url10', NULL, NULL),
('Leyendas de anta�o', 'Historias cl�sicas que nunca pasan de moda.', 'Libro Digital', 6.99, 'Cl�sicos', '2023-08-25', 200, 'Espa�ol', 'url11', NULL, NULL),
('Biograf�a de un l�der', 'La vida de un empresario exitoso.', 'Libro F�sico', 19.99, 'Biograf�a', '2021-04-10', 25, 'Espa�ol', NULL, 0.7, 280),
('Pensamientos nocturnos', 'Poes�as para reflexionar al final del d�a.', 'Libro Digital', 7.99, 'Poes�a', '2023-09-01', 80, 'Espa�ol', 'url12', NULL, NULL),
('La noche m�s oscura', 'Una novela de suspenso atrapante.', 'Audiolibro', 15.99, 'Misterio', '2022-11-22', 60, 'Espa�ol', 'url13', NULL, NULL),
('El libro de los h�roes', 'Relatos �picos para inspirarte.', 'Libro F�sico', 23.99, 'Fantas�a', '2020-12-25', 30, 'Espa�ol', NULL, 1.3, 500),
('Viaje al pasado', 'Un recorrido hist�rico por eventos significativos.', 'Libro Digital', 9.99, 'Historia', '2023-03-30', 110, 'Espa�ol', 'url14', NULL, NULL),
('Caminos cruzados', 'Historias de amor inesperadas.', 'Audiolibro', 14.99, 'Romance', '2022-05-10', 80, 'Espa�ol', 'url15', NULL, NULL),
('Horizontes lejanos', 'Explorando mundos m�s all� de la Tierra.', 'Libro F�sico', 21.99, 'Ciencia Ficci�n', '2021-01-18', 40, 'Espa�ol', NULL, 0.9, 360),
('Relatos de la infancia', 'Historias para ni�os de todas las edades.', 'Libro F�sico', 13.99, 'Infantil', '2023-07-11', 60, 'Espa�ol', NULL, 0.5, 120),
('Filosof�a para la vida', 'Reflexiones para el d�a a d�a.', 'Audiolibro', 12.99, 'Religi�n y Espiritualidad', '2021-10-22', 75, 'Espa�ol', 'url16', NULL, NULL),
('La rosa y el espino', 'Una tr�gica historia de amor.', 'Libro Digital', 8.49, 'Romance', '2022-08-19', 120, 'Espa�ol', 'url17', NULL, NULL),
('La rebeli�n de las m�quinas', 'Un futuro dominado por la inteligencia artificial.', 'Libro F�sico', 24.99, 'Ciencia Ficci�n', '2023-05-01', 30, 'Espa�ol', NULL, 1.0, 420),
('El drag�n y el guerrero', 'Un enfrentamiento �pico en un reino lejano.', 'Libro F�sico', 22.49, 'Fantas�a', '2022-09-23', 25, 'Espa�ol', NULL, 0.8, 350),
('Cr�nicas de la noche', 'Historias de terror que no olvidar�s.', 'Audiolibro', 16.49, 'Terror', '2023-10-31', 40, 'Espa�ol', 'url18', NULL, NULL),
('Ecos del pasado', 'Una biograf�a que inspira.', 'Libro Digital', 11.99, 'Biograf�a', '2021-12-15', 90, 'Espa�ol', 'url19', NULL, NULL),
('El viaje del poeta', 'Reflexiones po�ticas en prosa.', 'Libro Digital', 8.99, 'Poes�a', '2023-02-28', 130, 'Espa�ol', 'url20', NULL, NULL),
('La �ltima cruzada', 'Una aventura para cambiar el destino.', 'Audiolibro', 14.49, 'Aventura', '2022-04-14', 70, 'Espa�ol', 'url21', NULL, NULL),
('Sombras en el bosque', 'Un cuento infantil con ense�anzas.', 'Libro F�sico', 16.99, 'Infantil', '2023-09-30', 45, 'Espa�ol', NULL, 0.7, 150),
('Secretos del universo', 'Explorando los misterios de la existencia.', 'Libro Digital', 10.99, 'Religi�n y Espiritualidad', '2023-06-16', 75, 'Espa�ol', 'url22', NULL, NULL)
go

-- Insertar M�todos de Pago
INSERT INTO metodos_pago (nombre_metodo, descripcion)
VALUES
('Tarjeta de Cr�dito', 'Pago con tarjeta de cr�dito Visa, Mastercard, o American Express'),
('PayPal', 'Pago r�pido y seguro a trav�s de la plataforma PayPal'),
('Transferencia Bancaria', 'Pago directo desde tu cuenta bancaria'),
('Contra Reembolso', 'Pago en efectivo al momento de la entrega'),
('Criptomonedas', 'Pago con criptomonedas como Bitcoin o Ethereum')
go

-- Insertar Pedidos
INSERT INTO pedidos (usuario_id, fecha_pedido, total, estado)
VALUES
(1, '2024-01-15 10:30:00', 39.98, 'Pendiente'),
(2, '2024-01-16 14:20:00', 24.99, 'Enviado'),
(3, '2024-01-17 09:45:00', 75.96, 'Entregado'),
(4, '2024-01-18 12:00:00', 19.99, 'Pendiente'),
(5, '2024-01-19 16:10:00', 50.97, 'Cancelado'),
(6, '2024-01-20 11:25:00', 14.99, 'Pendiente'),
(7, '2024-01-21 15:00:00', 90.94, 'Entregado'),
(8, '2024-01-22 10:00:00', 40.98, 'Enviado'),
(9, '2024-01-23 14:50:00', 20.99, 'Pendiente'),
(10, '2024-01-24 08:30:00', 63.96, 'Pendiente'),
(11, '2024-01-25 17:20:00', 33.98, 'Entregado'),
(12, '2024-01-26 13:15:00', 19.99, 'Enviado'),
(13, '2024-01-27 18:00:00', 44.97, 'Pendiente'),
(14, '2024-01-28 09:10:00', 29.99, 'Entregado'),
(15, '2024-01-29 10:45:00', 24.99, 'Pendiente'),
(16, '2024-01-30 14:35:00', 19.99, 'Cancelado'),
(17, '2024-01-31 12:50:00', 79.95, 'Pendiente'),
(18, '2024-02-01 15:15:00', 34.98, 'Entregado'),
(19, '2024-02-02 11:05:00', 25.99, 'Enviado'),
(20, '2024-02-03 10:10:00', 49.96, 'Pendiente'),
(21, '2024-02-04 09:30:00', 27.99, 'Entregado'),
(22, '2024-02-05 13:45:00', 18.99, 'Enviado'),
(23, '2024-02-06 17:25:00', 59.95, 'Pendiente'),
(24, '2024-02-07 16:40:00', 22.99, 'Cancelado'),
(25, '2024-02-08 12:20:00', 19.99, 'Pendiente');
go

-- Insertar Producto-Categor�as
INSERT INTO producto_categorias (producto_id, categoria_id)
VALUES
(1, 3), -- "El viajero del tiempo" - Ciencia Ficci�n
(2, 2), -- "Romance bajo la lluvia" - Romance
(3, 4), -- "El mago oscuro" - Fantas�a
(4, 5), -- "Historias perdidas" - Historia
(5, 7), -- "El arte de liderar" - Autodesarrollo
(6, 8), -- "Cuentos m�gicos para ni�os" - Infantil
(7, 10), -- "El enigma del asesino" - Misterio
(8, 11), -- "La sombra en la noche" - Terror
(9, 13), -- "Poemas de una vida" - Poes�a
(10, 14), -- "Las aventuras de Max" - Aventura
(11, 15), -- "Meditaciones diarias" - Religi�n y Espiritualidad
(12, 7), -- "El camino de Santiago" - Autodesarrollo
(13, 4), -- "El �ltimo guerrero" - Fantas�a
(14, 10), -- "El misterio del faro" - Misterio
(15, 2), -- "Amor eterno" - Romance
(16, 3), -- "El futuro incierto" - Ciencia Ficci�n
(17, 8), -- "Cuentos para so�ar" - Infantil
(18, 11), -- "Cl�sicos del terror" - Terror
(19, 14), -- "La gran aventura" - Aventura
(20, 12), -- "Leyendas de anta�o" - Cl�sicos
(21, 6), -- "Biograf�a de un l�der" - Biograf�a
(22, 13), -- "Pensamientos nocturnos" - Poes�a
(23, 10), -- "La noche m�s oscura" - Misterio
(24, 4), -- "El libro de los h�roes" - Fantas�a
(25, 5); -- "Viaje al pasado" - Historia
go

-- Insertar Pedido-Productos
INSERT INTO pedido_productos (pedido_id, producto_id, cantidad, precio)
VALUES
(1, 1, 1, 19.99), -- Pedido 1: "El viajero del tiempo"
(1, 2, 1, 14.99), -- Pedido 1: "Romance bajo la lluvia"
(2, 3, 2, 29.98), -- Pedido 2: "El mago oscuro"
(3, 4, 1, 19.99), -- Pedido 3: "Historias perdidas"
(3, 5, 3, 50.97), -- Pedido 3: "El arte de liderar"
(4, 6, 1, 14.99), -- Pedido 4: "Cuentos m�gicos para ni�os"
(5, 7, 2, 40.98), -- Pedido 5: "El enigma del asesino"
(6, 8, 1, 19.99), -- Pedido 6: "La sombra en la noche"
(7, 9, 1, 10.99), -- Pedido 7: "Poemas de una vida"
(7, 10, 2, 29.98), -- Pedido 7: "Las aventuras de Max"
(8, 11, 1, 15.99), -- Pedido 8: "Meditaciones diarias"
(8, 12, 1, 14.99), -- Pedido 8: "El camino de Santiago"
(9, 13, 1, 19.99), -- Pedido 9: "El �ltimo guerrero"
(10, 14, 1, 14.49), -- Pedido 10: "El misterio del faro"
(10, 15, 1, 16.99), -- Pedido 10: "Amor eterno"
(11, 16, 1, 20.99), -- Pedido 11: "El futuro incierto"
(11, 17, 1, 18.99), -- Pedido 11: "Cuentos para so�ar"
(12, 18, 1, 14.99), -- Pedido 12: "Cl�sicos del terror"
(12, 19, 1, 25.99), -- Pedido 12: "La gran aventura"
(13, 20, 1, 19.99), -- Pedido 13: "Leyendas de anta�o"
(13, 21, 1, 24.99), -- Pedido 13: "Biograf�a de un l�der"
(14, 22, 1, 10.99), -- Pedido 14: "Pensamientos nocturnos"
(15, 23, 2, 41.98), -- Pedido 15: "La noche m�s oscura"
(15, 24, 1, 20.99), -- Pedido 15: "El libro de los h�roes"
(16, 25, 1, 19.99), -- Pedido 16: "Viaje al pasado"
(17, 1, 1, 19.99), -- Pedido 17: "El viajero del tiempo"
(17, 6, 2, 29.98), -- Pedido 17: "Cuentos m�gicos para ni�os"
(18, 12, 1, 14.99), -- Pedido 18: "El camino de Santiago"
(19, 18, 2, 29.98), -- Pedido 19: "Cl�sicos del terror"
(20, 14, 1, 14.49); -- Pedido 20: "El misterio del faro"
go

-- Insertar Env�os
INSERT INTO envios (pedido_id, direccion_envio, ciudad, codigo_postal, pais, fecha_envio, fecha_entrega_estimada, fecha_entrega, estado)
VALUES
(1, 'Calle Luna 123', 'Ciudad A', '12345', 'M�xico', '2024-01-16 10:00:00', '2024-01-20 18:00:00', NULL, 'Preparando'),
(2, 'Av. Sol 456', 'Ciudad B', '67890', 'Espa�a', '2024-01-17 14:30:00', '2024-01-22 16:00:00', '2024-01-21 15:00:00', 'Entregado'),
(3, 'Carrera Estrella 789', 'Ciudad C', '11223', 'Argentina', '2024-01-18 09:00:00', '2024-01-23 12:00:00', NULL, 'En tr�nsito'),
(4, 'Pasaje Cometa 101', 'Ciudad D', '44556', 'Colombia', NULL, NULL, NULL, 'Preparando'),
(5, 'Calle Cometa 202', 'Ciudad E', '33445', 'Chile', '2024-01-20 11:30:00', '2024-01-25 17:00:00', '2024-01-24 14:30:00', 'Entregado'),
(6, 'Boulevard Sol 303', 'Ciudad F', '77889', 'Per�', '2024-01-21 08:15:00', '2024-01-27 13:00:00', NULL, 'En tr�nsito'),
(7, 'Av. Viento 404', 'Ciudad G', '99012', 'Venezuela', '2024-01-22 15:45:00', '2024-01-28 16:30:00', '2024-01-27 12:15:00', 'Entregado'),
(8, 'Calle Brisa 505', 'Ciudad H', '22334', 'Ecuador', NULL, NULL, NULL, 'Preparando'),
(9, 'Carrera R�o 606', 'Ciudad I', '55667', 'Uruguay', '2024-01-24 12:00:00', '2024-01-30 10:30:00', '2024-01-29 09:00:00', 'Entregado'),
(10, 'Pasaje Flor 707', 'Ciudad J', '88900', 'Bolivia', '2024-01-25 14:20:00', '2024-02-01 18:45:00', NULL, 'En tr�nsito'),
(11, 'Calle Horizonte 808', 'Ciudad K', '11234', 'Panam�', '2024-01-26 09:30:00', '2024-02-02 14:00:00', '2024-02-01 16:30:00', 'Entregado'),
(12, 'Av. Nube 909', 'Ciudad L', '44578', 'Paraguay', '2024-01-27 08:00:00', '2024-02-03 17:15:00', NULL, 'En tr�nsito'),
(13, 'Boulevard Estrella 1010', 'Ciudad M', '66789', 'Costa Rica', NULL, NULL, NULL, 'Preparando'),
(14, 'Calle Sol 1111', 'Ciudad N', '99801', 'Honduras', '2024-01-29 13:10:00', '2024-02-05 15:30:00', '2024-02-04 11:45:00', 'Entregado'),
(15, 'Carrera Noche 1212', 'Ciudad O', '33112', 'Guatemala', '2024-01-30 10:50:00', '2024-02-06 14:00:00', NULL, 'En tr�nsito');
go

-- Insertar Transacciones
INSERT INTO transacciones (pedido_id, metodo_pago_id, fecha_pago, monto, estado)
VALUES
(1, 1, '2024-01-16 10:30:00', 34.98, 'Completado'), -- Pedido 1
(2, 2, '2024-01-17 15:00:00', 29.98, 'Completado'), -- Pedido 2
(3, 3, '2024-01-18 10:00:00', 70.96, 'Completado'), -- Pedido 3
(4, 1, NULL, 14.99, 'Pendiente'), -- Pedido 4
(5, 4, '2024-01-20 12:00:00', 40.98, 'Completado'), -- Pedido 5
(6, 5, '2024-01-21 08:45:00', 19.99, 'Completado'), -- Pedido 6
(7, 1, '2024-01-22 16:00:00', 40.97, 'Completado'), -- Pedido 7
(8, 3, NULL, 30.98, 'Pendiente'), -- Pedido 8
(9, 2, '2024-01-24 12:30:00', 10.99, 'Completado'), -- Pedido 9
(10, 4, '2024-01-25 14:45:00', 31.48, 'Completado'), -- Pedido 10
(11, 5, '2024-01-26 10:15:00', 39.98, 'Completado'), -- Pedido 11
(12, 1, NULL, 40.98, 'Pendiente'), -- Pedido 12
(13, 2, '2024-01-27 08:30:00', 44.98, 'Completado'), -- Pedido 13
(14, 3, '2024-01-29 14:10:00', 10.99, 'Completado'), -- Pedido 14
(15, 4, '2024-01-30 11:00:00', 62.97, 'Completado'), -- Pedido 15
(16, 1, '2024-01-31 09:20:00', 19.99, 'Completado'), -- Pedido 16
(17, 2, '2024-02-01 13:40:00', 49.97, 'Completado'), -- Pedido 17
(18, 3, NULL, 14.99, 'Pendiente'), -- Pedido 18
(19, 4, '2024-02-02 10:00:00', 29.98, 'Completado'), -- Pedido 19
(20, 5, '2024-02-03 16:00:00', 14.49, 'Completado'), -- Pedido 20
(21, 1, '2024-02-04 11:00:00', 24.99, 'Completado'), -- Pedido 21
(22, 2, '2024-02-05 12:00:00', 10.99, 'Completado'), -- Pedido 22
(23, 3, '2024-02-06 09:30:00', 41.98, 'Completado'), -- Pedido 23
(24, 4, NULL, 20.99, 'Pendiente'), -- Pedido 24
(25, 5, '2024-02-07 14:15:00', 19.99, 'Completado') -- Pedido 25
go

-- Insertar Autor-Producto
INSERT INTO Autor_Producto (AutorID, producto_id, FechaAsociacion)
VALUES
(1, 1, '2024-01-01'), -- Autor 1 asociado al producto 1
(2, 2, '2024-01-02'), -- Autor 2 asociado al producto 2
(3, 3, '2024-01-03'), -- Autor 3 asociado al producto 3
(4, 4, '2024-01-04'), -- Autor 4 asociado al producto 4
(5, 5, '2024-01-05'), -- Autor 5 asociado al producto 5
(6, 6, '2024-01-06'), -- Autor 6 asociado al producto 6
(7, 7, '2024-01-07'), -- Autor 7 asociado al producto 7
(8, 8, '2024-01-08'), -- Autor 8 asociado al producto 8
(9, 9, '2024-01-09'), -- Autor 9 asociado al producto 9
(10, 10, '2024-01-10'), -- Autor 10 asociado al producto 10
(11, 11, '2024-01-11'), -- Autor 11 asociado al producto 11
(12, 12, '2024-01-12'), -- Autor 12 asociado al producto 12
(13, 13, '2024-01-13'), -- Autor 13 asociado al producto 13
(14, 14, '2024-01-14'), -- Autor 14 asociado al producto 14
(15, 15, '2024-01-15'), -- Autor 15 asociado al producto 15
(1, 16, '2024-01-16'), -- Autor 1 asociado a otro producto (16)
(2, 17, '2024-01-17'), -- Autor 2 asociado a otro producto (17)
(3, 18, '2024-01-18'), -- Autor 3 asociado a otro producto (18)
(4, 19, '2024-01-19'), -- Autor 4 asociado a otro producto (19)
(5, 20, '2024-01-20'), -- Autor 5 asociado a otro producto (20)
(6, 21, '2024-01-21'), -- Autor 6 asociado a otro producto (21)
(7, 22, '2024-01-22'), -- Autor 7 asociado a otro producto (22)
(8, 23, '2024-01-23'), -- Autor 8 asociado a otro producto (23)
(9, 24, '2024-01-24'), -- Autor 9 asociado a otro producto (24)
(10, 25, '2024-01-25'); -- Autor 10 asociado a otro producto (25)
go

-- Insertar Imagen_Producto
INSERT INTO Imagen_Producto (producto_id, UrlImagen, Descripcion, FechaCreacion)
VALUES
(1, 'images/cuento1.png', 'Portada del libro "Sue�os de papel"', '2024-01-01'),
(2, 'images/cuento2.png', 'Portada del libro "El viaje eterno"', '2024-01-02'),
(3, 'images/cuento3.png', 'Portada del audiolibro "M�sica para el alma"', '2024-01-03'),
(4, 'images/cuento4.png', 'Portada del libro "Fantas�a en las nubes"', '2024-01-04'),
(5, 'images/cuento5.png', 'Portada del libro "El legado perdido"', '2024-01-05'),
(6, 'images/cuento6.png', 'Portada del audiolibro "Historias nocturnas"', '2024-01-06'),
(7, 'images/cuento7.png', 'Portada del libro "Mundos paralelos"', '2024-01-07'),
(8, 'images/cuento8.png', 'Portada del libro "Las luces del pasado"', '2024-01-08'),
(9, 'images/cuento9.png', 'Portada del libro "Caminos de oro"', '2024-01-09'),
(10, 'images/cuento10.png', 'Portada del libro "Sombras en el viento"', '2024-01-10'),
(11, 'images/bio1.png', 'Portada del audiolibro "Voces del silencio"', '2024-01-11'),
(12, 'images/bio2.png', 'Portada del libro "El tiempo atrapado"', '2024-01-12'),
(13, 'images/bio3.png', 'Portada del libro "La torre del amanecer"', '2024-01-13'),
(14, 'images/bio4.png', 'Portada del libro "Memorias del horizonte"', '2024-01-14'),
(15, 'images/bio5.png', 'Portada del libro "Ecos de la eternidad"', '2024-01-15'),
(16, 'images/bio6.png', 'Portada del libro "Sombras y luz"', '2024-01-16'),
(17, 'images/bio7.png', 'Portada del libro "Recuerdos de cristal"', '2024-01-17'),
(18, 'images/bio8.png', 'Portada del audiolibro "Cuentos del alba"', '2024-01-18'),
(19, 'images/bio9.png', 'Portada del libro "Senderos de fuego"', '2024-01-19'),
(20, 'images/bio10.png', 'Portada del libro "L�grimas de luna"', '2024-01-20'),
(1, 'images/histo1.png', 'Contraportada del libro "Sue�os de papel"', '2024-01-21'),
(2, 'images/histo2.png', 'Contraportada del libro "El viaje eterno"', '2024-01-22'),
(3, 'images/histo3.png', 'Contraportada del audiolibro "M�sica para el alma"', '2024-01-23'),
(4, 'images/histo4.png', 'Contraportada del libro "Fantas�a en las nubes"', '2024-01-24'),
(5, 'images/histo5.png', 'Contraportada del libro "El legado perdido"', '2024-01-25'),
(6, 'images/histo6.png', 'Contraportada del audiolibro "Historias nocturnas"', '2024-01-26'),
(7, 'images/histo7.png', 'Contraportada del libro "Mundos paralelos"', '2024-01-27'),
(8, 'images/histo8.png', 'Contraportada del libro "Las luces del pasado"', '2024-01-28'),
(9, 'images/histo9.png', 'Contraportada del libro "Caminos de oro"', '2024-01-29'),
(10, 'images/histo10.png', 'Contraportada del libro "Sombras en el viento"', '2024-01-30'),
(11, 'images/img_FlavoursW.jpg', 'Contraportada del audiolibro "Voces del silencio"', '2024-01-31'),
(12, 'images/img_paradox.jpg', 'Contraportada del libro "El tiempo atrapado"', '2024-02-01'),
(13, 'images/img_EmchantedLand.jpg', 'Contraportada del libro "La torre del amanecer"', '2024-02-02'),
(14, 'images/img_Wonders.jpg', 'Contraportada del libro "Memorias del horizonte"', '2024-02-03'),
(15, 'images/img_CrimspnClue.jpg', 'Contraportada del libro "Ecos de la eternidad"', '2024-02-04'),
(16, 'images/img_Candyland.jpg', 'Contraportada del libro "Sombras y luz"', '2024-02-05'),
(17, 'images/img_LSummer.jpg', 'Contraportada del libro "Recuerdos de cristal"', '2024-02-06'),
(18, 'images/img_motocycle.jpg', 'Contraportada del audiolibro "Cuentos del alba"', '2024-02-07'),
(19, 'images/img_Whispers.jpg', 'Contraportada del libro "Senderos de fuego"', '2024-02-08'),
(20, 'images/img_Shadows.jpg', 'Contraportada del libro "L�grimas de luna"', '2024-02-09');
go


