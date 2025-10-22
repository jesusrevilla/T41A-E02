-- Total de gastos por día
SELECT g.fecha, COUNT(g.id_gasto) AS total_gastos, SUM(g.monto) AS total_monto
FROM gasto g
GROUP BY g.fecha;

