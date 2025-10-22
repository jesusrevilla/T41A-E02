-- Total de gastos por día
select b.fecha, sum(a.monto) as total_dia
  from gasto a
  join gasto b
  on b.fecha =  a.fecha
  group by b.fecha;
