-- Mostrar nombre de usuario en mayúsculas
SELECT 
    id_usuario,
    UPPER(nombre_usuario) as nombre_mayusculas
FROM usuario;