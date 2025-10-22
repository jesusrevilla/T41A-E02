-- Total de gastos por día
SELECT d.nombre_departamento,g.id_gasto,SUM(g.monto) FROM gasto g INNER JOIN departamento d ON g.id_departamento=d.id_departamento  GROUP BY nombre_departamento,id_gasto;
