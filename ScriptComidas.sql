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