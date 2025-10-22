-- Total de gastos por día
SELECT g.fecha, SUM(g.monto) AS total_gastado
  FROM gasto g
  GROUP BY g.fecha
  ORDER BY g.fecha;
