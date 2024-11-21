create or replace NONEDITIONABLE PACKAGE BODY FIDE_PROYECTO_FINAL_PKG AS

---AQUI INICIAN LOS PROCEDIMIENTOS DE ALMACENADO---

 -- Procedimiento para insertar una categoría
    PROCEDURE FIDE_CATEGORIAS_TB_INSERTAR_SP (
        V_Nombre IN FIDE_CATEGORIAS_TB.Nombre%TYPE,
        V_Descripcion IN FIDE_CATEGORIAS_TB.Descripcion%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_CATEGORIAS_TB (Nombre, Descripcion)
        VALUES (V_Nombre, V_Descripcion);
        COMMIT;
    END FIDE_CATEGORIAS_TB_INSERTAR_SP;

    -- Procedimiento para insertar un estado
    PROCEDURE FIDE_ESTADOS_TB_INSERTAR_SP (
        V_Nombre IN FIDE_ESTADOS_TB.Nombre%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_ESTADOS_TB (Nombre)
        VALUES (V_Nombre);
        COMMIT;
    END FIDE_ESTADOS_TB_INSERTAR_SP;

    -- Procedimiento para insertar un país
    PROCEDURE FIDE_PAISES_TB_INSERTAR_SP (
        V_Nombre IN FIDE_PAISES_TB.Nombre%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_PAISES_TB (Nombre)
        VALUES (V_Nombre);
        COMMIT;
    END FIDE_PAISES_TB_INSERTAR_SP;

    -- Procedimiento para insertar una provincia
    PROCEDURE FIDE_PROVINCIAS_TB_INSERTAR_SP (
        V_Nombre IN FIDE_PROVINCIAS_TB.Nombre%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_PROVINCIAS_TB (Nombre)
        VALUES (V_Nombre);
        COMMIT;
    END FIDE_PROVINCIAS_TB_INSERTAR_SP;

    -- Procedimiento para insertar un cantón
    PROCEDURE FIDE_CANTONES_TB_INSERTAR_SP (
        V_Nombre IN FIDE_CANTONES_TB.Nombre%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_CANTONES_TB (Nombre)
        VALUES (V_Nombre);
        COMMIT;
    END FIDE_CANTONES_TB_INSERTAR_SP;

    -- Procedimiento para insertar un distrito
    PROCEDURE FIDE_DISTRITOS_TB_INSERTAR_SP (
        V_Nombre IN FIDE_DISTRITOS_TB.Nombre%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_DISTRITOS_TB (Nombre)
        VALUES (V_Nombre);
        COMMIT;
    END FIDE_DISTRITOS_TB_INSERTAR_SP;

    -- Procedimiento para insertar una dirección
    PROCEDURE FIDE_DIRECCIONES_TB_INSERTAR_SP (
        V_idPais IN FIDE_DIRECCIONES_TB.idPais%TYPE,
        V_idProvincia IN FIDE_DIRECCIONES_TB.idProvincia%TYPE,
        V_idCanton IN FIDE_DIRECCIONES_TB.idCanton%TYPE,
        V_idDistrito IN FIDE_DIRECCIONES_TB.idDistrito%TYPE,
        V_direccionExacta IN FIDE_DIRECCIONES_TB.direccionExacta%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_DIRECCIONES_TB (idPais, idProvincia, idCanton, idDistrito, direccionExacta)
        VALUES (V_idPais, V_idProvincia, V_idCanton, V_idDistrito, V_direccionExacta);
        COMMIT;
    END FIDE_DIRECCIONES_TB_INSERTAR_SP;

    -- Procedimiento para insertar un proveedor
    PROCEDURE FIDE_PROVEEDORES_TB_INSERTAR_SP (
        V_Nombre IN FIDE_PROVEEDORES_TB.Nombre%TYPE,
        V_idDireccion IN FIDE_PROVEEDORES_TB.idDireccion%TYPE,
        V_Telefono IN FIDE_PROVEEDORES_TB.Telefono%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_PROVEEDORES_TB (Nombre, idDireccion, Telefono)
        VALUES (V_Nombre, V_idDireccion, V_Telefono);
        COMMIT;
    END FIDE_PROVEEDORES_TB_INSERTAR_SP;

    -- Procedimiento para insertar una marca de producto
    PROCEDURE FIDE_MARCASPRODUCTO_TB_INSERTAR_SP (
        V_Nombre IN FIDE_MARCASPRODUCTO_TB.Nombre%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_MARCASPRODUCTO_TB (Nombre)
        VALUES (V_Nombre);
        COMMIT;
    END FIDE_MARCASPRODUCTO_TB_INSERTAR_SP;

    -- Procedimiento para insertar un producto
    PROCEDURE FIDE_PRODUCTOS_TB_INSERTAR_SP (
        V_Nombre IN FIDE_PRODUCTOS_TB.Nombre%TYPE,
        V_Precio IN FIDE_PRODUCTOS_TB.Precio%TYPE,
        V_idCategoria IN FIDE_PRODUCTOS_TB.idCategoria%TYPE,
        V_idEstado IN FIDE_PRODUCTOS_TB.idEstado%TYPE,
        V_idMarca IN FIDE_PRODUCTOS_TB.idMarca%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_PRODUCTOS_TB (Nombre, Precio, idCategoria, idEstado, idMarca)
        VALUES (V_Nombre, V_Precio, V_idCategoria, V_idEstado, V_idMarca);
        COMMIT;
    END FIDE_PRODUCTOS_TB_INSERTAR_SP;

    -- Procedimiento para insertar un producto proveedor
    PROCEDURE FIDE_PRODUCTOPROVEEDOR_TB_INSERTAR_SP (
        V_horarioEntrega IN FIDE_PRODUCTOPROVEEDOR_TB.horarioEntrega%TYPE,
        V_idProveedor IN FIDE_PRODUCTOPROVEEDOR_TB.idProveedor%TYPE,
        V_precioCompra IN FIDE_PRODUCTOPROVEEDOR_TB.precioCompra%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_PRODUCTOPROVEEDOR_TB (horarioEntrega, idProveedor, precioCompra)
        VALUES (V_horarioEntrega, V_idProveedor, V_precioCompra);
        COMMIT;
    END FIDE_PRODUCTOPROVEEDOR_TB_INSERTAR_SP;

    -- Procedimiento para insertar una sucursal
    PROCEDURE FIDE_SUCURSALES_TB_INSERTAR_SP (
        V_Nombre IN FIDE_SUCURSALES_TB.Nombre%TYPE,
        V_idDireccion IN FIDE_SUCURSALES_TB.idDireccion%TYPE,
        V_horaApertura IN FIDE_SUCURSALES_TB.horaApertura%TYPE,
        V_horaCierre IN FIDE_SUCURSALES_TB.horaCierre%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_SUCURSALES_TB (Nombre, idDireccion, horaApertura, horaCierre)
        VALUES (V_Nombre, V_idDireccion, V_horaApertura, V_horaCierre);
        COMMIT;
    END FIDE_SUCURSALES_TB_INSERTAR_SP;

    -- Procedimiento para insertar un inventario
    PROCEDURE FIDE_INVENTARIOS_TB_INSERTAR_SP (
        V_idProducto IN FIDE_INVENTARIOS_TB.idProducto%TYPE,
        V_Cantidad IN FIDE_INVENTARIOS_TB.Cantidad%TYPE,
        V_ultimaActualizacion IN FIDE_INVENTARIOS_TB.ultimaActualizacion%TYPE,
        V_idSucursal IN FIDE_INVENTARIOS_TB.idSucursal%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_INVENTARIOS_TB (idProducto, Cantidad, ultimaActualizacion, idSucursal)
        VALUES (V_idProducto, V_Cantidad, V_ultimaActualizacion, V_idSucursal);
        COMMIT;
    END FIDE_INVENTARIOS_TB_INSERTAR_SP;
    
    -- Procedimiento para insertar un empleado
    PROCEDURE FIDE_EMPLEADOS_TB_INSERTAR_SP (
        V_Nombre IN FIDE_EMPLEADOS_TB.Nombre%TYPE,
        V_idSucursal IN FIDE_EMPLEADOS_TB.idSucursal%TYPE,
        V_Puesto IN FIDE_EMPLEADOS_TB.Puesto%TYPE,
        V_idDireccion IN FIDE_EMPLEADOS_TB.idDireccion%TYPE,
        V_Salario IN FIDE_EMPLEADOS_TB.Salario%TYPE,
        V_Correo IN FIDE_EMPLEADOS_TB.Correo%TYPE,
        V_idEstado IN FIDE_EMPLEADOS_TB.idEstado%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_EMPLEADOS_TB (Nombre, idSucursal, Puesto, idDireccion, Salario, Correo, idEstado)
        VALUES (V_Nombre, V_idSucursal, V_Puesto, V_idDireccion, V_Salario, V_Correo, V_idEstado);
        COMMIT;
    END FIDE_EMPLEADOS_TB_INSERTAR_SP;

    -- Procedimiento para insertar una venta
    PROCEDURE FIDE_VENTAS_TB_INSERTAR_SP (
        V_idEmpleado IN FIDE_VENTAS_TB.idEmpleado%TYPE,
        V_idSucursal IN FIDE_VENTAS_TB.idSucursal%TYPE,
        V_fechaVenta IN FIDE_VENTAS_TB.fechaVenta%TYPE,
        V_Total IN FIDE_VENTAS_TB.Total%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_VENTAS_TB (idEmpleado, idSucursal, fechaVenta, Total)
        VALUES (V_idEmpleado, V_idSucursal, V_fechaVenta, V_Total);
        COMMIT;
    END FIDE_VENTAS_TB_INSERTAR_SP;

    -- Procedimiento para insertar el detalle de una venta
    PROCEDURE FIDE_DETALLEVENTAS_TB_INSERTAR_SP (
        V_idVenta IN FIDE_DETALLEVENTAS_TB.idVenta%TYPE,
        V_idProducto IN FIDE_DETALLEVENTAS_TB.idProducto%TYPE,
        V_Cantidad IN FIDE_DETALLEVENTAS_TB.Cantidad%TYPE,
        V_precioUnitario IN FIDE_DETALLEVENTAS_TB.precioUnitario%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_DETALLEVENTAS_TB (idVenta, idProducto, Cantidad, precioUnitario)
        VALUES (V_idVenta, V_idProducto, V_Cantidad, V_precioUnitario);
        COMMIT;
    END FIDE_DETALLEVENTAS_TB_INSERTAR_SP;

    -- Procedimiento para insertar un método de pago
    PROCEDURE FIDE_METODOSPAGO_TB_INSERTAR_SP (
        V_Nombre IN FIDE_METODOSPAGO_TB.Nombre%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_METODOSPAGO_TB (Nombre)
        VALUES (V_Nombre);
        COMMIT;
    END FIDE_METODOSPAGO_TB_INSERTAR_SP;

    -- Procedimiento para insertar una factura
    PROCEDURE FIDE_FACTURAS_TB_INSERTAR_SP (
        V_idVenta IN FIDE_FACTURAS_TB.idVenta%TYPE,
        V_fechaEmision IN FIDE_FACTURAS_TB.fechaEmision%TYPE,
        V_idMetodoPago IN FIDE_FACTURAS_TB.idMetodoPago%TYPE,
        V_Subtotal IN FIDE_FACTURAS_TB.Subtotal%TYPE,
        V_Impuesto IN FIDE_FACTURAS_TB.Impuesto%TYPE,
        V_Total IN FIDE_FACTURAS_TB.Total%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_FACTURAS_TB (idVenta, fechaEmision, idMetodoPago, Subtotal, Impuesto, Total)
        VALUES (V_idVenta, V_fechaEmision, V_idMetodoPago, V_Subtotal, V_Impuesto, V_Total);
        COMMIT;
    END FIDE_FACTURAS_TB_INSERTAR_SP;

    -- Procedimiento para insertar una devolución
    PROCEDURE FIDE_DEVOLUCIONES_TB_INSERTAR_SP (
        V_idProducto IN FIDE_DEVOLUCIONES_TB.idProducto%TYPE,
        V_idFactura IN FIDE_DEVOLUCIONES_TB.idFactura%TYPE,
        V_Fecha IN FIDE_DEVOLUCIONES_TB.Fecha%TYPE,
        V_Motivo IN FIDE_DEVOLUCIONES_TB.Motivo%TYPE
    ) IS
    BEGIN
        INSERT INTO FIDE_DEVOLUCIONES_TB (idProducto, idFactura, Fecha, Motivo)
        VALUES (V_idProducto, V_idFactura, V_Fecha, V_Motivo);
        COMMIT;
    END FIDE_DEVOLUCIONES_TB_INSERTAR_SP;

END FIDE_PROYECTO_FINAL_PKG;