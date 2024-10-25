-- Crear la base de datos
CREATE DATABASE ODS;
USE ODS;
-- Crear la tabla 'users' basada en tu estructura
CREATE TABLE users (
    ID INT AUTO_INCREMENT PRIMARY KEY,           -- Clave primaria auto-incremental
    name VARCHAR(60) NOT NULL,                   -- Nombres del usuario
    surnames VARCHAR(100) NOT NULL,              -- Apellidos del usuario
    identification_document CHAR(3) NOT NULL,    -- Tipo de documento (DNI, PAS, etc.)
    document_number VARCHAR(20) NOT NULL UNIQUE, -- Número de documento único
    email VARCHAR(120) NOT NULL UNIQUE,          -- Email del usuario único
    cellular CHAR(9),                            -- Celular (opcional)
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP, -- Fecha de registro automática
    activo BOOLEAN DEFAULT TRUE                 -- Estado lógico (activo/inactivo)
);
