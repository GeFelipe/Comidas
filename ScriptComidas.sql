-- Se crea la base de datos gastronomia

CREATE DATABASE gastronomia;

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

-- Insertar países
INSERT INTO paises (nombre_pais) VALUES
('México'),
('Colombia'),
('Italia'),
('Japón'),
('España');

-- Insertar comidas típicas (2 por cada país)
INSERT INTO comidas_tipicas (nombre_comida, descripcion, id_pais) VALUES
-- México (id_pais = 1)
('Tacos', 'Tortillas de maíz rellenas de carne, salsa y vegetales', 1),
('Pozole', 'Sopa de maíz con carne de cerdo o pollo', 1),

-- Colombia (id_pais = 2)
('Arepa', 'Pan de maíz típico colombiano que acompaña casi cualquier comida', 2),
('Bandeja Paisa', 'Plato abundante con frijoles, arroz, carne, huevo y plátano', 2),

-- Italia (id_pais = 3)
('Pizza', 'Masa horneada con salsa de tomate, queso y otros ingredientes', 3),
('Pasta Carbonara', 'Pasta con huevo, queso y panceta', 3),

-- Japón (id_pais = 4)
('Sushi', 'Arroz aderezado acompañado de pescado, mariscos o vegetales', 4),
('Ramen', 'Sopa de fideos en caldo con carne, huevo y vegetales', 4),

-- España (id_pais = 5)
('Paella', 'Arroz con mariscos, carne y vegetales.', 5),
('Tortilla Española', 'Tortilla gruesa de huevo con papa y cebolla', 5);