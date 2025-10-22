-- Total gastado por cada departamento
SELECT id_departamento, SUM(monto) FROM gastos GROUP BY id_departamento;
