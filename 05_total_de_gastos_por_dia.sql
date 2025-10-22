SELECT
    fecha,
    SUM(monto) AS Total_Diario
FROM
    gasto
GROUP BY
    fecha
ORDER BY
    fecha;
