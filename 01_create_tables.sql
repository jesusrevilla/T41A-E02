-- ===========================
-- CREACIÓN DE TABLAS EN POSTGRESQL
-- ===========================

-- Tabla: usuario
CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    nombre_usuario VARCHAR(100) NOT NULL
);

-- Tabla: departamento
CREATE TABLE departamento (
    id_departamento SERIAL PRIMARY KEY,
    nombre_departamento VARCHAR(100) NOT NULL
);

-- Tabla: cuenta
CREATE TABLE cuenta (
    id_cuenta SERIAL PRIMARY KEY,
    nombre_cuenta VARCHAR(100) NOT NULL
);

-- Tabla: tipo_de_gasto
CREATE TABLE tipo_de_gasto (
    id_tipo_gasto SERIAL PRIMARY KEY,
    nombre_tipo_gasto VARCHAR(100) NOT NULL,
    id_cuenta INT NOT NULL,
    CONSTRAINT fk_tipo_cuenta FOREIGN KEY (id_cuenta)
        REFERENCES cuenta (id_cuenta)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

-- Tabla: proveedor
CREATE TABLE proveedor (
    rfc_proveedor VARCHAR(20) PRIMARY KEY,
    nombre_proveedor VARCHAR(150) NOT NULL
);

-- Tabla: gasto
CREATE TABLE gasto (
    id_gasto SERIAL PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_tipo_gasto INT NOT NULL,
    id_departamento INT NOT NULL,
    rfc_proveedor VARCHAR(20) NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    fecha DATE NOT NULL,

    CONSTRAINT fk_gasto_usuario FOREIGN KEY (id_usuario)
        REFERENCES usuario (id_usuario)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_gasto_tipo FOREIGN KEY (id_tipo_gasto)
        REFERENCES tipo_de_gasto (id_tipo_gasto)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_gasto_departamento FOREIGN KEY (id_departamento)
        REFERENCES departamento (id_departamento)
        ON UPDATE CASCADE
        ON DELETE RESTRICT,

    CONSTRAINT fk_gasto_proveedor FOREIGN KEY (rfc_proveedor)
        REFERENCES proveedor (rfc_proveedor)
        ON UPDATE CASCADE
        ON DELETE RESTRICT
);

