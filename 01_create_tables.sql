CREATE TABLE departamento (
  id_departamento SERIAL PRIMARY KEY NOT NULL,
  nombre_departamento VARCHAR(50) NOT NULL
  );

CREATE TABLE usuario (
  id_usuario SERIAL PRIMARY KEY NOT NULL,
  nombre_usuario VARCHAR NOT NULL,
  id_departamento INT,
  FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
  );

CREATE TABLE cuenta(
  id_cuenta SERIAL PRIMARY KEY NOT NULL,
  nombre_cuenta VARCHAR(50) NOT NULL
);

CREATE TABLE tipo_de_gasto(
  id_tipo_gasto SERIAL PRIMARY KEY NOT NULL,
  nombre_tipo_gasto VARCHAR(30) NOT NULL,
  id_cuenta INT,
  FOREIGN KEY (id_cuenta) REFERENCES cuenta(id_cuenta)
);

CREATE TABLE proveedor(
  rfc_proveedor VARCHAR(20) PRIMARY KEY NOT NULL,
  nombre_proveedor VARCHAR(30) NOT NULL
);

CREATE TABLE gasto(
  id_gasto SERIAL PRIMARY KEY,
  id_usuario INT NOT NULL,
  id_tipo_gasto INT NOT NULL,
  id_departamento INT NOT NULL,
  rfc_proveedor VARCHAR(20) NOT NULL,
  monto DECIMAL(10,2) NOT NULL,
  fecha DATE NOT NULL,
  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
  FOREIGN KEY (id_tipo_gasto) REFERENCES tipo_gasto(id_tipo_gasto),
  FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento),
  FOREIGN KEY (rfc_proveedor) REFERENCES proveedor(rfc_proveedor)
);
