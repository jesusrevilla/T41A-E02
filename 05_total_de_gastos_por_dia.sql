-- Total de gastos por día
SELECT fecha, COUNT(*) AS numero_de_gastos, SUM(monto) AS total_dia FROM gasto
GROUP BY fecha;
