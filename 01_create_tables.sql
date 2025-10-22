--Yovana Isabel Palencia Sánchez 174197
CREATE TABLE departamento (
    id_departamento INT PRIMARY KEY,
    nombre_departamento VARCHAR(100) NOT NULL
);

CREATE TABLE usuario (
    id_usuario INT PRIMARY KEY,
    nombre_usuario VARCHAR(100) NOT NULL,
    id_departamento INT NOT NULL,
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento)
);

CREATE TABLE cuenta (
    id_cuenta INT PRIMARY KEY,
    nombre_cuenta VARCHAR(100) NOT NULL
);

CREATE TABLE tipo_de_gasto (
    id_tipo_gasto INT PRIMARY KEY,
    nombre_tipo_gasto VARCHAR(100) NOT NULL,
    id_cuenta INT NOT NULL,
    FOREIGN KEY (id_cuenta) REFERENCES cuenta(id_cuenta)
);

CREATE TABLE proveedor (
    rfc_proveedor VARCHAR(20) PRIMARY KEY,
    nombre_proveedor VARCHAR(100) NOT NULL
);

CREATE TABLE gasto (
    id_gasto INT PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_tipo_gasto INT NOT NULL,
    id_departamento INT NOT NULL,
    rfc_proveedor VARCHAR(20) NOT NULL,
    monto DECIMAL(12,2) NOT NULL,
    fecha DATE NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario),
    FOREIGN KEY (id_tipo_gasto) REFERENCES tipo_de_gasto(id_tipo_gasto),
    FOREIGN KEY (id_departamento) REFERENCES departamento(id_departamento),
    FOREIGN KEY (rfc_proveedor) REFERENCES proveedor(rfc_proveedor)
);
