-- Total de gastos por día
SELECT fecha AS fecha,
    SUM(monto) AS Total_diario
FROM
    gasto
GROUP BY
    fecha
ORDER BY
    fecha;
