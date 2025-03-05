-- Crear la tabla de autores 
CREATE TABLE autores (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL UNIQUE,
    nacionalidad VARCHAR(50),
    fecha_nacimiento DATE
);

-- Crear la tabla de libros
CREATE TABLE libros (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    autor_id INT NOT NULL,
    genero VARCHAR(100) NOT NULL,
    anio_publicacion INT,
    isbn VARCHAR(20) UNIQUE NOT NULL,
    ubicacion VARCHAR(100) NOT NULL, -- Ubicación física del libro en la biblioteca
    cantidad_disponible INT NOT NULL CHECK (cantidad_disponible >= 0),
    FOREIGN KEY (autor_id) REFERENCES autores(id) ON DELETE CASCADE
);

-- Crear la tabla de usuarios
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL
);

-- Crear la tabla de préstamos
CREATE TABLE prestamos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT NOT NULL,
    libro_id INT NOT NULL,
    fecha_prestamo DATE NOT NULL,
    fecha_devolucion DATE NULL,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE,
    FOREIGN KEY (libro_id) REFERENCES libros(id) ON DELETE CASCADE
);

-- Crear la tabla de críticas
CREATE TABLE criticas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    libro_id INT NOT NULL,
    usuario_id INT NOT NULL,
    puntuacion TINYINT NOT NULL CHECK (puntuacion BETWEEN 1 AND 5),
    comentario TEXT,
    FOREIGN KEY (libro_id) REFERENCES libros(id) ON DELETE CASCADE,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id) ON DELETE CASCADE
);
