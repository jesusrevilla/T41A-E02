SELECT
    fecha AS dia,
    SUM(monto) AS total_diario,
    SUM(monto) AS total_diario_rep
FROM
    gasto
GROUP BY
    fecha
ORDER BY
    fecha;
