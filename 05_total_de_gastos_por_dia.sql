-- Total de gastos por día

SELECT 
    fecha,
    SUM(monto) AS total_gastado
FROM gasto
GROUP BY fecha
ORDER BY fecha;
