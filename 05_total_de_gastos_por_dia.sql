-- Total de gastos por día
SELECT g.fecha::date AS fecha,
       COUNT(*) AS cantidad_gastos,
       COALESCE(SUM(g.monto), 0) AS total_del_dia
FROM gasto g
GROUP BY g.fecha::date
ORDER BY g.fecha::date;
