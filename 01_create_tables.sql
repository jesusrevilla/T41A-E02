-- 01_create_tables.sql
-- Creación de Tablas Normalizadas (3FN)

-- 1. Entidad: Cuenta
CREATE TABLE cuenta (
    id_cuenta INTEGER PRIMARY KEY,
    nombre_cuenta VARCHAR(100) NOT NULL
);

-- 2. Entidad: Usuario
CREATE TABLE usuario (
    id_usuario INTEGER PRIMARY KEY,
    nombre_usuario VARCHAR(100) NOT NULL
);

-- 3. Entidad: Departamento
CREATE TABLE departamento (
    id_departamento INTEGER PRIMARY KEY,
    nombre_departamento VARCHAR(100) NOT NULL
);

-- 4. Entidad: Proveedor (rfc_proveedor como PK)
CREATE TABLE proveedor (
    rfc_proveedor VARCHAR(13) PRIMARY KEY,
    nombre_proveedor VARCHAR(100) NOT NULL
);

-- 5. Entidad: Tipo_de_gasto (FK a Cuenta)
CREATE TABLE tipo_de_gasto (
    id_tipo_gasto INTEGER PRIMARY KEY,
    nombre_tipo_gasto VARCHAR(100) NOT NULL,
    id_cuenta INTEGER NOT NULL,
    FOREIGN KEY (id_cuenta) REFERENCES cuenta(id_cuenta)
);

-- 6. Entidad: Gasto (Tabla transaccional con todas las FK)
CREATE TABLE gasto (
    id_gasto INTEGER PRIMARY KEY,
    id_usuario INTEGER NOT NULL,
    id_tipo_gasto INTEGER NOT NULL,
    id_departamento INTEGER NOT NULL,
    rfc_proveedor VARCHAR(13) NOT NULL,
    monto NUMERIC(10, 2) NOT NULL,
    fecha DATE NOT NULL,
    
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_tipo_gasto) REFERENCES tipo_de_gasto(id_tipo_gasto),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento),
    FOREIGN KEY (rfc_proveedor) REFERENCES proveedor(rfc_proveedor)
);
