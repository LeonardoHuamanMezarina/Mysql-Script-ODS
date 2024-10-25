-------------------------------------------------------------------
-- Insertar usuarios
INSERT INTO usuario (nombre, correo) VALUES 
('Juan Pérez', 'juan.perez@gmail.com'),
('Ana López', 'ana.lopez@hotmail.com');

-- Insertar asesores
INSERT INTO asesor (nombre) VALUES 
('Carlos Sánchez'),
('María Ramírez');

-- Insertar preguntas
INSERT INTO pregunta (id_usuario, pregunta, id_asesor, respuesta, estado_consulta) VALUES 
(1, '¿Cuál es el proceso de registro?', 1, 'Puede registrarse en la página principal.', 'A'),
(2, '¿Cuáles son los horarios de atención?', 2, 'De lunes a viernes de 9 am a 6 pm.', 'A');


-------------------------------------------------------------------


-------------------------------------------------------------------
-- Listar todas las preguntas activas
SELECT p.id_pregunta, u.nombre AS usuario, p.pregunta, p.fecha_pregunta, 
       a.nombre AS asesor, p.respuesta, p.estado_consulta
FROM pregunta p
JOIN usuario u ON p.id_usuario = u.id_usuario
LEFT JOIN asesor a ON p.id_asesor = a.id_asesor
WHERE p.estado_consulta = 'A';

-- Listar todas las preguntas con estado (activas e inactivas)
SELECT * FROM pregunta;

-------------------------------------------------------------------


-------------------------------------------------------------------
-- Actualizar el estado de una consulta (cambio de asesor y respuesta)
UPDATE pregunta
SET id_asesor = 2, respuesta = 'Estamos revisando su caso.'
WHERE id_pregunta = 1;

-- Actualizar el correo de un usuario
UPDATE usuario
SET correo = 'juan.nuevo@gmail.com'
WHERE id_usuario = 1;

-------------------------------------------------------------------




-------------------------------------------------------------------

-- Eliminar físicamente un usuario (y sus preguntas asociadas por ON DELETE CASCADE)
DELETE FROM usuario WHERE id_usuario = 2;

-- Eliminar físicamente un asesor (las preguntas quedarán sin asesor por ON DELETE SET NULL)
DELETE FROM asesor WHERE id_asesor = 1;

-------------------------------------------------------------------


-------------------------------------------------------------------

-- Marcar una pregunta como inactiva (eliminación lógica)
UPDATE pregunta
SET estado_consulta = 'I'
WHERE id_pregunta = 1;

-------------------------------------------------------------------
