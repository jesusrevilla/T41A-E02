-- Mostrar nombre de usuario en mayúsculas
-- Mostrar todos los usuarios con nombre en mayúsculas
-- Mostrar el nombre del usuario en mayúsculas

SELECT 
    id_usuario,
    UPPER(nombre_usuario) AS nombre_usuario_mayusculas
FROM usuario;
