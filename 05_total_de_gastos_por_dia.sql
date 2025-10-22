-- Total de gastos por día
SELECT
    g.fecha,
    COUNT(g.id_gasto) AS cantidad_gastos,
    SUM(g.monto) AS total_gastado
FROM
    gasto g
GROUP BY
    g.fecha
ORDER BY
    g.fecha;
