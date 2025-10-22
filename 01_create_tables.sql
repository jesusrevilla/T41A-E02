CREATE TABLE usuario (
    id_usuario SERIAL PRIMARY KEY,
    nombre_usuario varchar(30) NOT NULL,
);

CREATE TABLE departamento (
    id_departamento SERIAL PRIMARY KEY,
    nombre_departamento varchar(40) NOT NULL
);
 
CREATE TABLE cuentas (
    id_cuenta SERIAL PRIMARY KEY,
    nombre_cuenta varchar(30) NOT NULL
);
 
CREATE TABLE tipo_de_gasto (
    id_tipo_gasto SERIAL PRIMARY KEY,
    nombre_tipo_gasto varchar(30) NOT NULL,
    id_cuenta int,
    rfc_proveedor varchar(20),
    nombre_proveedor VARCHAR(40) NOT NULL
    FOREIGN KEY (id_cuenta) references cuenta(id_cuenta)
);
 
CREATE TABLE proveedor (
    rfc_proveedor varchar(20) PRIMARY KEY,
    nombre_proveedor VARCHAR(40) NOT NULL
);
 
CREATE TABLE gastos (
    id_gasto int PRIMARY KEY,
    id_usuario int,
    id_tipo_gasto int,
    id_departamento int,
    rfc_proveedor varchar(20),
    monto NUMERIC(12,2),
    fecha date,
    FOREIGN KEY (id_usuario) references usuario(id_usuario),
    FOREIGN KEY (id_tipo_gasto) references tipo_de_gasto(id_tipo_gasto),
    FOREIGN KEY (id_departamento) references departamento(id_departamento),
    FOREIGN KEY (rfc_proveedor) references proveedor(rfc_proveedor)
);
