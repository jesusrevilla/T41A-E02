-- Total de gastos por día
SELECT fecha::date AS dia,
    COUNT(*) AS numero_de_gastos,
    SUM(monto) AS total_diario
FROM gasto
GROUP BY dia
ORDER BY dia;
