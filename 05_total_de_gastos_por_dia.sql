-- Total de gastos por día
SELECT fecha AS dia,
    SUM(monto) AS Total_diario
FROM
    gasto
GROUP BY
    fecha
ORDER BY
    fecha;
