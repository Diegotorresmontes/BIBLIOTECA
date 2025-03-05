-- Insertar autores
INSERT INTO autores (nombre, nacionalidad, fecha_nacimiento) VALUES
('Gabriel García Márquez', 'Colombia', '1927-03-06'),
('J.K. Rowling', 'Reino Unido', '1965-07-31'),
('George Orwell', 'Reino Unido', '1903-06-25'),
('J.R.R. Tolkien', 'Reino Unido', '1892-01-03'),
('Jane Austen', 'Reino Unido', '1775-12-16'),
('Isaac Asimov', 'Estados Unidos', '1920-01-02'),
('Stephen King', 'Estados Unidos', '1947-09-21'),
('Haruki Murakami', 'Japón', '1949-01-12'),
('Agatha Christie', 'Reino Unido', '1890-09-15'),
('Ernest Hemingway', 'Estados Unidos', '1899-07-21');


-- Insertar libros con los nuevos datos
INSERT INTO libros (titulo, autor_id, genero, anio_publicacion, isbn, ubicacion, cantidad_disponible) VALUES
('Cien años de soledad', 1, 'Realismo mágico', 1967, '9780307474728', 'Sección A - Estante 1', 5),
('Harry Potter y la piedra filosofal', 2, 'Fantasía', 1997, '9788478884452', 'Sección B - Estante 2', 8),
('1984', 3, 'Ciencia ficción', 1949, '9780451524935', 'Sección C - Estante 3', 7),
('El Señor de los Anillos', 4, 'Fantasía', 1954, '9780618640157', 'Sección B - Estante 4', 10),
('Orgullo y prejuicio', 5, 'Romance', 1813, '9780141040349', 'Sección D - Estante 1', 4),
('Fundación', 6, 'Ciencia ficción', 1951, '9788497594257', 'Sección C - Estante 2', 6),
('It', 7, 'Terror', 1986, '9781501142970', 'Sección E - Estante 5', 3),
('Kafka en la orilla', 8, 'Ficción contemporánea', 2002, '9788498381498', 'Sección F - Estante 2', 5),
('Asesinato en el Orient Express', 9, 'Misterio', 1934, '9788408067533', 'Sección G - Estante 3', 4),
('El viejo y el mar', 10, 'Aventura', 1952, '9780684801223', 'Sección H - Estante 1', 2);

-- Insertar usuarios
INSERT INTO usuarios (username, email, password_hash) VALUES
('usuario1', 'usuario1@gmail.com', 'hash1'),
('usuario2', 'usuario2@gmail.com', 'hash2'),
('usuario3', 'usuario3@gmail.com', 'hash3'),
('usuario4', 'usuario4@gmail.com', 'hash4'),
('usuario5', 'usuario5@gmail.com', 'hash5');

-- Insertar préstamos
INSERT INTO prestamos (usuario_id, libro_id, fecha_prestamo, fecha_devolucion) VALUES
(1, 2, '2024-02-01', '2024-02-15'),
(2, 5, '2024-02-03', '2024-02-17'),
(3, 1, '2024-02-05', NULL),
(4, 4, '2024-02-07', NULL),
(5, 3, '2024-02-10', '2024-02-24');

-- Insertar críticas
INSERT INTO criticas (libro_id, usuario_id, puntuacion, comentario) VALUES
(1, 1, 5, 'Una obra maestra, realmente increíble.'),
(2, 2, 4, 'Muy entretenido, pero el principio es algo lento.'),
(3, 3, 5, 'Un clásico atemporal que todo el mundo debería leer.'),
(4, 4, 3, 'Interesante, aunque esperaba más acción.'),
(5, 5, 4, 'Me encantó la historia de Elizabeth Bennet.');
