-- Total de gastos por día
SELECT
    fecha,
    COUNT(id_gasto) AS cantidad_gastos,
    SUM(monto) AS total_gastado
FROM gasto
GROUP BY fecha
ORDER BY fecha;
