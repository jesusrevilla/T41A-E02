CREATE TABLE usuarios (
  id_usuario INT PRIMARY KEY,
  nombre_usuario VARCHAR(50)
);

CREATE TABLE departamentos (
  id_departamento INT PRIMARY KEY,
  nombre_departamento VARCHAR(50)
);

CREATE TABLE proveedores (
  rfc_proveedor VARCHAR(13) PRIMARY KEY,
  nombre_proveedor VARCHAR(50)
);

CREATE TABLE cuentas (
  id_cuenta INT PRIMARY KEY,
  nombre_cuenta VARCHAR(50)
);

CREATE TABLE tipos_gasto (
  id_tipo_gasto INT PRIMARY KEY,
  nombre_tipo_gasto VARCHAR(50),
  id_cuenta INT,
  FOREIGN KEY (id_cuenta) REFERENCES cuentas(id_cuenta)
);

CREATE TABLE gastos (
  id_gasto INT PRIMARY KEY,
  id_usuario INT,
  id_departamento INT,
  id_tipo_gasto INT,
  rfc_proveedor VARCHAR(13),
  monto INT,
  fecha DATE,
  FOREIGN KEY (id_usuario) REFERENCES usuarios(id_usuario),
  FOREIGN KEY (id_departamento) REFERENCES departamentos(id_departamento),
  FOREIGN KEY (id_tipo_gasto) REFERENCES tipos_gasto(id_tipo_gasto),
  FOREIGN KEY (rfc_proveedor) REFERENCES proveedores(rfc_proveedor)
);
