-- Total de gastos por día
SELECT
    fecha,
    SUM(monto) AS total_diario
FROM
    gasto
GROUP BY
    fecha
ORDER BY
    fecha;
