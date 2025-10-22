-- Listar todos los gastos con información del usuario, tipo de gasto y proveedor
SELECT u.id_usuario,u.nombre_usuario,t.nombre_tipo_gasto,p.nombre_proveedor FROM gasto g INNER JOIN usuario u ON g.id_usuario=u.id_usuario
INNER JOIN tipo_de_gasto t ON g.id_tipo_gasto=t.id_tipo_gasto INNER JOIN proveedor p ON g.rfc_proveedor=p.rfc_proveedor;
