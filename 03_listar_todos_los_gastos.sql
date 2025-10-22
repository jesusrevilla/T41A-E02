-- Listar todos los gastos con información del usuario, tipo de gasto y proveedor
SELECT g.id_gasto, u.nombre_usuario, tg.nombre_tipo_gasto, p.nombre_proveedor  FROM gasto AS g
JOIN usuario AS u ON g.id_usuario=u.id_usuario
JOIN tipo_de_gasto AS tg ON tg.id_tipo_gasto=g.id_tipo_gasto
JOIN proveedor AS p ON p.rfc_proveedor=g.rfc_proveedor; 
