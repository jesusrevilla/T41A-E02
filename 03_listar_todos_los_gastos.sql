-- Listar todos los gastos con información del usuario, tipo de gasto y proveedor
SELECT
    g.id_gasto,
    g.fecha,
    g.monto,
    u.nombre_usuario,
    t.nombre_tipo_gasto,
    p.nombre_proveedor
FROM
    gasto g
JOIN
    usuario u ON g.id_usuario = u.id_usuario
JOIN
    tipo_de_gasto t ON g.id_tipo_gasto = t.id_tipo_gasto
JOIN
    proveedor p ON g.rfc_proveedor = p.rfc_proveedor
ORDER BY
    g.id_gasto;
