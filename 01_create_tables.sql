CREATE TABLE usuario(
  id_usuario SERIAL PRIMARY KEY,
  nombre_usuario TEXT NOT NULL
);

CREATE TABLE cuenta(
  id_cuenta SERIAL PRIMARY KEY,
  nombre_cuenta TEXT NOT NULL
);

CREATE TABLE proveedor(
  rfc_proveedor SERIAL PRIMARY KEY,
  nombre_proveedor TEXT NOT NULL
);


CREATE TABLE departamento(
  id_departamento SERIAL PRIMARY KEY,
  nombre_departamento TEXT NOT NULL
);


CREATE TABLE tipo_de_gasto(
  id_tipo_gasto SERIAL PRIMARY KEY,
  nombre_tipo_gasto TEXT NOT NULL,
  id_cuenta INTEGER REFERENCES cuenta(id_cuenta)
);

CREATE TABLE gasto(
  id_gasto SERIAL PRIMARY KEY,
  id_usuario INTEGER REFERENCES usuario(id_usuario),
  id_tipo_gasto INTEGER REFERENCES tipo_de_gasto(id_tipo_gasto),
  id_departamento INTEGER REFERENCES departamento(id_departamento),
  rfc_proveedor INTEGER REFERENCES proveedor(rfc_proveedor),
  monto FLOAT NOT NULL,
  fecha DATE NOT NULL
);  

