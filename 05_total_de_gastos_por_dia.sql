-- Totales por día (fecha, cantidad_de_gastos, total_del_dia)
SELECT g.fecha::date AS fecha,
       COUNT(*) AS cantidad_gastos,
       COALESCE(SUM(g.monto), 0) AS total_del_dia
FROM gasto g
GROUP BY g.fecha::date
ORDER BY g.fecha::date;

