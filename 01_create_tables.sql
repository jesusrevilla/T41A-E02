CREATE TABLE usuario (
  id_usuario      BIGINT PRIMARY KEY,
  nombre_usuario  TEXT NOT NULL
);

CREATE TABLE departamento (
  id_departamento      BIGINT PRIMARY KEY,
  nombre_departamento  TEXT NOT NULL
);

CREATE TABLE cuenta (
  id_cuenta      BIGINT PRIMARY KEY,
  nombre_cuenta  TEXT NOT NULL
);

CREATE TABLE proveedor (
  rfc_proveedor     VARCHAR(13) PRIMARY KEY,
  nombre_proveedor  TEXT NOT NULL
);


CREATE TABLE tipo_de_gasto (
  id_tipo_gasto      BIGINT PRIMARY KEY,
  nombre_tipo_gasto  TEXT NOT NULL,
  id_cuenta          BIGINT NOT NULL REFERENCES cuenta(id_cuenta)
                      ON UPDATE CASCADE ON DELETE RESTRICT
);


CREATE TABLE gasto (
  id_gasto        BIGINT PRIMARY KEY,
  id_usuario      BIGINT NOT NULL REFERENCES usuario(id_usuario)
                   ON UPDATE CASCADE ON DELETE RESTRICT,
  id_tipo_gasto   BIGINT NOT NULL REFERENCES tipo_de_gasto(id_tipo_gasto)
                   ON UPDATE CASCADE ON DELETE RESTRICT,
  id_departamento BIGINT NOT NULL REFERENCES departamento(id_departamento)
                   ON UPDATE CASCADE ON DELETE RESTRICT,
  rfc_proveedor   VARCHAR(13) NOT NULL REFERENCES proveedor(rfc_proveedor)
                   ON UPDATE CASCADE ON DELETE RESTRICT,
  monto           NUMERIC(12,2) NOT NULL CHECK (monto >= 0),
  fecha           DATE NOT NULL
);
