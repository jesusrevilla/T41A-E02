

INSERT INTO departamento (nombre_departamento)
VALUES ('Finanzas'), ('Recursos Humanos'), ('TI');

INSERT INTO usuario (nombre_usuario, id_departamento)
VALUES ('Ana López', 1), ('Carlos Díaz', 2), ('María Torres', 3);

INSERT INTO cuenta (nombre_cuenta)
VALUES ('Gastos Operativos'), ('Gastos Administrativos'), ('Mantenimiento');

INSERT INTO tipo_de_gasto (nombre_tipo_gasto, id_cuenta)
VALUES ('Papelería', 1),
       ('Servicios Profesionales', 2),
       ('Reparaciones', 3);

INSERT INTO proveedor (rfc_proveedor, nombre_proveedor)
VALUES ('ABC123456T78', 'Papelería San Luis'),
       ('XYZ987654Q12', 'Consultores MX'),
       ('LMN456789H34', 'Mantenimiento Rápido');

INSERT INTO gasto (id_usuario, id_tipo_gasto, id_departamento, rfc_proveedor, monto, fecha)
VALUES
(1, 1, 1, 'ABC123456T78', 850.00, '2025-10-01'),
(2, 2, 2, 'XYZ987654Q12', 2000.00, '2025-10-03'),
(3, 3, 3, 'LMN456789H34', 1200.00, '2025-10-04'),
(1, 1, 1, 'ABC123456T78', 150.00, '2025-10-10');
