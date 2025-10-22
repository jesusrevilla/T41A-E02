-- Total de gastos por día
SELECT 
    fecha,
    TO_CHAR(fecha, 'Day') AS nombre_dia,
    SUM(monto) AS total_gastos
FROM 
    gasto
GROUP BY 
    fecha
ORDER BY 
    fecha;
