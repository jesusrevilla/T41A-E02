SELECT
    D.nombre_departamento,
    SUM(G.monto) AS total_gastado
FROM
    gasto G
JOIN
    departamento D ON G.id_departamento = D.id_departamento
GROUP BY
    D.nombre_departamento
ORDER BY
    total_gastado DESC;
