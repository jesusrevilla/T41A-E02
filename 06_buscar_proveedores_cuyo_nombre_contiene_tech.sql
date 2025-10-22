-- Total gastado por cada departamento 04
SELECT d.nombre_departamento AS departamento,
       COALESCE(SUM(g.monto), 0) AS total_gastado
FROM departamento d
LEFT JOIN gasto g ON g.id_departamento = d.id_departamento
GROUP BY d.id_departamento, d.nombre_departamento
ORDER BY d.nombre_departamento; 
