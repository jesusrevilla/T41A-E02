-- Total gastado por cada departamento
SELECT departamento.nombre_departamento, SUM(gasto.monto) AS total_gastado
FROM gasto JOIN departamento ON gasto.id_departamento = departamento.id_departamento 
GROUP BY departamento.nombre_departamento;
