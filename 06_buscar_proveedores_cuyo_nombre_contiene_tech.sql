-- Buscar proveedores cuyo nombre contiene 'Tech'
SELECT
  nombre_proveedor
FROM proveedor
WHERE nombre_proveedor ILIKE '%tech%'
ORDER BY nombre_proveedor;
