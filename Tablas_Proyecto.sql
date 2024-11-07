---CREACION DE TABLAS
---Nathalie Poveda, 6/11/2024

CREATE TABLE FIDE_CATEGORIAS_TB(
    idCategoria  NUMBER CONSTRAINT FIDE_CATEGORIAS_ID_CATEGORIA_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    Descripcion VARCHAR2(1000));
    ---(Exito)
    
CREATE TABLE FIDE_ESTADOS_TB(
    idEstado NUMBER CONSTRAINT FIDE_ESTADOS_ID_ESTADO_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200));
    ---(Exito)
    
CREATE TABLE FIDE_PAISES_TB(
    idPais NUMBER CONSTRAINT FIDE_PAIS_ID_PAIS_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200));
    ---(Exito)
    
CREATE TABLE FIDE_PROVINCIAS_TB(
    idProvincia NUMBER CONSTRAINT FIDE_PROVINCIA_ID_PROVINCIA_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200));
    ---(Exito)
    
CREATE TABLE FIDE_CANTONES_TB(
    idCanton NUMBER CONSTRAINT FIDE_CANTONES_ID_CANTON_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200));
    ---(Exito)
    
CREATE TABLE FIDE_DISTRITOS_TB(
    idDistrito NUMBER CONSTRAINT FIDE_DISTRITOS_ID_DISTRITO_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200));
    ---(Exito)
    
    
CREATE TABLE FIDE_DIRECCIONES_TB(
    idDireccion NUMBER CONSTRAINT FIDE_DIRECCIONES_ID_DIRECCION_PRIMARY_KEY PRIMARY KEY,
    idPais NUMBER, CONSTRAINT FIDE_DIRECCIONES_ID_PAIS_FOREIGN_KEY FOREIGN KEY(idPais) REFERENCES FIDE_PAISES_TB(idPais),
    idProvincia NUMBER, CONSTRAINT FIDE_DIRECCIONES_ID_PROVINCIA_FOREIGN_KEY FOREIGN KEY(idProvincia) REFERENCES FIDE_PROVINCIAS_TB(idProvincia),
    idCanton NUMBER, CONSTRAINT FIDE_DIRECCIONES_ID_CANTON_FOREIGN_KEY FOREIGN KEY(idCanton) REFERENCES FIDE_CANTONES_TB(idCanton),
    idDistrito NUMBER, CONSTRAINT FIDE_DIRECCIONES_ID_DISTRITO_FOREIGN_KREY FOREIGN KEY(idDistrito) REFERENCES FIDE_DISTRITOS_TB(idDistrito),
    Se�as VARCHAR2(1000));
    ---(Exito)
    
CREATE TABLE FIDE_PROVEEDORES_TB(
    idProveedor NUMBER CONSTRAINT FIDE_PROVEEDORES_ID_PROVEEDOR_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    idDireccion NUMBER, CONSTRAINT FIDE_PROVEEDORES_ID_DIRECCION_FOREIGN_KEY FOREIGN KEY(idDireccion) REFERENCES FIDE_DIRECCIONES_TB(idDireccion),
    Telefono NUMBER);
    ---(Exito)
    
CREATE TABLE FIDE_MARCASPRODUCTO_TB(
    idMarca NUMBER CONSTRAINT FIDE_MARCASPRODUCTO_TB_ID_MARCA_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200));
    ---(Exito)
    
CREATE TABLE FIDE_PRODUCTOS_TB(
    idProducto NUMBER CONSTRAINT FIDE_PRODUCTOS_ID_PRODUCTO_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    Precio NUMBER(10,2),
    idCategoria NUMBER, CONSTRAINT FIDE_PRODUCTOS_ID_CATEGORIA_FOREIGN_KEY FOREIGN KEY(idCategoria) REFERENCES FIDE_CATEGORIAS_TB(idCategoria),
    idEstado NUMBER, CONSTRAINT FIDE_PRODUCTOS_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    idMarca NUMBER, CONSTRAINT FIDE_PRODUCTOS_ID_MARCA_FOREIGN_KEY FOREIGN KEY(idMarca) REFERENCES FIDE_MARCASPRODUCTO_TB(idMarca));
    ---(Exito)

CREATE TABLE FIDE_PRODUCTOPROVEEDOR_TB(
    idProductoProveedor NUMBER CONSTRAINT FIDE_PRODUCTOPROVEEDOR_ID_PRODUCTOPROVEEDOR_PRIMARY_KEY PRIMARY KEY,
    horarioEntrega VARCHAR2(1000),
    idProveedor NUMBER, CONSTRAINT FIDE_PRODUCTOSPROVEEDOR_ID_PROVEEDOR_FOREIGN_KEY FOREIGN KEY(idProveedor) REFERENCES FIDE_PROVEEDORES_TB(idProveedor),
    precioCompra NUMBER(10,2));
    ---(Exito)
    
    
CREATE TABLE FIDE_SUCURSALES_TB(
    idSucursal NUMBER CONSTRAINT FIDE_SUCURSALES_ID_SUCURSAL_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    idDireccion NUMBER, CONSTRAINT FIDE_SUCURSALES_ID_DIRECCION_FOREIGN_KEY FOREIGN KEY(idDireccion) REFERENCES FIDE_DIRECCIONES_TB(idDireccion),
    horaApertura VARCHAR2(200),
    horaCierre VARCHAR2(200));
    ---(Exito)
    
CREATE TABLE FIDE_INVENTARIOS_TB(
    idInventario NUMBER CONSTRAINT FIDE_INVENTARIOS_ID_INVENTARIO_PRIMARY_KEY PRIMARY KEY,
    idProducto NUMBER, CONSTRAINT FIDE_INVENTARIOS_ID_PRODUCTO_FOREIGN_KEY FOREIGN KEY(idProducto) REFERENCES FIDE_PRODUCTOS_TB(idProducto),
    Cantidad NUMBER,
    ultimaActualizacion DATE,
    idSucursal NUMBER, CONSTRAINT FIDE_INVENTARIOS_ID_SUCURSAL_FOREIGN_KEY FOREIGN KEY(idSucursal) REFERENCES FIDE_SUCURSALES_TB(idSucursal));
    ---(Exito)

CREATE TABLE FIDE_EMPLEADOS_TB(
    idEmpleado NUMBER CONSTRAINT FIDE_EMPLEADOS_ID_EMPLEADO_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    idSucursal NUMBER, CONSTRAINT FIDE_EMPLEADOS_ID_SUCURSAL_FOREIGN_KEY FOREIGN KEY(idSucursal) REFERENCES FIDE_SUCURSALES_TB(idSucursal),
    Puesto VARCHAR2(200),
    idDireccion NUMBER, CONSTRAINT FIDE_EMPLEADOS_ID_DIRECCION_FOREIGN_KEY FOREIGN KEY(idDireccion) REFERENCES FIDE_DIRECCIONES_TB(idDireccion),
    Salario NUMBER(10,2),
    Correo VARCHAR2(200),
    idEstado NUMBER, CONSTRAINT FIDE_EMPLEADOS_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado));
    ---(Exito)
    
CREATE TABLE FIDE_VENTAS_TB(
    idVenta NUMBER CONSTRAINT FIDE_VENTAS_TB_ID_VENTA_PRIMARY_KEY PRIMARY KEY,
    idEmpleado NUMBER, CONSTRAINT FIDE_VENTAS_ID_EMPLEADO_FOREIGN_KEY FOREIGN KEY(idEmpleado) REFERENCES FIDE_EMPLEADOS_TB(idEmpleado),
    idSucursal NUMBER, CONSTRAINT FIDE_VENTAS_ID_SUCURSAL_FOREIGN_KEY FOREIGN KEY(idSucursal) REFERENCES FIDE_SUCURSALES_TB(idSucursal),
    fechaVenta DATE,
    Total NUMBER(10,2));
    ---(Exito)
    
CREATE TABLE FIDE_DETALLEVENTAS_TB(
    idDetalle NUMBER CONSTRAINT FIDE_DETALLEVENTAS_TB_ID_DETALLE_PRIMARY_KEY PRIMARY KEY,
    idVenta NUMBER, CONSTRAINT FIDE_DETALLEVENTAS_ID_VENTA_FOREIGN_KEY FOREIGN KEY(idVenta) REFERENCES FIDE_VENTAS_TB(idVenta),
    idProducto NUMBER, CONSTRAINT FIDE_PRODUCTOS_ID_PRODUCTO_FOREIGN_KEY FOREIGN KEY(idProducto) REFERENCES FIDE_PRODUCTOS_TB(idProducto),
    Cantidad NUMBER,
    precioUnitario NUMBER(10,2));
    ---(Exito)

CREATE TABLE FIDE_METODOSPAGO_TB(
    idMetodoPago NUMBER CONSTRAINT FIDE_METODOSPAGO_ID_METODOPAGO_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200));
    ---(Exito)
    
CREATE TABLE FIDE_FACTURAS_TB(
    idFactura NUMBER CONSTRAINT FIDE_FACTURAS_ID_FACTURA_PRIMARY_KEY PRIMARY KEY,
    idVenta NUMBER, CONSTRAINT FIDE_FACTURAS_ID_VENTA_FOREIGN_KEY FOREIGN KEY(idVenta) REFERENCES FIDE_VENTAS_TB(idVenta),
    fechaEmision DATE,
    idMetodoPago NUMBER, CONSTRAINT FIDE_FACTURAS_ID_METODOPAGO_FOREIGN_KEY FOREIGN KEY(idMetodoPago) REFERENCES FIDE_METODOSPAGO_TB(idMetodoPago),
    Subtotal NUMBER(10,2),
    Impuesto NUMBER(10,2),
    Total NUMBER(10,2));
    ---(Exito)
    
CREATE TABLE FIDE_DEVOLUCIONES_TB(
    idDevolucion NUMBER CONSTRAINT FIDE_DEVOLUCIONES_ID_DEVOLUCION_PRIMARY_KEY PRIMARY KEY,
    idProducto NUMBER, CONSTRAINT FIDE_DEVOLUCIONES_ID_PRODUCTO_FOREIGN_KEY FOREIGN KEY(idProducto) REFERENCES FIDE_PRODUCTOS_TB(idProducto),
    idFactura NUMBER, CONSTRAINT FIDE_DEVOLUCIONES_ID_FACTURA_FOREIGN_KEY FOREIGN KEY(idFactura) REFERENCES FIDE_FACTURAS_TB(idFactura),
    Fecha DATE,
    Motivo VARCHAR2(1000));
    ---(Exito)

    
    
    