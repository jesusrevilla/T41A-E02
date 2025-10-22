-- Mostrar nombre de usuario en mayúsculas

SELECT
    p.nombre_proveedor,
    g.monto,
    g.fecha
FROM gasto g
JOIN proveedor p ON g.rfc_proveedor = p.rfc_proveedor
ORDER BY g.fecha DESC;
