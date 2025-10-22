-- 1. Tablas de entidades independientes (catálogos)
CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY,
    nombre_usuario VARCHAR(255)
);

CREATE TABLE departamento (
    id_departamento INT PRIMARY KEY,
    nombre_departamento VARCHAR(255)
);

CREATE TABLE cuenta (
    id_cuenta INT PRIMARY KEY,
    nombre_cuenta VARCHAR(255)
);

CREATE TABLE proveedor (
    rfc_proveedor VARCHAR(13) PRIMARY KEY,
    nombre_proveedor VARCHAR(255)
);

-- 2. Tabla de entidad dependiente 
CREATE TABLE tipo_de_gasto (
    id_tipo_gasto INT PRIMARY KEY,
    nombre_tipo_gasto VARCHAR(255),
    id_cuenta INT,
    FOREIGN KEY (id_cuenta) REFERENCES cuenta(id_cuenta)
);

-- 3. Tabla transaccional
CREATE TABLE gasto (
    id_gasto INT PRIMARY KEY,
    id_usuario INT,
    id_tipo_gasto INT,
    id_departamento INT,
    rfc_proveedor VARCHAR(13),
    monto DECIMAL(10, 2),
    fecha DATE,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_tipo_gasto) REFERENCES tipo_de_gasto(id_tipo_gasto),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento),
    FOREIGN KEY (rfc_proveedor) REFERENCES proveedor(rfc_proveedor)
);
