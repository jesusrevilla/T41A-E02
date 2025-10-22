-- Total gastado por cada departamento
select dep.nombre_departamento, sum(gs.monto) as total_gastado
  from gasto gs
  join departamento dep
  on gs.id_departamento = dep.id_departamento
  group by dep.nombre_departamento;
