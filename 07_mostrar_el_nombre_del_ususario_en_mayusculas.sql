-- Mostrar nombre de usuario en mayúsculas

SELECT UPPER(nombre_usuario) AS nombre_en_mayusculas
FROM usuario
ORDER BY nombre_en_mayusculas;
