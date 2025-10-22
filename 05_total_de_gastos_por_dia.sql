-- Total de gastos por día
SELECT
  fecha,
  COALESCE(SUM(monto), 0) AS total_gastado,
  COUNT(id_gasto) AS cantidad_gastos
FROM gasto
GROUP BY fecha
ORDER BY fecha DESC;
