-- Total gastado por cada departamento
SELECT 
    d.nombre_departamento,
    COUNT(g.id_gasto) as total_gastos,
    SUM(g.monto) as monto_total
FROM departamento d
    LEFT JOIN gasto g ON d.id_departamento = g.id_departamento
GROUP BY d.id_departamento, d.nombre_departamento;
