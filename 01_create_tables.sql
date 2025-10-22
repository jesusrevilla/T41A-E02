
-- Crear las tablas
-- Usar las 3FN (Normalización) en tablas: usuario, departamento, cuenta, tipo_gasto, proveedor, gasto

CREATE TABLE departamento (
    id_departamento SERIAL PRIMARY KEY,
    nombre_departamento VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    nombre_usuario VARCHAR(150) NOT NULL,
    id_departamento INT NOT NULL REFERENCES departamento(id_departamento)
);


CREATE TABLE cuenta (
    id_cuenta SERIAL PRIMARY KEY,
    nombre_cuenta VARCHAR(100) NOT NULL UNIQUE
);


CREATE TABLE tipo_gasto (
    id_tipo_gasto SERIAL PRIMARY KEY,
    nombre_tipo_gasto VARCHAR(150) NOT NULL,
    id_cuenta INT NOT NULL REFERENCES cuenta(id_cuenta),
    UNIQUE(nombre_tipo_gasto, id_cuenta)
);


CREATE TABLE proveedor (
    rfc_proveedor VARCHAR(20) PRIMARY KEY,
    nombre_proveedor VARCHAR(200) NOT NULL
);


CREATE TABLE gasto (
    id_gasto SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL REFERENCES usuario(id_usuario),
    id_tipo_gasto INT NOT NULL REFERENCES tipo_gasto(id_tipo_gasto),
    id_departamento INT NOT NULL REFERENCES departamento(id_departamento),
    rfc_proveedor VARCHAR(20) NOT NULL REFERENCES proveedor(rfc_proveedor),
    monto NUMERIC(12,2) NOT NULL CHECK (monto >= 0),
    fecha DATE NOT NULL
);
