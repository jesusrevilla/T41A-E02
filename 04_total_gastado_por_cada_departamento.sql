-- Total gastado por cada departamento
SELECT gasto.id_departamento, gasto.monto FROM departamento depa JOIN gasto ON depa.id_departamento = gasto.id_departamento;
