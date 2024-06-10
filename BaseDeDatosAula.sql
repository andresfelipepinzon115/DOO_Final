-- Crear base de datos
CREATE DATABASE ubico;
USE ubico;

-- Crear tabla bloques
CREATE TABLE bloques (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- Crear tabla tipos_aula
CREATE TABLE tipos_aula (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL
);

-- Crear tabla aulas
CREATE TABLE aulas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    capacidad INT NOT NULL,
    bloque_id INT,
    tipo_id INT,
    FOREIGN KEY (bloque_id) REFERENCES bloques(id),
    FOREIGN KEY (tipo_id) REFERENCES tipos_aula(id)
);

-- Insertar datos en la tabla bloques
INSERT INTO bloques (nombre) VALUES ('M'), ('EDC'), ('J'), ('CO'),('E'),('D');

-- Insertar datos en la tabla tipos_aula
INSERT INTO tipos_aula (nombre) VALUES ('Aula Común'), ('Salón de Informática'), ('Laboratorio');
