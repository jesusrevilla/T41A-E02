
DROP TABLE IF EXISTS gasto;
DROP TABLE IF EXISTS tipo_de_gasto;
DROP TABLE IF EXISTS proveedor;
DROP TABLE IF EXISTS cuenta;
DROP TABLE IF EXISTS departamento;
DROP TABLE IF EXISTS usuario;
-- 1. Tabla usuario
CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    nombre_usuario VARCHAR(100) NOT NULL
);

-- 2. Tabla departamento
CREATE TABLE departamento (
    id_departamento SERIAL PRIMARY KEY,
    nombre_departamento VARCHAR(100) NOT NULL
);

-- 3. Tabla cuenta
CREATE TABLE cuenta (
    id_cuenta SERIAL PRIMARY KEY,
    nombre_cuenta VARCHAR(100) NULL
);

-- 4. Tabla proveedor
-- El RFC se usa como clave primaria (PK)
CREATE TABLE proveedor (
    rfc_proveedor VARCHAR(13) PRIMARY KEY,
    nombre_proveedor VARCHAR(150) NOT NULL
);

-- 5. Tabla tipo_de_gasto
-- Contiene una FK a 'cuenta'
CREATE TABLE tipo_de_gasto (
    id_tipo_gasto SERIAL PRIMARY KEY,
    nombre_tipo_gasto VARCHAR(100) NOT NULL,
    id_cuenta INTEGER NOT NULL,
    -- FK: Un tipo de gasto se asocia a una cuenta
    CONSTRAINT fk_cuenta
        FOREIGN KEY (id_cuenta)
        REFERENCES cuenta (id_cuenta)
);

-- 6. Tabla gasto (Tabla principal de hechos/transacciones)
-- Contiene todas las FKs a las tablas dimensionales
CREATE TABLE gasto (
    id_gasto SERIAL PRIMARY KEY,
    id_usuario INTEGER NOT NULL,
    id_tipo_gasto INTEGER NOT NULL,
    id_departamento INTEGER NOT NULL,
    rfc_proveedor VARCHAR(13) NOT NULL,
    monto NUMERIC(10, 2) NOT NULL,
    fecha DATE NOT NULL,

    -- FK: Usuario que registró el gasto
    CONSTRAINT fk_usuario
        FOREIGN KEY (id_usuario)
        REFERENCES usuario (id_usuario),

    -- FK: Tipo de gasto realizado
    CONSTRAINT fk_tipo_de_gasto
        FOREIGN KEY (id_tipo_gasto)
        REFERENCES tipo_de_gasto (id_tipo_gasto);
    CONSTRAINT fk_departamento
        FOREIGN KEY (id_departamento)
        REFERENCES departamento (id_departamento),

    
    CONSTRAINT fk_proveedor
        FOREIGN KEY (rfc_proveedor)
        REFERENCES proveedor (rfc_proveedor)
);
