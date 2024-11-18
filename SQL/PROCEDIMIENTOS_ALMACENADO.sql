--Creación de procedimientos de almacenado para insert en las tablas
---Sofía Sancho, 14/11/2024

CREATE OR REPLACE PROCEDURE FIDE_CATEGORIAS_TB_INSERTAR_SP (
    V_idCategoria IN FIDE_CATEGORIAS_TB.idCategoria%TYPE,
    V_Nombre IN FIDE_CATEGORIAS_TB.Nombre%TYPE,
    V_Descripcion IN FIDE_CATEGORIAS_TB.Descripcion%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_CATEGORIAS_TB (idCategoria, Nombre, Descripcion)
    VALUES (V_idCategoria, V_Nombre, V_Descripcion);
    
    COMMIT;
END FIDE_CATEGORIAS_TB_INSERTAR_SP;

---Prueba
EXEC FIDE_CATEGORIAS_TB_INSERTAR_SP(1, 'Computadoras de escritorio', 'Aquí se almacenan todas las pc');

---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_ESTADOS_TB_INSERTAR_SP (
    V_idEstado IN FIDE_ESTADOS_TB.idEstado%TYPE,
    V_Nombre IN FIDE_ESTADOS_TB.Nombre%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_ESTADOS_TB (idEstado, Nombre)
    VALUES (V_idEstado, V_Nombre);
    COMMIT;
END FIDE_ESTADOS_TB_INSERTAR_SP;
--prueba
EXEC FIDE_ESTADOS_TB_INSERTAR_SP(1, 'Activo');
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_PAISES_TB_INSERTAR_SP (
    V_idPais IN FIDE_PAISES_TB.idPais%TYPE,
    V_Nombre IN FIDE_PAISES_TB.Nombre%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_PAISES_TB (idPais, Nombre)
    VALUES (V_idPais, V_Nombre);
    COMMIT;
END FIDE_PAISES_TB_INSERTAR_SP;
--prueba
EXEC FIDE_PAISES_TB_INSERTAR_SP(1, 'Costa Rica');
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_PROVINCIAS_TB_INSERTAR_SP (
    V_idProvincia IN FIDE_PROVINCIAS_TB.idProvincia%TYPE,
    V_Nombre IN FIDE_PROVINCIAS_TB.Nombre%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_PROVINCIAS_TB (idProvincia, Nombre)
    VALUES (V_idProvincia, V_Nombre);
    COMMIT;
END FIDE_PROVINCIAS_TB_INSERTAR_SP;
--prueba
EXEC FIDE_PROVINCIAS_TB_INSERTAR_SP(1, 'Provincia A');
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_CANTONES_TB_INSERTAR_SP (
    V_idCanton IN FIDE_CANTONES_TB.idCanton%TYPE,
    V_Nombre IN FIDE_CANTONES_TB.Nombre%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_CANTONES_TB (idCanton, Nombre)
    VALUES (V_idCanton, V_Nombre);
    COMMIT;
END FIDE_CANTONES_TB_INSERTAR_SP;
--prueba
EXEC FIDE_CANTONES_TB_INSERTAR_SP(1, 'Puriscal');
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_DISTRITOS_TB_INSERTAR_SP (
    V_idDistrito IN FIDE_DISTRITOS_TB.idDistrito%TYPE,
    V_Nombre IN FIDE_DISTRITOS_TB.Nombre%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_DISTRITOS_TB (idDistrito, Nombre)
    VALUES (V_idDistrito, V_Nombre);
    COMMIT;
END FIDE_DISTRITOS_TB_INSERTAR_SP;
--prueba
EXEC FIDE_DISTRITOS_TB_INSERTAR_SP(1, 'Mercedes Sur');
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_DIRECCIONES_TB_INSERTAR_SP (
    V_idDireccion IN FIDE_DIRECCIONES_TB.idDireccion%TYPE,
    V_idPais IN FIDE_DIRECCIONES_TB.idPais%TYPE,
    V_idProvincia IN FIDE_DIRECCIONES_TB.idProvincia%TYPE,
    V_idCanton IN FIDE_DIRECCIONES_TB.idCanton%TYPE,
    V_idDistrito IN FIDE_DIRECCIONES_TB.idDistrito%TYPE,
    V_Señas IN FIDE_DIRECCIONES_TB.Señas%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_DIRECCIONES_TB (
        idDireccion, idPais, idProvincia, idCanton, idDistrito, Señas)
    VALUES (
        V_idDireccion, V_idPais, V_idProvincia, V_idCanton, V_idDistrito, V_Señas);
    COMMIT;
END FIDE_DIRECCIONES_TB_INSERTAR_SP;
--prueba
EXEC FIDE_DIRECCIONES_TB_INSERTAR_SP(1, 1, 1, 1, 1, 'Cerbatana, Urbanización Miramar');
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_PROVEEDORES_TB_INSERTAR_SP (
    V_idProveedor IN FIDE_PROVEEDORES_TB.idProveedor%TYPE,
    V_Nombre IN FIDE_PROVEEDORES_TB.Nombre%TYPE,
    V_idDireccion IN FIDE_PROVEEDORES_TB.idDireccion%TYPE,
    V_Telefono IN FIDE_PROVEEDORES_TB.Telefono%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_PROVEEDORES_TB (idProveedor, Nombre, idDireccion, Telefono)
    VALUES (V_idProveedor, V_Nombre, V_idDireccion, V_Telefono);
    COMMIT;
END FIDE_PROVEEDORES_TB_INSERTAR_SP;
--prueba
EXEC FIDE_PROVEEDORES_TB_INSERTAR_SP(1, 'Hp', 1, 24171032);
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_MARCASPRODUCTO_TB_INSERTAR_SP (
    V_idMarca IN FIDE_MARCASPRODUCTO_TB.idMarca%TYPE,
    V_Nombre IN FIDE_MARCASPRODUCTO_TB.Nombre%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_MARCASPRODUCTO_TB (idMarca, Nombre)
    VALUES (V_idMarca, V_Nombre);
    COMMIT;
END FIDE_MARCASPRODUCTO_TB_INSERTAR_SP;
--prueba
EXEC FIDE_MARCASPRODUCTO_TB_INSERTAR_SP(1, 'Hp');
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_PRODUCTOS_TB_INSERTAR_SP (
    V_idProducto IN FIDE_PRODUCTOS_TB.idProducto%TYPE,
    V_Nombre IN FIDE_PRODUCTOS_TB.Nombre%TYPE,
    V_Precio IN FIDE_PRODUCTOS_TB.Precio%TYPE,
    V_idCategoria IN FIDE_PRODUCTOS_TB.idCategoria%TYPE,
    V_idEstado IN FIDE_PRODUCTOS_TB.idEstado%TYPE,
    V_idMarca IN FIDE_PRODUCTOS_TB.idMarca%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_PRODUCTOS_TB (idProducto, Nombre, Precio, idCategoria, idEstado, idMarca)
    VALUES (V_idProducto, V_Nombre, V_Precio, V_idCategoria, V_idEstado, V_idMarca);
    COMMIT;
END FIDE_PRODUCTOS_TB_INSERTAR_SP;
--prueba
EXECUTE FIDE_PRODUCTOS_TB_INSERTAR_SP(1, 'Hp Pavilion', 3500 , 1, 1, 1);
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_PRODUCTOPROVEEDOR_TB_INSERTAR_SP (
    V_idProductoProveedor IN FIDE_PRODUCTOPROVEEDOR_TB.idProductoProveedor%TYPE,
    V_horarioEntrega IN FIDE_PRODUCTOPROVEEDOR_TB.horarioEntrega%TYPE,
    V_idProveedor IN FIDE_PRODUCTOPROVEEDOR_TB.idProveedor%TYPE,
    V_precioCompra IN FIDE_PRODUCTOPROVEEDOR_TB.precioCompra%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_PRODUCTOPROVEEDOR_TB (idProductoProveedor, horarioEntrega, idProveedor, precioCompra)
    VALUES (V_idProductoProveedor, V_horarioEntrega, V_idProveedor, V_precioCompra);
    COMMIT;
END FIDE_PRODUCTOPROVEEDOR_TB_INSERTAR_SP;
--prueba
EXEC FIDE_PRODUCTOPROVEEDOR_TB_INSERTAR_SP(1, 'lunes 9 am',1, 35000);
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_SUCURSALES_TB_INSERTAR_SP (
    V_idSucursal IN FIDE_SUCURSALES_TB.idSucursal%TYPE,
    V_Nombre IN FIDE_SUCURSALES_TB.Nombre%TYPE,
    V_idDireccion IN FIDE_SUCURSALES_TB.idDireccion%TYPE,
    V_horaApertura IN FIDE_SUCURSALES_TB.horaApertura%TYPE,
    V_horaCierre IN FIDE_SUCURSALES_TB.horaCierre%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_SUCURSALES_TB (idSucursal, Nombre, idDireccion, horaApertura, horaCierre)
    VALUES (V_idSucursal, V_Nombre, V_idDireccion, V_horaApertura, V_horaCierre);
    COMMIT;
END FIDE_SUCURSALES_TB_INSERTAR_SP;
--prueba
EXEC FIDE_SUCURSALES_TB_INSERTAR_SP(1, 'Sucursal Puriscal', 1, '08:00', '16:00');
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_INVENTARIOS_TB_INSERTAR_SP (
    V_idInventario IN FIDE_INVENTARIOS_TB.idInventario%TYPE,
    V_idProducto IN FIDE_INVENTARIOS_TB.idProducto%TYPE,
    V_Cantidad IN FIDE_INVENTARIOS_TB.Cantidad%TYPE,
    V_ultimaActualizacion IN FIDE_INVENTARIOS_TB.ultimaActualizacion%TYPE,
    V_idSucursal IN FIDE_INVENTARIOS_TB.idSucursal%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_INVENTARIOS_TB (idInventario, idProducto, Cantidad, ultimaActualizacion, idSucursal)
    VALUES (V_idInventario, V_idProducto, V_Cantidad, V_ultimaActualizacion, V_idSucursal);
    COMMIT;
END FIDE_INVENTARIOS_TB_INSERTAR_SP;
--prueba
EXEC FIDE_INVENTARIOS_TB_INSERTAR_SP(1, 1, 240, SYSDATE, 1);
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_EMPLEADOS_TB_INSERTAR_SP (
    V_idEmpleado IN FIDE_EMPLEADOS_TB.idEmpleado%TYPE,
    V_Nombre IN FIDE_EMPLEADOS_TB.Nombre%TYPE,
    V_idSucursal IN FIDE_EMPLEADOS_TB.idSucursal%TYPE,
    V_Puesto IN FIDE_EMPLEADOS_TB.Puesto%TYPE,
    V_idDireccion IN FIDE_EMPLEADOS_TB.idDireccion%TYPE,
    V_Salario IN FIDE_EMPLEADOS_TB.Salario%TYPE,
    V_Correo IN FIDE_EMPLEADOS_TB.Correo%TYPE,
    V_idEstado IN FIDE_EMPLEADOS_TB.idEstado%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_EMPLEADOS_TB (idEmpleado, Nombre, idSucursal, Puesto, idDireccion, Salario, Correo, idEstado)
    VALUES (V_idEmpleado, V_Nombre, V_idSucursal, V_Puesto, V_idDireccion, V_Salario, V_Correo, V_idEstado);
    COMMIT;
END FIDE_EMPLEADOS_TB_INSERTAR_SP;
--prueba
EXEC FIDE_EMPLEADOS_TB_INSERTAR_SP(1, 'Sofía Sancho', 1, 'Gerente', 1, 150000, 'sofiasancho0219@innovatech.com', 1);
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_VENTAS_TB_INSERTAR_SP (
    V_idVenta IN FIDE_VENTAS_TB.idVenta%TYPE,
    V_idEmpleado IN FIDE_VENTAS_TB.idEmpleado%TYPE,
    V_idSucursal IN FIDE_VENTAS_TB.idSucursal%TYPE,
    V_fechaVenta IN FIDE_VENTAS_TB.fechaVenta%TYPE,
    V_Total IN FIDE_VENTAS_TB.Total%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_VENTAS_TB (idVenta, idEmpleado, idSucursal, fechaVenta, Total)
    VALUES (V_idVenta, V_idEmpleado, V_idSucursal, V_fechaVenta, V_Total);
    COMMIT;
END FIDE_VENTAS_TB_INSERTAR_SP;
--prueba
EXEC FIDE_VENTAS_TB_INSERTAR_SP(1, 1, 1, SYSDATE, 20000);
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_DETALLEVENTAS_TB_INSERTAR_SP (
    V_idDetalle IN FIDE_DETALLEVENTAS_TB.idDetalle%TYPE,
    V_idVenta IN FIDE_DETALLEVENTAS_TB.idVenta%TYPE,
    V_idProducto IN FIDE_DETALLEVENTAS_TB.idProducto%TYPE,
    V_Cantidad IN FIDE_DETALLEVENTAS_TB.Cantidad%TYPE,
    V_precioUnitario IN FIDE_DETALLEVENTAS_TB.precioUnitario%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_DETALLEVENTAS_TB (idDetalle, idVenta, idProducto, Cantidad, precioUnitario)
    VALUES (V_idDetalle, V_idVenta, V_idProducto, V_Cantidad, V_precioUnitario);
    COMMIT;
END FIDE_DETALLEVENTAS_TB_INSERTAR_SP;
--prueba
EXEC FIDE_DETALLEVENTAS_TB_INSERTAR_SP(1, 1, 1, 2, 10000);
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_METODOSPAGO_TB_INSERTAR_SP (
    V_idMetodoPago IN FIDE_METODOSPAGO_TB.idMetodoPago%TYPE,
    V_Nombre IN FIDE_METODOSPAGO_TB.Nombre%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_METODOSPAGO_TB (idMetodoPago, Nombre)
    VALUES (V_idMetodoPago, V_Nombre);
    COMMIT;
END FIDE_METODOSPAGO_TB_INSERTAR_SP;
--prueba
EXEC FIDE_METODOSPAGO_TB_INSERTAR_SP(1, 'Efectivo');
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_FACTURAS_TB_INSERTAR_SP (
    V_idFactura IN FIDE_FACTURAS_TB.idFactura%TYPE,
    V_idVenta IN FIDE_FACTURAS_TB.idVenta%TYPE,
    V_fechaEmision IN FIDE_FACTURAS_TB.fechaEmision%TYPE,
    V_idMetodoPago IN FIDE_FACTURAS_TB.idMetodoPago%TYPE,
    V_Subtotal IN FIDE_FACTURAS_TB.Subtotal%TYPE,
    V_Impuesto IN FIDE_FACTURAS_TB.Impuesto%TYPE,
    V_Total IN FIDE_FACTURAS_TB.Total%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_FACTURAS_TB (idFactura, idVenta, fechaEmision, idMetodoPago, Subtotal, Impuesto, Total)
    VALUES (V_idFactura, V_idVenta, V_fechaEmision, V_idMetodoPago, V_Subtotal, V_Impuesto, V_Total);
    COMMIT;
END FIDE_FACTURAS_TB_INSERTAR_SP;
--prueba
EXEC FIDE_FACTURAS_TB_INSERTAR_SP(1, 1, SYSDATE, 1, 35000, 35400, 400);
---(Exito)

CREATE OR REPLACE PROCEDURE FIDE_DEVOLUCIONES_TB_INSERTAR_SP (
    V_idDevolucion IN FIDE_DEVOLUCIONES_TB.idDevolucion%TYPE,
    V_idProducto IN FIDE_DEVOLUCIONES_TB.idProducto%TYPE,
    V_idFactura IN FIDE_DEVOLUCIONES_TB.idFactura%TYPE,
    V_Fecha IN FIDE_DEVOLUCIONES_TB.Fecha%TYPE,
    V_Motivo IN FIDE_DEVOLUCIONES_TB.Motivo%TYPE
)
IS
BEGIN
    INSERT INTO FIDE_DEVOLUCIONES_TB (idDevolucion, idProducto, idFactura, Fecha, Motivo)
    VALUES (V_idDevolucion, V_idProducto, V_idFactura, V_Fecha, V_Motivo);
    COMMIT;
END FIDE_DEVOLUCIONES_TB_INSERTAR_SP;
--prueba
EXEC FIDE_DEVOLUCIONES_TB_INSERTAR_SP(1, 1, 1, SYSDATE, 'PC con pantallas rayada');
---(Exito)
