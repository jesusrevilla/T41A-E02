    --usuario
--id_usuario
--nombre_usuario
    --departamento
--id_departamento
--nombre_departamento
    --cuenta
--id_cuenta
--nombre_cuenta
    --tipo_de_gasto
--id_tipo_gasto
--nombre_tipo_gasto
--id_cuenta
--rfc_proveedor
    --nombre_proveedor
    --gasto
--id_gasto
--id_usuario
--id_tipo_gasto
--id_departamento
--rfc_proveedor
--monto
--fecha




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
    nombre_proveedor VARCHAR(100) NOT NULL
);

CREATE TABLE tipo_de_gasto (
    id_tipo_gasto SERIAL PRIMARY KEY,
    nombre_tipo_gasto VARCHAR(100) NOT NULL,
    id_cuenta INTEGER NOT NULL,
    FOREIGN KEY (id_cuenta) REFERENCES cuenta(id_cuenta)
);

CREATE TABLE gasto (
    id_gasto SERIAL PRIMARY KEY,
    id_usuario INTEGER NOT NULL,
    id_tipo_gasto INTEGER NOT NULL,
    id_departamento INTEGER NOT NULL,
    rfc_proveedor VARCHAR(13) NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_tipo_gasto) REFERENCES tipo_de_gasto(id_tipo_gasto),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento),
    FOREIGN KEY (rfc_proveedor) REFERENCES proveedor(rfc_proveedor)
);
