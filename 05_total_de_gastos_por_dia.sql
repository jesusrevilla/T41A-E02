-- Total de gastos por día
SELECT ga.fecha, SUM(g.monto) AS Total_Por_Dia
FROM gasto g
JOIN gasto ga ON ga.fecha =  g.fecha
GROUP BY ga.fecha;
