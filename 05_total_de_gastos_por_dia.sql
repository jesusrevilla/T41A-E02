-- Total de gastos por día
SELECT fecha AS Día, SUM(monto) AS Ttal_diario
FROM gasto GROUP BY fecha ORDER BY fecha;
