-- Total de gastos por día
select fecha,sum(monto) from gasto
group by fecha;
