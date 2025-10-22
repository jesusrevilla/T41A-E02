-- Total gastado por cada departamento
SELECT
  d.nombre_departamento AS departamento,
  COALESCE(SUM(g.monto), 0) AS total_gastado
FROM departamento AS d
LEFT JOIN gasto AS g
  ON g.id_departamento = d.id_departamento
GROUP BY d.id_departamento, d.nombre_departamento
ORDER BY total_gastado DESC, departamento;
