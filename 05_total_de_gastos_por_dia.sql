-- Total de gastos por día
SELECT d.nombre_departamento, g.fecha,SUM(g.monto) AS Gasto_Total FROM gasto AS g 
JOIN departamento AS d ON d.id_departamento=g.id_departamento
GROUP BY d.id_departamento, g.fecha;
