-- Usuarios
INSERT INTO usuario (nombre_usuario) VALUES
  ('Ana López'),
  ('Carlos Díaz'),
  ('María Torres');

-- Departamentos
INSERT INTO departamento (nombre_departamento) VALUES
  ('Finanzas'),
  ('TI'),
  ('Ventas');

-- Cuentas
INSERT INTO cuenta (nombre_cuenta) VALUES
  ('Gastos Operativos'),
  ('Servicios'),
  ('Viajes');

-- Proveedores (incluye uno con 'Tech' para la consulta 06)
INSERT INTO proveedor (rfc_proveedor, nombre_proveedor) VALUES
  ('ABC010203XYZ', 'Tech Solutions SA de CV'),
  ('DEF040506LMN', 'Papelería Central'),
  ('GHI070809OPQ', 'Transporte Express');

-- Tipos de gasto (relacionados con cuentas)
INSERT INTO tipo_de_gasto (nombre_tipo_gasto, id_cuenta) VALUES
  ('Software', 2),    -- Servicios
  ('Papelería', 1),   -- Gastos Operativos
  ('Viáticos', 3);    -- Viajes

-- Gastos (al menos uno para que 03 tenga resultados)
INSERT INTO gasto (id_usuario, id_tipo_gasto, id_departamento, rfc_proveedor, monto, fecha) VALUES
  (1, 1, 2, 'ABC010203XYZ', 1500.00, CURRENT_DATE - INTERVAL '2 day'),
  (2, 2, 1, 'DEF040506LMN',  250.00, CURRENT_DATE - INTERVAL '1 day'),
  (3, 3, 3, 'GHI070809OPQ', 3200.00, CURRENT_DATE);
