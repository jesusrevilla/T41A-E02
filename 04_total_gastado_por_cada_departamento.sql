-- Total gastado por cada departamento
SELECT d.nombre_departamento,SUM(g.monto) FROM gasto g INNER JOIN departamento d ON g.id_departamento=d.id_departamento  GROUP BY nombre_departamento;
