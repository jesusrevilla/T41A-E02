-- Total gastado por cada departamento
SELECT
  d.id_departamento,
  d.nombre_departamento,
  COALESCE(SUM(g.monto), 0) AS total_gastado,
  COUNT(g.id_gasto) AS cantidad_gastos
FROM departamento AS d
LEFT JOIN gasto AS g ON g.id_departamento = d.id_departamento
GROUP BY d.id_departamento, d.nombre_departamento
ORDER BY total_gastado DESC, d.id_departamento;
