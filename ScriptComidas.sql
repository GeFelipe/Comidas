-- Se crea la base de datos gastronomia

CREATE DATABASE gastronomia;

-- Crear el usuario V2

-- Crear el usuario
CREATE USER 'user_python1'@'localhost' IDENTIFIED BY '1234';

-- Darle permisos sobre la base de datos gastronomia
GRANT CREATE, SELECT, INSERT, UPDATE, DELETE, FILE, EXECUTE ON *.* TO 'user_python1'@'localhost' WITH GRANT OPTION;

-- Se crea la tabla DE paises

CREATE TABLE paises (
    id_pais INT AUTO_INCREMENT PRIMARY KEY,
    nombre_pais VARCHAR(300) NOT NULL UNIQUE
);

-- Tabla de comidas típicas
CREATE TABLE comidas_tipicas (
    id_comida INT AUTO_INCREMENT PRIMARY KEY,
    nombre_comida VARCHAR(300) NOT NULL,
    descripcion TEXT,
    id_pais INT NOT NULL,
    FOREIGN KEY (id_pais) REFERENCES paises(id_pais)
);

-- Realizar primero el Insert de países
INSERT INTO paises (nombre_pais) VALUES
('México'),
('Colombia'),
('Italia'),
('Japón'),
('España');

-- Insertar comidas típicas (2 por cada país)
INSERT INTO comidas_tipicas (nombre_comida, descripcion, id_pais) VALUES
('Tacos', 'Tortillas de maíz rellenas de carne, salsa y vegetales', 1),
('Pozole', 'Sopa de maíz con carne de cerdo o pollo', 1),
('Arepa', 'Pan de maíz típico colombiano que acompaña casi cualquier comida', 2),
('Bandeja Paisa', 'Plato abundante con frijoles, arroz, carne, huevo y plátano', 2),
('Pizza', 'Masa horneada con salsa de tomate, queso y otros ingredientes', 3),
('Pasta Carbonara', 'Pasta con huevo, queso y panceta', 3),
('Sushi', 'Arroz aderezado acompañado de pescado, mariscos o vegetales', 4),
('Ramen', 'Sopa de fideos en caldo con carne, huevo y vegetales', 4),
('Paella', 'Arroz con mariscos, carne y vegetales.', 5),
('Tortilla Española', 'Tortilla gruesa de huevo con papa y cebolla', 5);