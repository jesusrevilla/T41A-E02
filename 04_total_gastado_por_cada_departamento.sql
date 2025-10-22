-- Total gastado por cada departamento
SELECT d.nombre_departamento AS departamento, g.monto AS total_gastado 
FROM gasto g
JOIN departamento d ON g.id_departamento=d.id_departamento
ORDER BY departamento;
