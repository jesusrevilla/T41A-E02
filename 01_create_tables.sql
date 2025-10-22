
-- 1. Tabla: USUARIO
CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY,
    nombre_usuario VARCHAR(100) NOT NULL
);

-- 2. Tabla: DEPARTAMENTO
CREATE TABLE departamento (
    id_departamento INT PRIMARY KEY,
    nombre_departamento VARCHAR(100) NOT NULL
);

-- 3. Tabla: CUENTA
CREATE TABLE cuenta (
    id_cuenta INT PRIMARY KEY,
    nombre_cuenta VARCHAR(100) NOT NULL
);

-- 4. Tabla: TIPO_DE_GASTO
CREATE TABLE tipo_de_gasto (
    id_tipo_gasto INT PRIMARY KEY,
    nombre_tipo_gasto VARCHAR(100) NOT NULL,
    id_cuenta INT NOT NULL,
    CONSTRAINT fk_tipo_cuenta FOREIGN KEY (id_cuenta)
        REFERENCES cuenta(id_cuenta)
);

-- 5. Tabla: PROVEEDOR
CREATE TABLE proveedor (
    rfc_proveedor CHAR(13) PRIMARY KEY,
    nombre_proveedor VARCHAR(150) NOT NULL
);

-- 6. Tabla: GASTO
CREATE TABLE gasto (
    id_gasto INT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_tipo_gasto INT NOT NULL,
    id_departamento INT NOT NULL,
    rfc_proveedor CHAR(13) NOT NULL,
    monto DECIMAL(10,2) NOT NULL,
    fecha DATE NOT NULL,
    CONSTRAINT fk_gasto_usuario FOREIGN KEY (id_usuario)
        REFERENCES usuario(id_usuario),
    CONSTRAINT fk_gasto_tipo FOREIGN KEY (id_tipo_gasto)
        REFERENCES tipo_de_gasto(id_tipo_gasto),
    CONSTRAINT fk_gasto_departamento FOREIGN KEY (id_departamento)
        REFERENCES departamento(id_departamento),
    CONSTRAINT fk_gasto_proveedor FOREIGN KEY (rfc_proveedor)
        REFERENCES proveedor(rfc_proveedor)
);
