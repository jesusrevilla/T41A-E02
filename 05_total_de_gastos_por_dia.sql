-- Total de gastos por día
SELECT
    fecha,
    SUM(monto) AS total_diario,
    COUNT(id_gasto) AS numero_de_gastos
FROM
    gasto
GROUP BY
    fecha
ORDER BY
    fecha;
