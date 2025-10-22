-- Listar todos los gastos con información del usuario, tipo de gasto y proveedor


SELECT
  g.id_gasto,
  g.fecha,
  u.id_usuario,
  u.nombre_usuario,
  d.id_departamento,
  d.nombre_departamento,
  tg.id_tipo_gasto,
  tg.nombre_tipo_gasto,
  c.id_cuenta,
  c.nombre_cuenta,
  p.rfc_proveedor,
  p.nombre_proveedor,
  g.monto
FROM gasto g
JOIN usuario u ON g.id_usuario = u.id_usuario
JOIN departamento d ON g.id_departamento = d.id_departamento
JOIN tipo_gasto tg ON g.id_tipo_gasto = tg.id_tipo_gasto
JOIN cuenta c ON tg.id_cuenta = c.id_cuenta
JOIN proveedor p ON g.rfc_proveedor = p.rfc_proveedor
ORDER BY g.fecha, g.id_gasto;
