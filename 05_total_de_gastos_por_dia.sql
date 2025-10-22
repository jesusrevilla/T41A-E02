-- Total de gastos por día
SELECT gasto.fecha, COUNT(gasto.id_gasto) AS total_gastos, SUM(gasto.monto) AS total_monto
FROM gasto GROUP BY gasto.fecha;
