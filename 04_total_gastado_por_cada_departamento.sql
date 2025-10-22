-- Total gastado por cada departamento
SELECT d.nombre_departamento,
    COALESCE(SUM(g.monto), 0) AS total_gastado
FROM departamento d
LEFT JOIN
    gasto g ON d.id_departamento = g.id_departamento
GROUP BY d.nombre_departamento;
