-- Listar todos los gastos con información del usuario, tipo de gasto y proveedor
SELECT
  g.id_gasto,
  g.monto,
  g.fecha,
  u.id_usuario,
  u.nombre_usuario,
  tdg.id_tipo_gasto,
  tdg.nombre_tipo_gasto,
  p.rfc_proveedor,
  p.nombre_proveedor
FROM gasto AS g
JOIN usuario AS u ON g.id_usuario = u.id_usuario
JOIN tipo_de_gasto AS tdg ON g.id_tipo_gasto = tdg.id_tipo_gasto
JOIN proveedor AS p ON g.rfc_proveedor = p.rfc_proveedor
ORDER BY g.fecha DESC, g.id_gasto;
