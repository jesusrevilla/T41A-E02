-- Total de gastos por día
SELECT 
    fecha,
    SUM(monto) as total_dia,
    COUNT(*) as cantidad_gastos
FROM gasto
GROUP BY fecha
ORDER BY fecha DESC;