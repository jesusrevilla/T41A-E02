-- Mostrar nombre de usuario en mayúsculas
SELECT UPPER(nombre_usuario) AS nombre_usuario_mayusculas, id_usuario
  FROM usuario
  ORDER BY id_usuario;
