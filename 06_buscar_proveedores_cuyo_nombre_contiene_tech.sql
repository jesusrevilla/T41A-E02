-- Buscar proveedores cuyo nombre contiene 'Tech'
SELECT fecha, SUM(monto) AS total_por_dia FROM gasto GROUP BY fecha ORDER BY fecha;
