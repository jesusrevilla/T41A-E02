-- Buscar proveedores cuyo nombre contiene 'Tech' 06
SELECT rfc_proveedor, nombre_proveedor
FROM proveedor
WHERE LOWER(nombre_proveedor) LIKE '%tech%'
ORDER BY nombre_proveedor;
