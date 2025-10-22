-- Total de gastos por día

SELECT
  g.fecha,
  COUNT(*) AS num_gastos,
  COALESCE(SUM(g.monto), 0) AS total_gastado
FROM gasto g
GROUP BY g.fecha
ORDER BY g.fecha;
