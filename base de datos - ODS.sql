-- 1. Crear la base de datos
CREATE DATABASE gestion_preguntas;
USE gestion_preguntas;

-- 2. Crear la tabla de usuarios (clientes que realizan las consultas)
CREATE TABLE usuario (
    id_usuario INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL,
    correo VARCHAR(120) NOT NULL UNIQUE
);

-- 3. Crear la tabla de asesores
CREATE TABLE asesor (
    id_asesor INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(60) NOT NULL
);

-- 4. Crear la tabla de preguntas (consultas)
CREATE TABLE pregunta (
    id_pregunta INT AUTO_INCREMENT PRIMARY KEY,
    id_usuario INT NOT NULL,
    pregunta VARCHAR(400) NOT NULL,
    fecha_pregunta TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    id_asesor INT,
    respuesta VARCHAR(500),
    estado_consulta CHAR(1) DEFAULT 'A',
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario) ON DELETE CASCADE,
    FOREIGN KEY (id_asesor) REFERENCES asesor(id_asesor) ON DELETE SET NULL
);
