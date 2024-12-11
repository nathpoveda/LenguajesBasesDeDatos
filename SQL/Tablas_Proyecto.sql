---CREACION DE TABLAS
---Nathalie Poveda, 6/11/2024
---Geovanny Arias, 15/11/2024

DROP TABLE FIDE_DETALLEVENTAS_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_FACTURAS_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_DEVOLUCIONES_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_VENTAS_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_INVENTARIOS_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_PRODUCTOPROVEEDOR_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_PROVEEDORES_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_PRODUCTOS_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_METODOSPAGO_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_ROLES_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_EMPLEADOS_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_SUCURSALES_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_DIRECCIONES_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_DISTRITOS_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_CANTONES_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_PROVINCIAS_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_PAISES_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_ESTADOS_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_MARCASPRODUCTO_TB CASCADE CONSTRAINTS;
DROP TABLE FIDE_CATEGORIAS_TB CASCADE CONSTRAINTS;

CREATE TABLE FIDE_ESTADOS_TB(
    idEstado NUMBER 
    CONSTRAINT FIDE_ESTADOS_ID_ESTADO_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ACCION VARCHAR2(100));
    ---(Exito)

-- Inserci�n de estados generales
INSERT INTO FIDE_ESTADOS_TB (idEstado, Nombre) VALUES ('Inactivo');    
INSERT INTO FIDE_ESTADOS_TB (idEstado, Nombre) VALUES ('Activo'); 
COMMIT;

CREATE TABLE FIDE_CATEGORIAS_TB(
    idCategoria  NUMBER 
    CONSTRAINT FIDE_CATEGORIAS_ID_CATEGORIA_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    Descripcion VARCHAR2(1000),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_CATEGORIAS_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)
   
CREATE TABLE FIDE_PAISES_TB(
    idPais NUMBER 
    CONSTRAINT FIDE_PAIS_ID_PAIS_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_PAISES_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)
    
INSERT INTO FIDE_PAISES_TB(Nombre) VALUES ('Costa Rica');
COMMIT;
    
CREATE TABLE FIDE_PROVINCIAS_TB(
    idProvincia NUMBER 
    CONSTRAINT FIDE_PROVINCIA_ID_PROVINCIA_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    idPais NUMBER, 
    CONSTRAINT FIDE_PROVINCIAS_ID_PAIS_FOREIGN_KEY FOREIGN KEY (idPais) REFERENCES FIDE_PAISES_TB(idPais),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_PROVINCIAS_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)
    
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Cartago',1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('San Jos�',1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Alajuela',1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Heredia',1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Lim�n',1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Puntarenas',1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Guanacaste',1);
COMMIT;

CREATE TABLE FIDE_CANTONES_TB(
    idCanton NUMBER 
    CONSTRAINT FIDE_CANTONES_ID_CANTON_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    idProvincia NUMBER, 
    CONSTRAINT FIDE_CANTONES_ID_PROVINCIA_FOREIGN_KEY FOREIGN KEY (idProvincia) REFERENCES FIDE_PROVINCIAS_TB(idProvincia),
    FECHA_CREACION TIMESTAMP,
    CREADO_POR VARCHAR2(100),
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_CANTONES_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)
    
-- Inserci�n de cantones por provincia
-- Cartago
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Cartago',1);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Para�so',1);    
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('La Uni�n',1);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Jim�nez',1);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Turrialba',1);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Alvarado',1);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Oreamuno',1);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('El Guarco',1);
COMMIT;

-- San Jos�
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('San Jos�',2);   
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Escaz�',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Desamparados',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Puriscal',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Tarraz�',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Aserr�',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Mora',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Goicoechea',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Santa Ana',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Alajuelita',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('V�zquez de Coronado',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Acosta',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Tib�s',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Moravia',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Montes de Oca',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Turrubares',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Dota',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Curridabat',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('P�rez Zeled�n',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Le�n Cort�s Castro',2);
COMMIT;

-- Alajuela
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Alajuela',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('San Ram�n',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Grecia',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('San Mateo',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Atenas',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Naranjo',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Palmares',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Po�s',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Orotina',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('San Carlos',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Zarcero',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Sarch�',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Upala',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Los Chiles',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Guatuso',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('R�o Cuarto',3);
COMMIT;

-- Heredia
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Heredia',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Barva',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Santo Domingo',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Santa B�rbara',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('San Rafael',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('San Isidro',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Bel�n',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Flores',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('San Pablo',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Sarapiqu�',4);
COMMIT;

-- Lim�n
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Lim�n',5);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Pococ�',5);    
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Siquirres',5);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Talamanca',5);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Matina',5);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Gu�cimo',5);
COMMIT;

-- Puntarenas
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Puntarenas',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Esparza',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Buenos Aires',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Montes de Oro',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Osa',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Quepos',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Golfito',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Coto Brus',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Parrita',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Corredores',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Garabito',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Monteverde',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Puerto Jim�nez',6);
COMMIT;

-- Guanacaste
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Liberia',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Nicoya',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Santa Cruz',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Bagaces',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Carillo',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Ca�as',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Abangares',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Tilar�n',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Nandayure',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('La Cruz',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Hojancha',7);
COMMIT;
    
CREATE TABLE FIDE_DISTRITOS_TB(
    idDistrito NUMBER 
    CONSTRAINT FIDE_DISTRITOS_ID_DISTRITO_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    idCanton NUMBER, 
    CONSTRAINT FIDE_DISTRITOS_ID_CANTON_FOREIGN_KEY FOREIGN KEY (idCanton) REFERENCES FIDE_CANTONES_TB(idCanton),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_DISTRITOS_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)
    
CREATE TABLE FIDE_DIRECCIONES_TB(
    idDireccion NUMBER 
    CONSTRAINT FIDE_DIRECCIONES_ID_DIRECCION_PRIMARY_KEY PRIMARY KEY,
    idPais NUMBER, 
    CONSTRAINT FIDE_DIRECCIONES_ID_PAIS_FOREIGN_KEY FOREIGN KEY(idPais) REFERENCES FIDE_PAISES_TB(idPais),
    idProvincia NUMBER, 
    CONSTRAINT FIDE_DIRECCIONES_ID_PROVINCIA_FOREIGN_KEY FOREIGN KEY(idProvincia) REFERENCES FIDE_PROVINCIAS_TB(idProvincia),
    idCanton NUMBER, 
    CONSTRAINT FIDE_DIRECCIONES_ID_CANTON_FOREIGN_KEY FOREIGN KEY(idCanton) REFERENCES FIDE_CANTONES_TB(idCanton),
    idDistrito NUMBER, 
    CONSTRAINT FIDE_DIRECCIONES_ID_DISTRITO_FOREIGN_KEY FOREIGN KEY(idDistrito) REFERENCES FIDE_DISTRITOS_TB(idDistrito),
    direccionExacta VARCHAR2(1000),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_DIRECCIONES_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)
    
INSERT INTO FIDE_DIRECCIONES_TB(idPais, idProvincia, idCanton, idDistrito, direccionExacta) VALUES 
    (1,2, 23, 143, '200 metros sur del Outlet Mall');
    COMMIT;

CREATE TABLE FIDE_PROVEEDORES_TB(
    idProveedor NUMBER 
    CONSTRAINT FIDE_PROVEEDORES_ID_PROVEEDOR_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    idDireccion NUMBER, 
    CONSTRAINT FIDE_PROVEEDORES_ID_DIRECCION_FOREIGN_KEY FOREIGN KEY(idDireccion) REFERENCES FIDE_DIRECCIONES_TB(idDireccion),
    Telefono NUMBER,
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_PROVEEDORES_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)
    
CREATE TABLE FIDE_MARCASPRODUCTO_TB(
    idMarca NUMBER 
    CONSTRAINT FIDE_MARCASPRODUCTO_TB_ID_MARCA_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_MARCASPRODUCTO_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)
    
CREATE TABLE FIDE_PRODUCTOS_TB(
    idProducto NUMBER 
    CONSTRAINT FIDE_PRODUCTOS_ID_PRODUCTO_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    Precio NUMBER(10,2),
    idCategoria NUMBER, 
    CONSTRAINT FIDE_PRODUCTOS_ID_CATEGORIA_FOREIGN_KEY FOREIGN KEY(idCategoria) REFERENCES FIDE_CATEGORIAS_TB(idCategoria),
    idEstado NUMBER, 
    CONSTRAINT FIDE_PRODUCTOS_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    idMarca NUMBER, 
    CONSTRAINT FIDE_PRODUCTOS_ID_MARCA_FOREIGN_KEY FOREIGN KEY(idMarca) REFERENCES FIDE_MARCASPRODUCTO_TB(idMarca),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ACCION VARCHAR2(100));
    ---(Exito)

CREATE TABLE FIDE_PRODUCTOPROVEEDOR_TB(
    idProducto NUMBER, 
    idProveedor NUMBER, 
    horarioEntrega VARCHAR2(1000),
    precioCompra NUMBER(10,2),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_PRODUCTOPROVEEDOR_ID_PRODUCTO_ID_PROVEEDOR_PRIMARY_KEY PRIMARY KEY (idProducto, idProveedor),
    CONSTRAINT FIDE_PRODUCTOPROVEEDOR_ID_PRODUCTO_FOREIGN_KEY FOREIGN KEY(idProducto) REFERENCES FIDE_PRODUCTOS_TB(idProducto),
    CONSTRAINT FIDE_PRODUCTOPROVEEDOR_ID_PROVEEDOR_FOREIGN_KEY FOREIGN KEY(idProveedor) REFERENCES FIDE_PROVEEDORES_TB(idProveedor),
    CONSTRAINT FIDE_PRODUCTOPROVEEDOR_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)
    
CREATE TABLE FIDE_SUCURSALES_TB(
    idSucursal NUMBER 
    CONSTRAINT FIDE_SUCURSALES_ID_SUCURSAL_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    idDireccion NUMBER, 
    CONSTRAINT FIDE_SUCURSALES_ID_DIRECCION_FOREIGN_KEY FOREIGN KEY(idDireccion) REFERENCES FIDE_DIRECCIONES_TB(idDireccion),
    horaApertura VARCHAR2(200),
    horaCierre VARCHAR2(200),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_SUCURSALES_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)
    
INSERT INTO FIDE_SUCURSALES_TB(Nombre, idDireccion, horaApertura, horaCierre) VALUES
    ('Sucursal Central', 1, '8:00am','5:00pm');
    COMMIT;

CREATE TABLE FIDE_INVENTARIOS_TB(
    idInventario NUMBER 
    CONSTRAINT FIDE_INVENTARIOS_ID_INVENTARIO_PRIMARY_KEY PRIMARY KEY,
    idProducto NUMBER, 
    CONSTRAINT FIDE_INVENTARIOS_ID_PRODUCTO_FOREIGN_KEY FOREIGN KEY(idProducto) REFERENCES FIDE_PRODUCTOS_TB(idProducto),
    Cantidad NUMBER,
    ultimaActualizacion DATE,
    idSucursal NUMBER, 
    CONSTRAINT FIDE_INVENTARIOS_ID_SUCURSAL_FOREIGN_KEY FOREIGN KEY(idSucursal) REFERENCES FIDE_SUCURSALES_TB(idSucursal),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_INVENTARIOS_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)

CREATE TABLE FIDE_EMPLEADOS_TB(
    idEmpleado NUMBER 
    CONSTRAINT FIDE_EMPLEADOS_ID_EMPLEADO_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    idSucursal NUMBER, 
    CONSTRAINT FIDE_EMPLEADOS_ID_SUCURSAL_FOREIGN_KEY FOREIGN KEY(idSucursal) REFERENCES FIDE_SUCURSALES_TB(idSucursal),
    Puesto VARCHAR2(200),
    idDireccion NUMBER, 
    CONSTRAINT FIDE_EMPLEADOS_ID_DIRECCION_FOREIGN_KEY FOREIGN KEY(idDireccion) REFERENCES FIDE_DIRECCIONES_TB(idDireccion),
    Salario NUMBER(10,2),
    Correo VARCHAR2(200),
    idEstado NUMBER, 
    CONSTRAINT FIDE_EMPLEADOS_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    Contrasena VARCHAR2(200),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ACCION VARCHAR2(100));
    ---(Exito)
    
INSERT INTO FIDE_EMPLEADOS_TB(Nombre,idSucursal,Puesto, idDireccion, Salario, correo, contrasena) VALUES
    ('Nathalie Poveda Chaves', 1, 'Gerente de Cajas', 1, 1500, 'nathalie@innovatech.com', '123');
COMMIT;

CREATE TABLE FIDE_ROLES_TB(
    idRol NUMBER 
    CONSTRAINT FIDE_ROLES_ID_ROL_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    idEmpleado  NUMBER, 
    CONSTRAINT FIDE_ROLES_IDEMPLEADO_FOREIGN_KEY FOREIGN KEY(idEmpleado) REFERENCES FIDE_EMPLEADOS_TB(idEmpleado),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_ROLES_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));

INSERT INTO FIDE_ROLES_TB(Nombre, idEmpleado) VALUES
    ('ADMIN',1);
COMMIT;

CREATE TABLE FIDE_VENTAS_TB(
    idVenta NUMBER 
    CONSTRAINT FIDE_VENTAS_TB_ID_VENTA_PRIMARY_KEY PRIMARY KEY,
    idEmpleado NUMBER, 
    CONSTRAINT FIDE_VENTAS_ID_EMPLEADO_FOREIGN_KEY FOREIGN KEY(idEmpleado) REFERENCES FIDE_EMPLEADOS_TB(idEmpleado),
    idSucursal NUMBER, 
    CONSTRAINT FIDE_VENTAS_ID_SUCURSAL_FOREIGN_KEY FOREIGN KEY(idSucursal) REFERENCES FIDE_SUCURSALES_TB(idSucursal),
    fechaVenta DATE,
    Total NUMBER(10,2),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_VENTAS_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)
    
CREATE TABLE FIDE_DETALLEVENTAS_TB(
    idDetalle NUMBER 
    CONSTRAINT FIDE_DETALLEVENTAS_TB_ID_DETALLE_PRIMARY_KEY PRIMARY KEY,
    idVenta NUMBER, 
    CONSTRAINT FIDE_DETALLEVENTAS_ID_VENTA_FOREIGN_KEY FOREIGN KEY(idVenta) REFERENCES FIDE_VENTAS_TB(idVenta),
    idProducto NUMBER, 
    CONSTRAINT FIDE_PRODUCTOS_ID_PRODUCTO_FOREIGN_KEY FOREIGN KEY(idProducto) REFERENCES FIDE_PRODUCTOS_TB(idProducto),
    Cantidad NUMBER,
    precioUnitario NUMBER(10,2),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_DETALLEVENTAS_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)

CREATE TABLE FIDE_METODOSPAGO_TB(
    idMetodoPago NUMBER 
    CONSTRAINT FIDE_METODOSPAGO_ID_METODOPAGO_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_METODOSPAGO_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)
    
INSERT INTO FIDE_METODOSPAGO_TB(Nombre) VALUES ('Tarjeta'); 
INSERT INTO FIDE_METODOSPAGO_TB(Nombre) VALUES ('Efectivo'); 
INSERT INTO FIDE_METODOSPAGO_TB(Nombre) VALUES ('SINPE M�vil'); 
COMMIT;
    
CREATE TABLE FIDE_FACTURAS_TB(
    idFactura NUMBER 
    CONSTRAINT FIDE_FACTURAS_ID_FACTURA_PRIMARY_KEY PRIMARY KEY,
    idVenta NUMBER, 
    CONSTRAINT FIDE_FACTURAS_ID_VENTA_FOREIGN_KEY FOREIGN KEY(idVenta) REFERENCES FIDE_VENTAS_TB(idVenta),
    fechaEmision DATE,
    idMetodoPago NUMBER, 
    CONSTRAINT FIDE_FACTURAS_ID_METODOPAGO_FOREIGN_KEY FOREIGN KEY(idMetodoPago) REFERENCES FIDE_METODOSPAGO_TB(idMetodoPago),
    Subtotal NUMBER(10,2),
    Impuesto NUMBER(10,2),
    Total NUMBER(10,2),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_FACTURAS_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)
    
CREATE TABLE FIDE_DEVOLUCIONES_TB(
    idDevolucion NUMBER 
    CONSTRAINT FIDE_DEVOLUCIONES_ID_DEVOLUCION_PRIMARY_KEY PRIMARY KEY,
    idProducto NUMBER, 
    CONSTRAINT FIDE_DEVOLUCIONES_ID_PRODUCTO_FOREIGN_KEY FOREIGN KEY(idProducto) REFERENCES FIDE_PRODUCTOS_TB(idProducto),
    idFactura NUMBER, 
    CONSTRAINT FIDE_DEVOLUCIONES_ID_FACTURA_FOREIGN_KEY FOREIGN KEY(idFactura) REFERENCES FIDE_FACTURAS_TB(idFactura),
    Fecha DATE,
    Motivo VARCHAR2(1000),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    idEstado NUMBER, 
    CONSTRAINT FIDE_DEVOLUCIONES_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    ACCION VARCHAR2(100));
    ---(Exito)
