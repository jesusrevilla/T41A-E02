SELECT
    G.fecha,
    SUM(G.monto) AS total_gastado_por_dia
FROM
    gasto G
GROUP BY
    G.fecha
ORDER BY
    G.fecha ASC;
