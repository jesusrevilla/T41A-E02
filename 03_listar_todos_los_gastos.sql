-- Listar todos los gastos con información del usuario, tipo de gasto y proveedor
SELECT usuario.*, tipo_de_gasto.*, proveedor.* FROM gasto JOIN usuario ON gasto.id_usuario = usuario.id_usuario JOIN tipo_de_gasto ON gasto.id_tipo_gasto = tipo_de_gasto.id_tipo_gasto JOIN proveedor ON gasto.rfc_proveedor = proveedor.rfc_proveedor;
