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

INSERT INTO metodos_pago (nombre_metodo, descripcion)
VALUES
('Tarjeta de Cr�dito', 'Pago con tarjeta de cr�dito'),
('PayPal', 'Pago a trav�s de PayPal')
go




