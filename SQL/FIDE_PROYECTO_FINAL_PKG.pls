CREATE OR REPLACE PACKAGE FIDE_PROYECTO_FINAL_PKG AS
 -- Declaración de los procedimientos en la especificación
    PROCEDURE FIDE_CATEGORIAS_TB_INSERTAR_SP (
        V_idCategoria IN FIDE_CATEGORIAS_TB.idCategoria%TYPE,
        V_Nombre IN FIDE_CATEGORIAS_TB.Nombre%TYPE,
        V_Descripcion IN FIDE_CATEGORIAS_TB.Descripcion%TYPE
    ) ;

    PROCEDURE FIDE_ESTADOS_TB_INSERTAR_SP (
        V_idEstado IN FIDE_ESTADOS_TB.idEstado%TYPE,
        V_Nombre IN FIDE_ESTADOS_TB.Nombre%TYPE
    );

    PROCEDURE FIDE_PAISES_TB_INSERTAR_SP (
        V_idPais IN FIDE_PAISES_TB.idPais%TYPE,
        V_Nombre IN FIDE_PAISES_TB.Nombre%TYPE
    );

    PROCEDURE FIDE_PROVINCIAS_TB_INSERTAR_SP (
        V_idProvincia IN FIDE_PROVINCIAS_TB.idProvincia%TYPE,
        V_Nombre IN FIDE_PROVINCIAS_TB.Nombre%TYPE
    );

    PROCEDURE FIDE_CANTONES_TB_INSERTAR_SP (
        V_idCanton IN FIDE_CANTONES_TB.idCanton%TYPE,
        V_Nombre IN FIDE_CANTONES_TB.Nombre%TYPE
    );

    PROCEDURE FIDE_DISTRITOS_TB_INSERTAR_SP (
        V_idDistrito IN FIDE_DISTRITOS_TB.idDistrito%TYPE,
        V_Nombre IN FIDE_DISTRITOS_TB.Nombre%TYPE
    );

    PROCEDURE FIDE_DIRECCIONES_TB_INSERTAR_SP (
        V_idDireccion IN FIDE_DIRECCIONES_TB.idDireccion%TYPE,
        V_idPais IN FIDE_DIRECCIONES_TB.idPais%TYPE,
        V_idProvincia IN FIDE_DIRECCIONES_TB.idProvincia%TYPE,
        V_idCanton IN FIDE_DIRECCIONES_TB.idCanton%TYPE,
        V_idDistrito IN FIDE_DIRECCIONES_TB.idDistrito%TYPE,
        V_direccionExacta IN FIDE_DIRECCIONES_TB.direccionExacta%TYPE
    );

    PROCEDURE FIDE_PROVEEDORES_TB_INSERTAR_SP (
        V_idProveedor IN FIDE_PROVEEDORES_TB.idProveedor%TYPE,
        V_Nombre IN FIDE_PROVEEDORES_TB.Nombre%TYPE,
        V_idDireccion IN FIDE_PROVEEDORES_TB.idDireccion%TYPE,
        V_Telefono IN FIDE_PROVEEDORES_TB.Telefono%TYPE
    );

    PROCEDURE FIDE_MARCASPRODUCTO_TB_INSERTAR_SP (
        V_idMarca IN FIDE_MARCASPRODUCTO_TB.idMarca%TYPE,
        V_Nombre IN FIDE_MARCASPRODUCTO_TB.Nombre%TYPE
    );

    PROCEDURE FIDE_PRODUCTOS_TB_INSERTAR_SP (
        V_idProducto IN FIDE_PRODUCTOS_TB.idProducto%TYPE,
        V_Nombre IN FIDE_PRODUCTOS_TB.Nombre%TYPE,
        V_Precio IN FIDE_PRODUCTOS_TB.Precio%TYPE,
        V_idCategoria IN FIDE_PRODUCTOS_TB.idCategoria%TYPE,
        V_idEstado IN FIDE_PRODUCTOS_TB.idEstado%TYPE,
        V_idMarca IN FIDE_PRODUCTOS_TB.idMarca%TYPE
    );

    PROCEDURE FIDE_PRODUCTOPROVEEDOR_TB_INSERTAR_SP (
        V_idProductoProveedor IN FIDE_PRODUCTOPROVEEDOR_TB.idProductoProveedor%TYPE,
        V_horarioEntrega IN FIDE_PRODUCTOPROVEEDOR_TB.horarioEntrega%TYPE,
        V_idProveedor IN FIDE_PRODUCTOPROVEEDOR_TB.idProveedor%TYPE,
        V_precioCompra IN FIDE_PRODUCTOPROVEEDOR_TB.precioCompra%TYPE
    );

    PROCEDURE FIDE_SUCURSALES_TB_INSERTAR_SP (
        V_idSucursal IN FIDE_SUCURSALES_TB.idSucursal%TYPE,
        V_Nombre IN FIDE_SUCURSALES_TB.Nombre%TYPE,
        V_idDireccion IN FIDE_SUCURSALES_TB.idDireccion%TYPE,
        V_horaApertura IN FIDE_SUCURSALES_TB.horaApertura%TYPE,
        V_horaCierre IN FIDE_SUCURSALES_TB.horaCierre%TYPE
    );

    PROCEDURE FIDE_INVENTARIOS_TB_INSERTAR_SP (
        V_idInventario IN FIDE_INVENTARIOS_TB.idInventario%TYPE,
        V_idProducto IN FIDE_INVENTARIOS_TB.idProducto%TYPE,
        V_Cantidad IN FIDE_INVENTARIOS_TB.Cantidad%TYPE,
        V_ultimaActualizacion IN FIDE_INVENTARIOS_TB.ultimaActualizacion%TYPE,
        V_idSucursal IN FIDE_INVENTARIOS_TB.idSucursal%TYPE
    );

    PROCEDURE FIDE_EMPLEADOS_TB_INSERTAR_SP (
        V_idEmpleado IN FIDE_EMPLEADOS_TB.idEmpleado%TYPE,
        V_Nombre IN FIDE_EMPLEADOS_TB.Nombre%TYPE,
        V_idSucursal IN FIDE_EMPLEADOS_TB.idSucursal%TYPE,
        V_Puesto IN FIDE_EMPLEADOS_TB.Puesto%TYPE,
        V_idDireccion IN FIDE_EMPLEADOS_TB.idDireccion%TYPE,
        V_Salario IN FIDE_EMPLEADOS_TB.Salario%TYPE,
        V_Correo IN FIDE_EMPLEADOS_TB.Correo%TYPE,
        V_idEstado IN FIDE_EMPLEADOS_TB.idEstado%TYPE
    );

    PROCEDURE FIDE_VENTAS_TB_INSERTAR_SP (
        V_idVenta IN FIDE_VENTAS_TB.idVenta%TYPE,
        V_idEmpleado IN FIDE_VENTAS_TB.idEmpleado%TYPE,
        V_idSucursal IN FIDE_VENTAS_TB.idSucursal%TYPE,
        V_fechaVenta IN FIDE_VENTAS_TB.fechaVenta%TYPE,
        V_Total IN FIDE_VENTAS_TB.Total%TYPE
    );

    PROCEDURE FIDE_DETALLEVENTAS_TB_INSERTAR_SP (
        V_idDetalle IN FIDE_DETALLEVENTAS_TB.idDetalle%TYPE,
        V_idVenta IN FIDE_DETALLEVENTAS_TB.idVenta%TYPE,
        V_idProducto IN FIDE_DETALLEVENTAS_TB.idProducto%TYPE,
        V_Cantidad IN FIDE_DETALLEVENTAS_TB.Cantidad%TYPE,
        V_precioUnitario IN FIDE_DETALLEVENTAS_TB.precioUnitario%TYPE
    );

    PROCEDURE FIDE_METODOSPAGO_TB_INSERTAR_SP (
        V_idMetodoPago IN FIDE_METODOSPAGO_TB.idMetodoPago%TYPE,
        V_Nombre IN FIDE_METODOSPAGO_TB.Nombre%TYPE
    );

    PROCEDURE FIDE_FACTURAS_TB_INSERTAR_SP (
        V_idFactura IN FIDE_FACTURAS_TB.idFactura%TYPE,
        V_idVenta IN FIDE_FACTURAS_TB.idVenta%TYPE,
        V_fechaEmision IN FIDE_FACTURAS_TB.fechaEmision%TYPE,
        V_idMetodoPago IN FIDE_FACTURAS_TB.idMetodoPago%TYPE,
        V_Subtotal IN FIDE_FACTURAS_TB.Subtotal%TYPE,
        V_Impuesto IN FIDE_FACTURAS_TB.Impuesto%TYPE,
        V_Total IN FIDE_FACTURAS_TB.Total%TYPE
    );

    PROCEDURE FIDE_DEVOLUCIONES_TB_INSERTAR_SP (
        V_idDevolucion IN FIDE_DEVOLUCIONES_TB.idDevolucion%TYPE,
        V_idProducto IN FIDE_DEVOLUCIONES_TB.idProducto%TYPE,
        V_idFactura IN FIDE_DEVOLUCIONES_TB.idFactura%TYPE,
        V_Fecha IN FIDE_DEVOLUCIONES_TB.Fecha%TYPE,
        V_Motivo IN FIDE_DEVOLUCIONES_TB.Motivo%TYPE
    );
END FIDE_PROYECTO_FINAL_PKG;
