
SELECT
    UPPER(u.nombre_usuario) AS nombre_usuario_mayusculas, -- Nombre del usuario en mayúsculas (Columna 0 en el test)
    g.id_gasto
FROM
    gasto g
JOIN usuario u ON g.id_usuario = u.id_usuario
ORDER BY
    g.id_gasto;
