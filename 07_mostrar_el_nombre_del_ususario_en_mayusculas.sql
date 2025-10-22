-- Mostrar nombre de usuario en mayúsculas
-- Mostrar todos los usuarios con nombre en mayúsculas
SELECT 
    id_usuario,
    UPPER(nombre_usuario) AS nombre_usuario_mayusculas,
    id_departamento
FROM usuario
ORDER BY nombre_usuario_mayusculas;
