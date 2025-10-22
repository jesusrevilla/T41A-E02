-- Total gastado por cada departamento
SELECT  
  d.nombre_departamento,
  SUM(g.monto) as total_gastado
  FROM gasto g
  JOIN departamento d ON g.id_departamento = d.id_departamento
  GROUP BY d.id_departamento, d.nombre_departamento; 
