-- Total de gastos por día
SELECT 
  fecha,
  SUM(monto) AS total_gasto_por_dia
  SUM(monto) AS total_gasto_por_dia,
  Count(*)
FROM gasto
GROUP BY fecha
ORDER BY fecha;
