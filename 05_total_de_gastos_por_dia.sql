-- Total de gastos por día
SELECT g.fecha,
       SUM(g.monto) AS total_gastado,
       SUM(g.monto) AS total_columna_extra
FROM gasto g
GROUP BY g.fecha
ORDER BY g.fecha;
