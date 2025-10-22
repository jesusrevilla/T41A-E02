
create table usuario (
  id_usuario SERIAL PRIMARY KEY,
  nombre_usuario VARCHAR(50) not null
);

create table departamento(
  id_departamento SERIAL PRIMARY KEY,
  nombre_departamento VARCHAR(50) not null
);

create table cuenta(
  id_cuenta SERIAL PRIMARY KEY,
  nombre_cuenta VARCHAR(50) not null
);

create table tipo_de_gasto(
  id_tipo_gasto SERIAL PRIMARY KEY,
  nombre_tipo_gasto VARCHAR(50) not null,
  id_cuenta integer references cuenta(id_cuenta)
);

create table proveedor(
  rfc_proveedor VARCHAR(16) PRIMARY KEY,
  nombre_proveedor VARCHAR(50)
);

create table gasto(
  id_gasto SERIAL PRIMARY KEY,
  id_usuario integer references usuario(id_usuario),
  id_tipo_gasto integer references tipo_de_gasto(id_tipo_gasto),
  id_departamento integer references departamento(id_departamento),
  rfc_proveedor varchar(16) references proveedor(rfc_proveedor),
  monto numeric(10, 2),
  fecha date
);
