-- Total de gastos por día
SELECT 
    g.fecha,
    SUM(g.monto) AS total_por_dia
FROM gasto g
GROUP BY g.fecha
ORDER BY g.fecha ASC;
