CREATE TABLE usuario (
  id_usuario INTEGER PRIMARY KEY,
  nombre_usuario VARCHAR(50) NOT NULL
);

CREATE TABLE departamento (
  id_departamento INTEGER PRIMARY KEY,
  nombre_departamento VARCHAR(50) NOT NULL
);
CREATE TABLE cuenta (
  id_cuenta INTEGER PRIMARY KEY,
  nombre_cuenta VARCHAR(50) NOT NULL
);
CREATE TABLE tipo_de_gasto (
  id_tipo_gasto INTEGER NOT NULL,
  nombre_tipo_gasto VARCHAR(50) NOT NULL,
  id_cuenta INTEGER NOT NULL,
  PRIMARY KEY(id_tipo_gasto),
  FOREIGN KEY (id_cuenta) REFERENCES cuenta(id_cuenta)
);
CREATE TABLE proveedor (
  rfc_proveedor VARCHAR(20) PRIMARY KEY,
  nombre_proveedor VARCHAR(50) NOT NULL
);
CREATE TABLE gasto (
  id_gasto INTEGER NOT NULL,
  id_usuario INTEGER NOT NULL,
  id_tipo_gasto INTEGER NOT NULL,
  id_departamento INTEGER NOT NULL,
  rfc_proveedor VARCHAR(20) NOT NULL,
  monto DECIMAL(6,2) NOT NULL,
  fecha DATE NOT NULL,
  PRIMARY KEY(id_gasto,id_usuario,id_tipo_gasto,id_departamento,rfc_proveedor),
  FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
  FOREIGN KEY (id_tipo_gasto) REFERENCES tipo_de_gasto(id_tipo_gasto),
  FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento),
  FOREIGN KEY (rfc_proveedor) REFERENCES proveedor(rfc_proveedor)
);
