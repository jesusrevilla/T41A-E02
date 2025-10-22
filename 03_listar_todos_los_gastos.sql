
SELECT
    g.id_gasto,
    g.fecha,
    g.monto,
    u.nombre_usuario,
    tg.nombre_tipo_gasto,
    c.nombre_cuenta,
    d.nombre_departamento,
    p.nombre_proveedor,
    p.rfc_proveedor
FROM
    gasto g
JOIN usuario u ON g.id_usuario = u.id_usuario
JOIN tipo_de_gasto tg ON g.id_tipo_gasto = tg.id_tipo_gasto
JOIN cuenta c ON tg.id_cuenta = c.id_cuenta
JOIN departamento d ON g.id_departamento = d.id_departamento
JOIN proveedor p ON g.rfc_proveedor = p.rfc_proveedor
ORDER BY
    g.fecha DESC, g.id_gasto DESC;
