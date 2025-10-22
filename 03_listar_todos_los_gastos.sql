SELECT
    G.id_gasto AS ID_Gasto,
    G.fecha AS Fecha,
    G.monto AS Monto,
    U.nombre_usuario AS Usuario,
    TG.nombre_tipo_gasto AS Tipo_Gasto,
    P.nombre_proveedor AS Proveedor,
    P.rfc_proveedor AS RFC_Proveedor
FROM
    gasto G
JOIN
    usuario U ON G.id_usuario = U.id_usuario
JOIN
    tipo_de_gasto TG ON G.id_tipo_gasto = TG.id_tipo_gasto
JOIN
    proveedor P ON G.rfc_proveedor = P.rfc_proveedor
ORDER BY
    G.id_gasto;
