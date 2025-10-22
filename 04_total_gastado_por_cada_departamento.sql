-- Total gastado por cada departamento
SELECT id_departamento, SUM(monto) FROM gasto GROUP BY id_departamento;
