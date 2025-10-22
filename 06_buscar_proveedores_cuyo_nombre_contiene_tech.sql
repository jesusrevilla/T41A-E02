-- 06_buscar_proveedores_cuyo_nombre_contiene_tech.sql
-- Add comment to SQL file for clarity. Buscar proveedores cuyo nombre contenga 'tech'
SELECT
    p.rfc_proveedor,
    p.nombre_proveedor
FROM
    proveedor p
WHERE
    p.nombre_proveedor ILIKE '%tech%';
-- Si no se usa PostgreSQL, usar: WHERE UPPER(p.nombre_proveedor) LIKE UPPER('%tech%');
