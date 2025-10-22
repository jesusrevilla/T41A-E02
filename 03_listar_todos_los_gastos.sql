-- Listar todos los gastos con información del usuario, tipo de gasto y proveedor
select * from gasto gs
  join usuario us on gs.id_usuario = us.id_usuario
  join tipo_de_gasto tg on gs.id_tipo_gasto = tg.id_tipo_gasto
  join proveedor pv on gs.rfc_proveedor = gs.rfc_proveedor;
