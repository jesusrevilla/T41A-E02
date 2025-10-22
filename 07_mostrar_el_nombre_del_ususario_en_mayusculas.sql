SELECT 
    u.nombre_usuario,
    d.nombre_departamento
FROM usuario u
JOIN departamento d ON u.id_departamento = d.id_departamento
ORDER BY u.nombre_usuario;
