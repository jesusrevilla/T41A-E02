-- 05_total_de_gastos_por_dia.sql
-- Update 05_total_de_gastos_por_dia.sql
SELECT
    g.fecha,
    SUM(g.monto) AS total_gastado_por_dia
FROM
    gasto g
GROUP BY
    g.fecha
ORDER BY
    g.fecha DESC;
