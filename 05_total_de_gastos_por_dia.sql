-- Total de gastos por día
SELECT 
  MIN(id_gasto) AS id_gasto,
  fecha,
  SUM(monto) AS total_por_dia
FROM gasto
GROUP BY fecha
ORDER BY fecha;
