-- Total gastado por cada departamento

SELECT
    c.nombre_cuenta,
    SUM(g.monto) AS total_gastado
FROM gasto g
JOIN tipo_de_gasto tg ON g.id_tipo_gasto = tg.id_tipo_gasto
JOIN cuenta c ON tg.id_cuenta = c.id_cuenta
GROUP BY c.nombre_cuenta;
