-- Listar todos los gastos con información del usuario, tipo de gasto y proveedor.
SELECT
    G.id_gasto,
    G.fecha,
    G.monto,
    U.nombre_usuario,
    TDG.nombre_tipo_gasto,
    P.nombre_proveedor,
    D.nombre_departamento
FROM
    gasto G
JOIN
    usuario U ON G.id_usuario = U.id_usuario
JOIN
    tipo_de_gasto TDG ON G.id_tipo_gasto = TDG.id_tipo_gasto
JOIN
    proveedor P ON G.rfc_proveedor = P.rfc_proveedor
JOIN
    departamento D ON G.id_departamento = D.id_departamento
ORDER BY
    G.fecha DESC;
