-- Total de gastos por día
SELECT 
  UPPER(u.nombre_usuario) AS nombre_usuario,
  g.fecha,
  SUM(g.monto) AS total_gasto
FROM gasto g
JOIN usuario u ON g.id_usuario = u.id_usuario
GROUP BY g.fecha, u.nombre_usuario
ORDER BY g.fecha;
