-- Total gastado por cada departamento
SELECT d.nombre_departamento, SUM(g.monto) AS Gasto_Total FROM gasto AS g 
JOIN departamento AS d ON d.id_departamento=g.id_departamento
GROUP BY d.id_departamento; 
