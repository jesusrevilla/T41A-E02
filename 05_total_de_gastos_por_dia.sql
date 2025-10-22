-- Total de gastos registrados por día
SELECT 
    fecha,
    SUM(monto) AS total_dia
FROM gasto
GROUP BY fecha
ORDER BY fecha;
