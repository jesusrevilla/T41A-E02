-- Listar todos los gastos con información del usuario, tipo de gasto y proveedor
SELECT 
    g.id_gasto,
    u.nombre_usuario,
    tg.nombre_tipo_gasto,
    d.nombre_departamento,
    p.nombre_proveedor,
    g.monto,
    g.fecha,
    c.nombre_cuenta
FROM gasto g
    INNER JOIN usuario u ON g.id_usuario = u.id_usuario
    INNER JOIN tipo_de_gasto tg ON g.id_tipo_gasto = tg.id_tipo_gasto
    INNER JOIN departamento d ON g.id_departamento = d.id_departamento
    INNER JOIN proveedor p ON g.rfc_proveedor = p.rfc_proveedor
    INNER JOIN cuenta c ON tg.id_cuenta = c.id_cuenta;
