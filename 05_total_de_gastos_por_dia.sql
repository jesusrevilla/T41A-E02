-- Total de gastos por día
SELECT id_gasto, fecha, SUM(monto) FROM gasto 
GROUP BY fecha; 
