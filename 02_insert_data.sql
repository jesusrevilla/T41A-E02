INSERT INTO usuario (nombre_usuario) VALUES
('José Méndez'),
('Ana Torres'),
('Luis Martínez'),
('Carla Gómez'),
('Miguel Sánchez');

INSERT INTO departamento (nombre_departamento) VALUES
('Finanzas'),
(2, 'Recursos Humanos'),
(3, 'TI'),
(4, 'Marketing'),
(5, 'Operaciones');

INSERT INTO cuenta (nombre_cuenta) VALUES
('Cuenta General'),
('Cuenta RH'),
('Cuenta TI'),
('Cuenta Marketing'),
('Cuenta Operativa');

INSERT INTO tipo_de_gasto (nombre_tipo_gasto, id_cuenta) VALUES
('Papelería', 1),
('Capacitación', 2),
('Software', 3),
('Publicidad', 4),
('Mantenimiento', 5);

INSERT INTO proveedor (rfc_proveedor, nombre_proveedor) VALUES
('XAXX010101000', 'Papelería Central'),
('BEBE020202111', 'Cursos RH'),
('TECH030303222', 'SoftTech'),
('MARK040404333', 'Publicidad MX'),
('FIX050505444', 'Servicios Técnicos');

INSERT INTO gasto (id_gasto, id_usuario, id_tipo_gasto, id_departamento, rfc_proveedor, monto, fecha) VALUES
(1, 1, 1, 1, 'XAXX010101000', 1500.00, '2025-10-01'),
(2, 2, 2, 2, 'BEBE020202111', 3200.00, '2025-10-02'),
(3, 3, 3, 3, 'TECH030303222', 5000.00, '2025-10-03'),
(4, 4, 4, 4, 'MARK040404333', 4200.00, '2025-10-04'),
(5, 5, 5, 5, 'FIX050505444', 2800.00, '2025-10-05');
``

