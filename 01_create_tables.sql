CREATE TABLE usuario (
  id_usuario INT PRIMARY KEY,
  nombre_usuario VARCHAR(50)
);

CREATE TABLE departamento (
  id_departamento INT PRIMARY KEY,
  nombre_departamento VARCHAR(50)
);

CREATE TABLE proveedor (
  rfc_proveedor VARCHAR(13) PRIMARY KEY,
  nombre_proveedor VARCHAR(50)
);

CREATE TABLE cuenta (
  id_cuenta INT PRIMARY KEY,
  nombre_cuenta VARCHAR(50)
);

CREATE TABLE tipo_de_gasto (
  id_tipo_gasto INT PRIMARY KEY,
  nombre_tipo_gasto VARCHAR(50),
  id_cuenta INT,
  FOREIGN KEY (id_cuenta) REFERENCES cuenta(id_cuenta)
);

CREATE TABLE gasto (
  id_gasto INT PRIMARY KEY,
  id_usuario INT,
  id_departamento INT,
  id_tipo_gasto INT,
  rfc_proveedor VARCHAR(13),
  monto INT,
  fecha DATE,
  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
  FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento),
  FOREIGN KEY (id_tipo_gasto) REFERENCES tipo_de_gasto(id_tipo_gasto),
  FOREIGN KEY (rfc_proveedor) REFERENCES proveedor(rfc_proveedor)
);
