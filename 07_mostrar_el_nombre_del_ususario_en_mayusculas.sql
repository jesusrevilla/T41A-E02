-- Mostrar el nombre del usuario en mayúsculas
SELECT 
    UPPER(nombre_usuario) AS nombre_usuario_mayusculas
FROM usuario
ORDER BY nombre_usuario_mayusculas;
