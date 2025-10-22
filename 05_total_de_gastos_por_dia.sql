-- Total de gastos por día
SELECT 
    fecha,
    COUNT(*) as cantidad_gastos,
    SUM(monto) as total_gastado
FROM gasto
GROUP BY fecha
ORDER BY fecha;
