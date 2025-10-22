--183213
CREATE TABLE usuario(
  id_usuario SERIAL PRIMARY KEY,
  nombre_usuario VARCHAR(50) NOT NULL
);

CREATE TABLE departamento(
  id_departamento SERIAL PRIMARY KEY,
  nombre_departamento VARCHAR(50) NOT NULL
);

CREATE TABLE cuenta(
  id_cuenta SERIAL PRIMARY KEY,
  nombre_cuenta VARCHAR(50) NOT NULL
);

CREATE TABLE tipo_de_gasto(
  id_tipo_gasto SERIAL PRIMARY KEY,
  nombre_tipo_gasto VARCHAR(50) NOT NULL,
  id_cuenta INT,
  FOREIGN KEY(id_cuenta) REFERENCES cuenta(id_cuenta)
);

CREATE TABLE proveedor(
  rfc_proveedor VARCHAR(20) PRIMARY KEY,
  nombre_proveedor VARCHAR(50) NOT NULL
);

CREATE TABLE gasto(
  id_gasto SERIAL PRIMARY KEY,
  id_usuario INT,
  FOREIGN KEY(id_usuario) REFERENCES usuario(id_usuario),
  id_tipo_gasto INT,
  FOREIGN KEY(id_tipo_gasto) REFERENCES tipo_de_gasto(id_tipo_gasto),
  id_departamento INT,
  FOREIGN KEY(id_departamento) REFERENCES departamento(id_departamento),
  rfc_proveedor VARCHAR(20),
  FOREIGN KEY(rfc_proveedor) REFERENCES proveedor(rfc_proveedor),
  monto INT NOT NULL,
  fecha TIMESTAMP NOT NULL 
);
