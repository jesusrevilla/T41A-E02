

CREATE TABLE usuario(
  id_usuario SERIAL PRIMARY KEY,
  nombre_usuario TEXT NOT NULL
);

CREATE TABLE departamento(
  id_departamento SERIAL PRIMARY KEY,
  nombre_departamento TEXT NOT NULL
);

CREATE TABLE cuenta(
  id_cuenta SERIAL PRIMARY KEY,
  nombre_cuenta TEXT NOT NULL
);

CREATE TABLE tipo_de_gasto(
  id_tipo_gasto SERIAL PRIMARY KEY,
  nombre_tipo_gasto TEXT NOT NULL,
  id_cuenta INT REFERENCES cuenta(id_cuenta)
);

CREATE TABLE proveedor(
  rfc_proveedor TEXT PRIMARY KEY,
  nombre_proveedor TEXT NOT NULL
); 

CREATE TABLE gasto(
  id_gasto SERIAL PRIMARY KEY,
  id_usuario INT REFERENCES usuario(id_usuario),
  id_tipo_gasto INT REFERENCES tipo_de_gasto(id_tipo_gasto),
  id_departamento INT REFERENCES departamento(id_departamento),
  rfc_proveedor TEXT REFERENCES proveedor(rfc_proveedor),
  monto DECIMAL(8,2) NOT NULL,
  fecha DATE NOT NULL
);
