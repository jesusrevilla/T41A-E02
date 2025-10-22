-- Total gastado por cada departamento
select dep.nombre_departamento,sum(monto) from gasto
join departamento dep on dep.id_departamento=gasto.id_departamento
group by dep.nombre_departamento;
