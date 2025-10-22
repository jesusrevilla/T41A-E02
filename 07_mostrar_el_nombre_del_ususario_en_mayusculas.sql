-- Mostrar nombre de usuario en mayúsculas
SELECT 
  id_usuario,
  UPPER(nombre_usuario) AS nombre_en_mayusculas
FROM usuario;

