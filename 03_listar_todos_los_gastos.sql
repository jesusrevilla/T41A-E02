-- Listar todos los gastos con información del usuario, tipo de gasto y proveedor

select id_gasto,use.nombre_usuario,tipogas.nombre_tipo_gasto,
dep.nombre_departamento,prov.nombre_proveedor,monto,fecha from gasto
join usuario use on use.id_usuario=gasto.id_gasto
join tipo_de_gasto tipogas on tipogas.id_tipo_gasto=gasto.id_tipo_gasto
join departamento dep on dep.id_departamento=gasto.id_departamento
join proveedor prov on prov.rfc_proveedor=gasto.rfc_proveedor
