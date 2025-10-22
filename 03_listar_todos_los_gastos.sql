SELECT 
    g.id_gasto,
    g.fecha,
    u.nombre_usuario,
    d.nombre_departamento,
    tg.nombre_tipo_gasto,
    c.nombre_cuenta,
    p.nombre_proveedor,
    g.monto
FROM gasto g
JOIN usuario u ON g.id_usuario = u.id_usuario
JOIN departamento d ON g.id_departamento = d.id_departamento
JOIN tipo_de_gasto tg ON g.id_tipo_gasto = tg.id_tipo_gasto
JOIN cuenta c ON tg.id_cuenta = c.id_cuenta
JOIN proveedor p ON g.rfc_proveedor = p.rfc_proveedor
ORDER BY g.fecha DESC;
