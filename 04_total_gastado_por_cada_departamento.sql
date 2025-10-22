-- Total gastado por cada departamento
SELECT D.nombre_departamento AS Departamento,
    SUM(G.monto) AS Total_Gastado
FROM
    gasto G
JOIN
    departamento D ON G.id_departamento = D.id_departamento
GROUP BY
    D.nombre_departamento
ORDER BY
    Total_Gastado DESC;
