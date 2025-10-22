-- Total de gastos por día
SELECT id_gasto,fecha,SUM(monto) FROM gasto GROUP BY fecha,id_gasto ORDER BY fecha;
