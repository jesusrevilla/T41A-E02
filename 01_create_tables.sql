CREATE TABLE usuario (
  id_usuario SERIAL PRIMARY KEY,
  nombre_usuario VARCHAR(100) NOT NULL
);

CREATE TABLE departamento (
  id_departamento SERIAL PRIMARY KEY,
  nombre_departamento VARCHAR(100) NOT NULL
);

CREATE TABLE cuenta (
  id_cuenta SERIAL PRIMARY KEY,
  nombre_cuenta VARCHAR(100) NOT NULL
);

CREATE TABLE proveedor (
  rfc_proveedor VARCHAR(13) PRIMARY KEY,
  nombre_proveedor VARCHAR(150) NOT NULL
);

CREATE TABLE tipo_de_gasto (
  id_tipo_gasto SERIAL PRIMARY KEY,
  nombre_tipo_gasto VARCHAR(100) NOT NULL,
  id_cuenta INTEGER NOT NULL REFERENCES cuenta(id_cuenta)
);

CREATE TABLE gasto (
  id_gasto SERIAL PRIMARY KEY,
  id_usuario INTEGER NOT NULL REFERENCES usuario(id_usuario),
  id_tipo_gasto INTEGER NOT NULL REFERENCES tipo_de_gasto(id_tipo_gasto),
  id_departamento INTEGER NOT NULL REFERENCES departamento(id_departamento),
  rfc_proveedor VARCHAR(13) NOT NULL REFERENCES proveedor(rfc_proveedor),
  monto NUMERIC(12,2) NOT NULL CHECK (monto >= 0),
  fecha DATE NOT NULL DEFAULT CURRENT_DATE
);