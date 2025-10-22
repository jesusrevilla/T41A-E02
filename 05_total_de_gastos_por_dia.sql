SELECT
    fecha AS Día,
    SUM(monto) AS Total_Diario
FROM
    gasto
GROUP BY
    fecha 
ORDER BY
    fecha;
