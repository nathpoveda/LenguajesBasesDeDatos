--
--       Declaración del Package
--
CREATE OR REPLACE PACKAGE fide_proyecto_final_pkg AS
 
 ---------------PROCEDIMEINTOS DE ALMACENADO----------------------------

    PROCEDURE fide_categorias_tb_insertar_sp (
        v_nombre      IN fide_categorias_tb.nombre%TYPE,
        v_descripcion IN fide_categorias_tb.descripcion%TYPE
    );

    PROCEDURE fide_estados_tb_insertar_sp (
        v_nombre IN fide_estados_tb.nombre%TYPE
    );

    PROCEDURE fide_paises_tb_insertar_sp (
        v_nombre IN fide_paises_tb.nombre%TYPE
    );

   PROCEDURE fide_provincias_tb_insertar_sp (
        v_nombre IN fide_provincias_tb.nombre%TYPE,
    v_idPais IN fide_provincias_tb.idPais%TYPE
    );

    PROCEDURE fide_cantones_tb_insertar_sp (
        v_nombre IN fide_cantones_tb.nombre%TYPE,
        v_idProvincia IN fide_cantones_tb.idProvincia%TYPE
    );

    PROCEDURE fide_distritos_tb_insertar_sp (
        v_nombre IN fide_distritos_tb.nombre%TYPE,
        v_idCanton IN fide_distritos_tb.idCanton%TYPE
    );

    PROCEDURE fide_direcciones_tb_insertar_sp (
        v_idpais          IN fide_direcciones_tb.idpais%TYPE,
        v_idprovincia     IN fide_direcciones_tb.idprovincia%TYPE,
        v_idcanton        IN fide_direcciones_tb.idcanton%TYPE,
        v_iddistrito      IN fide_direcciones_tb.iddistrito%TYPE,
        v_direccionexacta IN fide_direcciones_tb.direccionexacta%TYPE
    );

    PROCEDURE fide_proveedores_tb_insertar_sp (
        v_nombre      IN fide_proveedores_tb.nombre%TYPE,
        v_iddireccion IN fide_proveedores_tb.iddireccion%TYPE,
        v_telefono    IN fide_proveedores_tb.telefono%TYPE
    );

    PROCEDURE fide_marcasproducto_tb_insertar_sp (
        v_nombre IN fide_marcasproducto_tb.nombre%TYPE
    );

    PROCEDURE fide_productos_tb_insertar_sp (
        v_nombre      IN fide_productos_tb.nombre%TYPE,
        v_precio      IN fide_productos_tb.precio%TYPE,
        v_idcategoria IN fide_productos_tb.idcategoria%TYPE,
        v_idestado    IN fide_productos_tb.idestado%TYPE,
        v_idmarca     IN fide_productos_tb.idmarca%TYPE
    );

    PROCEDURE fide_productoproveedor_tb_insertar_sp (
        v_horarioentrega IN fide_productoproveedor_tb.horarioentrega%TYPE,
        v_idproveedor    IN fide_productoproveedor_tb.idproveedor%TYPE,
        v_preciocompra   IN fide_productoproveedor_tb.preciocompra%TYPE
    );

    PROCEDURE fide_sucursales_tb_insertar_sp (
        v_nombre       IN fide_sucursales_tb.nombre%TYPE,
        v_iddireccion  IN fide_sucursales_tb.iddireccion%TYPE,
        v_horaapertura IN fide_sucursales_tb.horaapertura%TYPE,
        v_horacierre   IN fide_sucursales_tb.horacierre%TYPE
    );

    PROCEDURE fide_inventarios_tb_insertar_sp (
        v_idproducto          IN fide_inventarios_tb.idproducto%TYPE,
        v_cantidad            IN fide_inventarios_tb.cantidad%TYPE,
        v_ultimaactualizacion IN fide_inventarios_tb.ultimaactualizacion%TYPE,
        v_idsucursal          IN fide_inventarios_tb.idsucursal%TYPE
    );

    PROCEDURE fide_empleados_tb_insertar_sp (
        v_nombre      IN fide_empleados_tb.nombre%TYPE,
        v_idsucursal  IN fide_empleados_tb.idsucursal%TYPE,
        v_puesto      IN fide_empleados_tb.puesto%TYPE,
        v_iddireccion IN fide_empleados_tb.iddireccion%TYPE,
        v_salario     IN fide_empleados_tb.salario%TYPE,
        v_correo      IN fide_empleados_tb.correo%TYPE,
        v_idestado    IN fide_empleados_tb.idestado%TYPE
    );

    PROCEDURE fide_ventas_tb_insertar_sp (
        v_idempleado IN fide_ventas_tb.idempleado%TYPE,
        v_idsucursal IN fide_ventas_tb.idsucursal%TYPE,
        v_fechaventa IN fide_ventas_tb.fechaventa%TYPE,
        v_total      IN fide_ventas_tb.total%TYPE
    );

    PROCEDURE fide_detalleventas_tb_insertar_sp (
        v_idventa        IN fide_detalleventas_tb.idventa%TYPE,
        v_idproducto     IN fide_detalleventas_tb.idproducto%TYPE,
        v_cantidad       IN fide_detalleventas_tb.cantidad%TYPE,
        v_preciounitario IN fide_detalleventas_tb.preciounitario%TYPE
    );

    PROCEDURE fide_metodospago_tb_insertar_sp (
        v_nombre IN fide_metodospago_tb.nombre%TYPE
    );

    PROCEDURE fide_facturas_tb_insertar_sp (
        v_idventa      IN fide_facturas_tb.idventa%TYPE,
        v_fechaemision IN fide_facturas_tb.fechaemision%TYPE,
        v_idmetodopago IN fide_facturas_tb.idmetodopago%TYPE,
        v_subtotal     IN fide_facturas_tb.subtotal%TYPE,
        v_impuesto     IN fide_facturas_tb.impuesto%TYPE,
        v_total        IN fide_facturas_tb.total%TYPE
    );

    PROCEDURE fide_devoluciones_tb_insertar_sp (
        v_idproducto IN fide_devoluciones_tb.idproducto%TYPE,
        v_idfactura  IN fide_devoluciones_tb.idfactura%TYPE,
        v_fecha      IN fide_devoluciones_tb.fecha%TYPE,
        v_motivo     IN fide_devoluciones_tb.motivo%TYPE
    );

    PROCEDURE fide_roles_tb_insertar_sp (
        v_nombre IN fide_roles_tb.nombre%TYPE,
        v_idempleado IN fide_roles_tb.idempleado%TYPE
    );
    
    ---------------PROCEDIMEINTOS ALMACENADO UPDATE----------------------
    
     PROCEDURE fide_categorias_tb_actualizar_sp (
        v_id          IN fide_categorias_tb.idCategoria%TYPE, 
        v_nombre      IN fide_categorias_tb.nombre%TYPE,
        v_descripcion IN fide_categorias_tb.descripcion%TYPE
    );
    
    PROCEDURE fide_estados_tb_actualizar_sp (
        v_idestado IN fide_estados_tb.idEstado%TYPE,
        v_nuevo_nombre IN fide_estados_tb.nombre%TYPE
    );
    
     PROCEDURE fide_paises_tb_actualizar_sp (
        v_idpais IN fide_paises_tb.idpais%TYPE,
        v_nuevo_nombre IN fide_paises_tb.nombre%TYPE
    );
    
     PROCEDURE fide_provincias_tb_actualizar_sp (
        v_idprovincia IN fide_provincias_tb.idprovincia%TYPE,
        v_nuevo_nombre IN fide_provincias_tb.nombre%TYPE
    );
    
     PROCEDURE fide_cantones_tb_actualizar_sp (
        v_idcanton IN fide_cantones_tb.idcanton%TYPE,
        v_nuevo_nombre IN fide_cantones_tb.nombre%TYPE
    );
    
     PROCEDURE fide_distritos_tb_actualizar_sp (
        v_iddistrito IN fide_distritos_tb.iddistrito%TYPE,
        v_nuevo_nombre IN fide_distritos_tb.nombre%TYPE
    );
    
    PROCEDURE fide_direcciones_tb_actualizar_sp (
        v_iddireccion IN fide_direcciones_tb.iddireccion%TYPE,
        v_nueva_direccion IN fide_direcciones_tb.direccionexacta%TYPE
    );
    
    PROCEDURE fide_proveedores_tb_actualizar_sp (
        v_idproveedor IN fide_proveedores_tb.idproveedor%TYPE,
        v_nuevo_nombre IN fide_proveedores_tb.nombre%TYPE
    );
    
    PROCEDURE fide_marcasproducto_tb_actualizar_sp (
        v_idmarca IN fide_marcasproducto_tb.IDMarca%TYPE,
        v_nuevo_nombre IN fide_marcasproducto_tb.nombre%TYPE
    );
    
     PROCEDURE fide_productos_tb_actualizar_sp (
        v_idproducto   IN fide_productos_tb.idproducto%TYPE,
        v_nombre       IN fide_productos_tb.nombre%TYPE,
        v_precio       IN fide_productos_tb.precio%TYPE,
        v_idcategoria  IN fide_productos_tb.idcategoria%TYPE,
        v_idestado     IN fide_productos_tb.idestado%TYPE,
        v_idmarca      IN fide_productos_tb.idmarca%TYPE
    );
    
  PROCEDURE fide_productoproveedor_tb_actualizar_sp (
        v_idproducto    IN fide_productoproveedor_tb.idproducto%TYPE,
        v_nuevo_precio  IN fide_productoproveedor_tb.preciocompra%TYPE
   );
    
  PROCEDURE fide_sucursales_tb_actualizar_sp (
        v_idsucursal    IN fide_sucursales_tb.idsucursal%TYPE,
        v_nuevo_nombre  IN fide_sucursales_tb.nombre%TYPE,
        v_nueva_horaapertura IN fide_sucursales_tb.horaapertura%TYPE,
        v_nueva_horacierre   IN fide_sucursales_tb.horacierre%TYPE
    );
    
  PROCEDURE fide_inventarios_tb_actualizar_sp (
        v_idproducto          IN fide_inventarios_tb.idproducto%TYPE,
        v_nueva_cantidad      IN fide_inventarios_tb.cantidad%TYPE,
        v_ultimaactualizacion IN fide_inventarios_tb.ultimaactualizacion%TYPE,
        v_idsucursal          IN fide_inventarios_tb.idsucursal%TYPE
    );
    
    PROCEDURE fide_empleados_tb_actualizar_sp (
        v_idempleado IN fide_empleados_tb.idempleado%TYPE,
        v_nuevo_salario IN fide_empleados_tb.salario%TYPE,
        v_nuevo_puesto IN fide_empleados_tb.puesto%TYPE
    );
    
    PROCEDURE fide_ventas_tb_actualizar_sp (
        v_idventa IN fide_ventas_tb.idventa%TYPE,
        v_nuevo_total IN fide_ventas_tb.total%TYPE
    );
    
     PROCEDURE fide_detalleventas_tb_actualizar_sp (
        v_idventa        IN fide_detalleventas_tb.idventa%TYPE,
        v_idproducto     IN fide_detalleventas_tb.idproducto%TYPE,
        v_nueva_cantidad IN fide_detalleventas_tb.cantidad%TYPE,
        v_nuevo_precio   IN fide_detalleventas_tb.preciounitario%TYPE
    );
    
     PROCEDURE fide_metodospago_tb_actualizar_sp (
        v_idmetodopago IN fide_metodospago_tb.idmetodopago%TYPE,
        v_nuevo_nombre IN fide_metodospago_tb.nombre%TYPE
    );

    PROCEDURE fide_facturas_tb_actualizar_sp (
        v_idventa      IN fide_facturas_tb.idventa%TYPE,
        v_fechaemision IN fide_facturas_tb.fechaemision%TYPE,
        v_idmetodopago IN fide_facturas_tb.idmetodopago%TYPE,
        v_subtotal     IN fide_facturas_tb.subtotal%TYPE,
        v_impuesto     IN fide_facturas_tb.impuesto%TYPE,
        v_total        IN fide_facturas_tb.total%TYPE
    );
    
    PROCEDURE fide_devoluciones_tb_actualizar_sp (
        v_iddevolucion IN fide_devoluciones_tb.iddevolucion%TYPE,
        v_idproducto   IN fide_devoluciones_tb.idproducto%TYPE,
        v_idfactura    IN fide_devoluciones_tb.idfactura%TYPE,
        v_fecha        IN fide_devoluciones_tb.fecha%TYPE,
        v_motivo       IN fide_devoluciones_tb.motivo%TYPE
    );

    PROCEDURE fide_roles_tb_actualizar_sp (
        v_idrol IN fide_roles_tb.idrol%TYPE,
        v_nuevo_nombre IN fide_roles_tb.nombre%TYPE,
        v_nuevo_idempleado IN fide_roles_tb.idempleado%TYPE
    );

     ---------------PROCEDIMEINTOS ALMACENADO DELETE----------------------
    PROCEDURE FIDE_CATEGORIAS_TB_ELIMINAR_SP(
        V_idCategoria IN FIDE_CATEGORIAS_TB.idCategoria%TYPE
    );

    PROCEDURE FIDE_PAISES_TB_ELIMINAR_SP (
        V_idPais IN FIDE_PAISES_TB.idPais%TYPE
    );

    PROCEDURE FIDE_PROVINCIAS_TB_ELIMINAR_SP (
        V_idProvincia IN FIDE_PROVINCIAS_TB.idProvincia%TYPE
    );

    PROCEDURE FIDE_CANTONES_TB_ELIMINAR_SP (
        V_idCanton IN FIDE_CANTONES_TB.idCanton%TYPE
    );

    PROCEDURE FIDE_DISTRITOS_TB_ELIMINAR_SP (
        V_idDistrito IN FIDE_DISTRITOS_TB.idDistrito%TYPE
    );

    PROCEDURE FIDE_DIRECCIONES_TB_ELIMINAR_SP (
        V_idDireccion IN FIDE_DIRECCIONES_TB.idDireccion%TYPE
    );

    PROCEDURE FIDE_PROVEEDORES_TB_ELIMINAR_SP (
        V_idProveedor IN FIDE_PROVEEDORES_TB.idProveedor%TYPE
    );

    PROCEDURE FIDE_MARCASPRODUCTO_TB_ELIMINAR_SP (
        V_idMarca IN FIDE_MARCASPRODUCTO_TB.idMarca%TYPE
    );

    PROCEDURE FIDE_PRODUCTOS_TB_ELIMINAR_SP (
        V_idProducto IN FIDE_PRODUCTOS_TB.idProducto%TYPE
    );

    PROCEDURE FIDE_PRODUCTOPROVEEDOR_TB_ELIMINAR_SP (
        V_idProducto IN FIDE_PRODUCTOPROVEEDOR_TB.idProducto%TYPE,
        V_idProveedor IN FIDE_PRODUCTOPROVEEDOR_TB.idProveedor%TYPE
    );

    PROCEDURE FIDE_SUCURSALES_TB_ELIMINAR_SP (
        V_idSucursal IN FIDE_SUCURSALES_TB.idSucursal%TYPE
    );

    PROCEDURE FIDE_INVENTARIOS_TB_ELIMINAR_SP (
        V_idInventario IN FIDE_INVENTARIOS_TB.idInventario%TYPE
    );

    PROCEDURE FIDE_EMPLEADOS_TB_ELIMINAR_SP (
        V_idEmpleado IN FIDE_EMPLEADOS_TB.idEmpleado%TYPE
    );
    
    PROCEDURE FIDE_VENTAS_TB_ELIMINAR_SP (
        V_idVenta IN FIDE_VENTAS_TB.idVenta%TYPE
    );

    
    PROCEDURE FIDE_DETALLEVENTAS_TB_ELIMINAR_SP (
        V_idDetalle IN FIDE_DETALLEVENTAS_TB.idDetalle%TYPE
    );

    PROCEDURE FIDE_METODOSPAGO_TB_ELIMINAR_SP (
        V_idMetodoPago IN FIDE_METODOSPAGO_TB.idMetodoPago%TYPE
    );

    PROCEDURE FIDE_FACTURAS_TB_ELIMINAR_SP (
        V_idFactura IN FIDE_FACTURAS_TB.idFactura%TYPE
    );


    PROCEDURE FIDE_DEVOLUCIONES_TB_ELIMINAR_SP (
        V_idDevolucion IN FIDE_DEVOLUCIONES_TB.idDevolucion%TYPE
    );

    PROCEDURE FIDE_ROLES_TB_ELIMINAR_SP (
        V_idRol IN FIDE_ROLES_TB.idRol%TYPE
    );      
--------------------FUNCIONES------------------------

    FUNCTION categorias_generar_secuencia_fn RETURN VARCHAR2;

    FUNCTION estados_generar_secuencia_fn RETURN NUMBER;

    FUNCTION paises_generar_secuencia_fn RETURN NUMBER;

    FUNCTION provincias_generar_secuencia_fn RETURN NUMBER;

    FUNCTION cantones_generar_secuencia_fn RETURN NUMBER;

    FUNCTION distritos_generar_secuencia_fn RETURN NUMBER;

    FUNCTION direcciones_generar_secuencia_fn RETURN NUMBER;

    FUNCTION proveedores_generar_secuencia_fn RETURN NUMBER;

    FUNCTION marcasproducto_generar_secuencia_fn RETURN NUMBER;

    FUNCTION productos_generar_secuencia_fn RETURN NUMBER;

    FUNCTION productoproveedor_generar_secuencia_fn RETURN NUMBER;

    FUNCTION sucursales_generar_secuencia_fn RETURN NUMBER;

    FUNCTION inventarios_generar_secuencia_fn RETURN NUMBER;

    FUNCTION empleados_generar_secuencia_fn RETURN NUMBER;

    FUNCTION ventas_generar_secuencia_fn RETURN NUMBER;

    FUNCTION detalleventas_generar_secuencia_fn RETURN NUMBER;

    FUNCTION metodospago_generar_secuencia_fn RETURN NUMBER;

    FUNCTION facturas_generar_secuencia_fn RETURN NUMBER;

    FUNCTION devoluciones_generar_secuencia_fn RETURN NUMBER;

    FUNCTION roles_generar_secuencia_fn RETURN NUMBER;  

-------------FIN DEL PAQUETE------------------------------------------  

END fide_proyecto_final_pkg;
