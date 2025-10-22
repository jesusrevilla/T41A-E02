-- Total de gastos por día
-- Update 05_total_de_gastos_por_dia.sql
-- Esta consulta muestra el número de gastos y el monto total por día.
SELECT
    fecha,
    COUNT(id_gasto) AS numero_de_gastos,
    SUM(monto) AS total_diario
FROM gasto
GROUP BY fecha
ORDER BY fecha;
