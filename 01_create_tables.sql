CREATE TABLE departamento (
    id_departamento SERIAL PRIMARY KEY,
    nombre_departamento VARCHAR(100) NOT NULL
);

CREATE TABLE cuenta (
    id_cuenta SERIAL PRIMARY KEY,
    nombre_cuenta VARCHAR(100) NOT NULL
);

CREATE TABLE tipo_de_gasto (
    id_tipo_gasto SERIAL PRIMARY KEY,
    nombre_tipo_gasto VARCHAR(100) NOT NULL,
    id_cuenta INTEGER NOT NULL,
    CONSTRAINT fk_tipo_gasto_cuenta FOREIGN KEY (id_cuenta) REFERENCES cuenta(id_cuenta)
);

CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    nombre_usuario VARCHAR(100) NOT NULL,
    id_departamento INTEGER,
    CONSTRAINT fk_usuario_departamento FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);

CREATE TABLE proveedor (
    rfc_proveedor VARCHAR(20) PRIMARY KEY,
    nombre_proveedor VARCHAR(150) NOT NULL
);

CREATE TABLE gasto (
    id_gasto SERIAL PRIMARY KEY,
    id_usuario INTEGER NOT NULL,
    id_tipo_gasto INTEGER NOT NULL,
    id_departamento INTEGER NOT NULL,
    rfc_proveedor VARCHAR(20) NOT NULL,
    monto NUMERIC(15,2) NOT NULL,
    fecha DATE NOT NULL,
    CONSTRAINT fk_gasto_usuario FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    CONSTRAINT fk_gasto_tipo_de_gasto FOREIGN KEY (id_tipo_gasto) REFERENCES tipo_de_gasto(id_tipo_gasto),
    CONSTRAINT fk_gasto_departamento FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento),
    CONSTRAINT fk_gasto_proveedor FOREIGN KEY (rfc_proveedor) REFERENCES proveedor(rfc_proveedor)
);
