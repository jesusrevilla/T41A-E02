-- Total de gastos por día

SELECT 
    id_gasto,
    fecha,
    SUM(monto) AS total_gastado
FROM gasto
GROUP BY id_gasto
ORDER BY id_gasto;
