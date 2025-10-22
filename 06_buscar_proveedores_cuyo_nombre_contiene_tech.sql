
SELECT
    p.rfc_proveedor,
    p.nombre_proveedor
FROM
    proveedor p
WHERE
    p.nombre_proveedor ILIKE '%tech%';
