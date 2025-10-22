SELECT
    fecha::date AS Día,
    SUM(monto) AS Total_Diario
FROM
    gasto
GROUP BY
    Día
ORDER BY
    Día;
