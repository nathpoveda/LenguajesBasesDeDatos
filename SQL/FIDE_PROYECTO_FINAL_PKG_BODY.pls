create or replace PACKAGE BODY fide_proyecto_final_pkg AS

----------------------------------------------------------------PROCEDIMIENTOS DE ALMACENADO--------------------------------------------------------------------

----------------------------------------------------------Procedimiento para insertar una categoria-------------------------------------------------------------
    PROCEDURE fide_categorias_tb_insertar_sp (
        v_nombre      IN fide_categorias_tb.nombre%TYPE,
        v_descripcion IN fide_categorias_tb.descripcion%TYPE
        
    ) IS   
    BEGIN
        INSERT INTO fide_categorias_tb (
            nombre,
            descripcion
        ) VALUES (
            v_nombre,
            v_descripcion
        );
        
        COMMIT;
    END fide_categorias_tb_insertar_sp;

------------------------------------------------------------ Procedimiento para insertar un estado-------------------------------------------------------------
    PROCEDURE fide_estados_tb_insertar_sp (
        v_nombre IN fide_estados_tb.nombre%TYPE
    ) IS
        CURSOR insertar_estados IS 
        SELECT * FROM fide_estados_tb;
    BEGIN
        INSERT INTO fide_estados_tb ( nombre ) VALUES ( v_nombre );
        
        FOR estado IN insertar_estados LOOP
            IF LENGTH(estado.nombre) > 5 THEN
                DBMS_OUTPUT.PUT_LINE('Estado: ' || estado.nombre);
            END IF;
        END LOOP;

        COMMIT;
    END fide_estados_tb_insertar_sp;

------------------------------------------------------------ Procedimiento para insertar un pa√≠s--------------------------------------------------------------
    PROCEDURE fide_paises_tb_insertar_sp (
        v_nombre IN fide_paises_tb.nombre%TYPE
    ) IS
        CURSOR insertar_paises IS 
        SELECT * FROM fide_paises_tb;
    
    BEGIN
        INSERT INTO fide_paises_tb ( nombre ) VALUES ( v_nombre );
        
        FOR pais IN insertar_paises LOOP
            IF LENGTH(pais.nombre) > 7 THEN
                DBMS_OUTPUT.PUT_LINE('PaÌs: ' || pais.nombre);
            END IF;
        END LOOP;

        COMMIT;
    END fide_paises_tb_insertar_sp;

--------------------------------------------------------- Procedimiento para insertar una provincia----------------------------------------------------------
    PROCEDURE fide_provincias_tb_insertar_sp (
        v_nombre IN fide_provincias_tb.nombre%TYPE
    ) IS
         CURSOR insertar_provincias IS 
        SELECT * FROM fide_provincias_tb;
    BEGIN
        INSERT INTO fide_provincias_tb ( nombre ) VALUES ( v_nombre );
        
        FOR provincia IN insertar_provincias LOOP
            IF LENGTH(provincia.nombre) > 5 THEN
                DBMS_OUTPUT.PUT_LINE('Provincia: ' || provincia.nombre);
            END IF;
        END LOOP;

        COMMIT;
    END fide_provincias_tb_insertar_sp;

-------------------------------------------------------- Procedimiento para insertar un cant√≥n--------------------------------------------------------------
    PROCEDURE fide_cantones_tb_insertar_sp (
        v_nombre IN fide_cantones_tb.nombre%TYPE
    ) IS
        CURSOR insertar_cantones IS 
        SELECT * FROM fide_cantones_tb;
    
    BEGIN
        INSERT INTO fide_cantones_tb ( nombre ) VALUES ( v_nombre );
        
        FOR canton IN insertar_cantones LOOP
            IF LENGTH(canton.nombre) > 10 THEN
                DBMS_OUTPUT.PUT_LINE('CantÛn: ' || canton.nombre);
            END IF;
        END LOOP;

        COMMIT;
    END fide_cantones_tb_insertar_sp;

------------------------------------------------------- Procedimiento para insertar un distrito-------------------------------------------------------------
    PROCEDURE fide_distritos_tb_insertar_sp (
        v_nombre IN fide_distritos_tb.nombre%TYPE
    ) IS
        CURSOR insertar_distritos IS 
        SELECT * FROM fide_distritos_tb;
    BEGIN
        INSERT INTO fide_distritos_tb ( nombre ) VALUES ( v_nombre );
        
        FOR distrito IN insertar_distritos LOOP
            IF LENGTH(distrito.nombre) > 10 THEN
                DBMS_OUTPUT.PUT_LINE('Distrito: ' || distrito.nombre);
            END IF;
        END LOOP;

        COMMIT;
    END fide_distritos_tb_insertar_sp;

------------------------------------------------------ Procedimiento para insertar una direcci√≥n------------------------------------------------------------
    PROCEDURE fide_direcciones_tb_insertar_sp (
        v_idpais          IN fide_direcciones_tb.idpais%TYPE,
        v_idprovincia     IN fide_direcciones_tb.idprovincia%TYPE,
        v_idcanton        IN fide_direcciones_tb.idcanton%TYPE,
        v_iddistrito      IN fide_direcciones_tb.iddistrito%TYPE,
        v_direccionexacta IN fide_direcciones_tb.direccionexacta%TYPE
    ) IS
        CURSOR insertar_direcciones IS 
        SELECT * FROM fide_direcciones_tb
        WHERE ROWNUM <= 20;
        
    BEGIN
        INSERT INTO fide_direcciones_tb (
            idpais,
            idprovincia,
            idcanton,
            iddistrito,
            direccionexacta
        ) VALUES (
            v_idpais,
            v_idprovincia,
            v_idcanton,
            v_iddistrito,
            v_direccionexacta
        );
        
        FOR direccion IN insertar_direcciones LOOP
        DBMS_OUTPUT.PUT_LINE('DirecciÛn: ' || direccion.direccionexacta);
    END LOOP;

        COMMIT;
    END fide_direcciones_tb_insertar_sp;

----------------------------------------------------- Procedimiento para insertar un proveedor---------------------------------------------------------------
    PROCEDURE fide_proveedores_tb_insertar_sp (
        v_nombre      IN fide_proveedores_tb.nombre%TYPE,
        v_iddireccion IN fide_proveedores_tb.iddireccion%TYPE,
        v_telefono    IN fide_proveedores_tb.telefono%TYPE
    ) IS
        CURSOR insertar_proveedores IS 
        SELECT * FROM fide_proveedores_tb
        WHERE ROWNUM <= 10;
    BEGIN
        INSERT INTO fide_proveedores_tb (
            nombre,
            iddireccion,
            telefono
        ) VALUES (
            v_nombre,
            v_iddireccion,
            v_telefono
        );
        
         FOR proveedor IN insertar_proveedores LOOP
            DBMS_OUTPUT.PUT_LINE('Proveedor: ' || proveedor.nombre);
        END LOOP;

        COMMIT;
    END fide_proveedores_tb_insertar_sp;

------------------------------------------------- Procedimiento para insertar una marca de producto--------------------------------------------------------
    PROCEDURE fide_marcasproducto_tb_insertar_sp (
        v_nombre IN fide_marcasproducto_tb.nombre%TYPE
    ) IS
        CURSOR insertar_marcasproducto IS 
        SELECT * FROM fide_marcasproducto_tb;
        
    BEGIN
        INSERT INTO fide_marcasproducto_tb ( nombre ) VALUES ( v_nombre );
            FOR marca IN insertar_marcasproducto LOOP
                IF LENGTH(marca.nombre) > 15 THEN
                    DBMS_OUTPUT.PUT_LINE('Marca: ' || marca.nombre);
                END IF;
            END LOOP;

        COMMIT;
    END fide_marcasproducto_tb_insertar_sp;

-------------------------------------------------------- Procedimiento para insertar un producto-----------------------------------------------------------
    PROCEDURE fide_productos_tb_insertar_sp (
        v_nombre      IN fide_productos_tb.nombre%TYPE,
        v_precio      IN fide_productos_tb.precio%TYPE,
        v_idcategoria IN fide_productos_tb.idcategoria%TYPE,
        v_idmarca     IN fide_productos_tb.idmarca%TYPE
    ) IS
        CURSOR precio_productos IS
        SELECT * FROM fide_productos_tb;
        
    BEGIN
        INSERT INTO fide_productos_tb (
            nombre, precio, idcategoria, idmarca
        ) VALUES (
            v_nombre, v_precio, v_idcategoria, v_idmarca);
        
        FOR producto IN precio_productos LOOP
            IF producto.precio > 100 THEN
                DBMS_OUTPUT.PUT_LINE('Producto: ' || producto.nombre || ' - Precio: ' || producto.precio);
            END IF;
        END LOOP;
            
        COMMIT;
    END fide_productos_tb_insertar_sp;

------------------------------------------------------ Procedimiento para insertar un producto proveedor-------------------------------------------------
    PROCEDURE fide_productoproveedor_tb_insertar_sp (
        v_horarioentrega IN fide_productoproveedor_tb.horarioentrega%TYPE,
        v_idproveedor    IN fide_productoproveedor_tb.idproveedor%TYPE,
        v_preciocompra   IN fide_productoproveedor_tb.preciocompra%TYPE
    ) IS
        CURSOR proveedor_compramayor IS
        SELECT * FROM fide_productoproveedor_tb;
        
    BEGIN
        INSERT INTO fide_productoproveedor_tb (
            horarioentrega,
            idproveedor,
            preciocompra
        ) VALUES (
            v_horarioentrega,
            v_idproveedor,
            v_preciocompra
        );
        
       FOR proveedor IN proveedor_compramayor LOOP
            IF proveedor.preciocompra > 500 THEN
                DBMS_OUTPUT.PUT_LINE('Proveedor: ' || proveedor.idproveedor || ' - Precio de compra: ' || proveedor.preciocompra);
            END IF;
        END LOOP; 

        COMMIT;
    END fide_productoproveedor_tb_insertar_sp;

--------------------------------------------------------- Procedimiento para insertar una sucursal------------------------------------------------------
    PROCEDURE fide_sucursales_tb_insertar_sp (
        v_nombre       IN fide_sucursales_tb.nombre%TYPE,
        v_iddireccion  IN fide_sucursales_tb.iddireccion%TYPE,
        v_horaapertura IN fide_sucursales_tb.horaapertura%TYPE,
        v_horacierre   IN fide_sucursales_tb.horacierre%TYPE
    ) IS
        CURSOR sucursales_cursor IS
        SELECT * FROM fide_sucursales_tb
        WHERE ROWNUM <= 10;
    BEGIN
        INSERT INTO fide_sucursales_tb (
            nombre, iddireccion, horaapertura, horacierre
        ) VALUES (
            v_nombre, v_iddireccion, v_horaapertura, v_horacierre
        );
        
        FOR sucursal IN sucursales_cursor LOOP
            DBMS_OUTPUT.PUT_LINE('Sucursal: ' || sucursal.nombre || ' - Hora de apertura: ' || sucursal.horaapertura);
        END LOOP;

        COMMIT;
    END fide_sucursales_tb_insertar_sp;

------------------------------------------------------ Procedimiento para insertar un inventario-----------------------------------------------------
    PROCEDURE fide_inventarios_tb_insertar_sp (
        v_idproducto          IN fide_inventarios_tb.idproducto%TYPE,
        v_cantidad            IN fide_inventarios_tb.cantidad%TYPE,
        v_ultimaactualizacion IN fide_inventarios_tb.ultimaactualizacion%TYPE,
        v_idsucursal          IN fide_inventarios_tb.idsucursal%TYPE
    ) IS
        CURSOR cantidad_inventario IS
        SELECT * FROM fide_inventarios_tb;
        
    BEGIN
        INSERT INTO fide_inventarios_tb (
            idproducto,
            cantidad,
            ultimaactualizacion,
            idsucursal
        ) VALUES (
            v_idproducto,
            v_cantidad,
            v_ultimaactualizacion,
            v_idsucursal
        );
        
        FOR inventario IN cantidad_inventario LOOP
            IF inventario.cantidad > 10 THEN
                DBMS_OUTPUT.PUT_LINE('Inventario: Producto ' || inventario.idproducto || ' - Cantidad: ' || inventario.cantidad);
            END IF;
        END LOOP;

        COMMIT;
    END fide_inventarios_tb_insertar_sp;
    
--------------------------------------------------- Procedimiento para insertar un empleado--------------------------------------------------------
    PROCEDURE fide_empleados_tb_insertar_sp (
        v_nombre      IN fide_empleados_tb.nombre%TYPE,
        v_idsucursal  IN fide_empleados_tb.idsucursal%TYPE,
        v_puesto      IN fide_empleados_tb.puesto%TYPE,
        v_iddireccion IN fide_empleados_tb.iddireccion%TYPE,
        v_salario     IN fide_empleados_tb.salario%TYPE,
        v_correo      IN fide_empleados_tb.correo%TYPE
    ) IS
        CURSOR empleados_cursor IS SELECT nombre, salario, puesto
        FROM fide_empleados_tb;
    
    BEGIN
        INSERT INTO fide_empleados_tb (
            nombre, idsucursal, puesto, iddireccion, salario, correo
        ) VALUES (
            v_nombre, v_idsucursal, v_puesto, v_iddireccion, v_salario, v_correo);
        
        FOR empleado IN empleados_cursor LOOP
            IF empleado.salario > 4000 THEN
                DBMS_OUTPUT.PUT_LINE('Empleado: ' || empleado.nombre || ' - Salario: ' || empleado.salario || ' - Puesto: ' || empleado.puesto);
            END IF;
        END LOOP;

        COMMIT;
    END fide_empleados_tb_insertar_sp;

--------------------------------------------------Procedimiento para insertar una venta-----------------------------------------------------------
    PROCEDURE fide_ventas_tb_insertar_sp (
        v_idempleado IN fide_ventas_tb.idempleado%TYPE,
        v_idsucursal IN fide_ventas_tb.idsucursal%TYPE,
        v_fechaventa IN fide_ventas_tb.fechaventa%TYPE,
        v_total      IN fide_ventas_tb.total%TYPE
    ) IS
        CURSOR ventas IS
        SELECT * FROM fide_ventas_tb
        WHERE total > 5000;
        
    BEGIN
        INSERT INTO fide_ventas_tb (
            idempleado, idsucursal, fechaventa, total
        ) VALUES (
            v_idempleado, v_idsucursal, v_fechaventa, v_total);
            
        FOR venta IN ventas LOOP
            IF(venta.total > 5000) THEN
                DBMS_OUTPUT.PUT_LINE('Venta ID: ' || venta.idventa || ' - Total: ' || venta.total);
            END IF;
        END LOOP;

        COMMIT;
    END fide_ventas_tb_insertar_sp;

------------------------------------- Procedimiento para insertar el detalle de una venta--------------------------------------------------------
    PROCEDURE fide_detalleventas_tb_insertar_sp (
        v_idventa        IN fide_detalleventas_tb.idventa%TYPE,
        v_idproducto     IN fide_detalleventas_tb.idproducto%TYPE,
        v_cantidad       IN fide_detalleventas_tb.cantidad%TYPE,
        v_preciounitario IN fide_detalleventas_tb.preciounitario%TYPE
    ) IS
        CURSOR detalleventas IS 
        SELECT * FROM fide_detalleventas_tb
        WHERE preciounitario > 500;
        
    BEGIN
        INSERT INTO fide_detalleventas_tb (
            idventa, idproducto, cantidad, preciounitario
        ) VALUES (
            v_idventa, v_idproducto, v_cantidad, v_preciounitario
        );
        
        FOR detalle IN detalleventas LOOP
            IF(detalle.preciounitario > 500) THEN
                DBMS_OUTPUT.PUT_LINE('Detalle de venta - Producto ID: ' || detalle.idproducto || ' - Precio Unitario: ' || detalle.preciounitario);
            END IF;
        END LOOP;

        COMMIT;
    END fide_detalleventas_tb_insertar_sp;

--------------------------------------- Procedimiento para insertar un m√©todo de pago----------------------------------------------------------
    PROCEDURE fide_metodospago_tb_insertar_sp (
        v_nombre IN fide_metodospago_tb.nombre%TYPE
    ) IS
    BEGIN
        INSERT INTO fide_metodospago_tb ( nombre ) VALUES ( v_nombre );

        COMMIT;
    END fide_metodospago_tb_insertar_sp;

--------------------------------------------Procedimiento para insertar una factura-------------------------------------------------------------
    PROCEDURE fide_facturas_tb_insertar_sp (
        v_idventa      IN fide_facturas_tb.idventa%TYPE,
        v_fechaemision IN fide_facturas_tb.fechaemision%TYPE,
        v_idmetodopago IN fide_facturas_tb.idmetodopago%TYPE,
        v_subtotal     IN fide_facturas_tb.subtotal%TYPE,
        v_impuesto     IN fide_facturas_tb.impuesto%TYPE,
        v_total        IN fide_facturas_tb.total%TYPE
    ) IS
    BEGIN
        INSERT INTO fide_facturas_tb (
            idventa,
            fechaemision,
            idmetodopago,
            subtotal,
            impuesto,
            total
        ) VALUES (
            v_idventa,
            v_fechaemision,
            v_idmetodopago,
            v_subtotal,
            v_impuesto,
            v_total
        );

        COMMIT;
    END fide_facturas_tb_insertar_sp;

----------------------------------- Procedimiento para insertar una devoluci√≥n--------------------------------------------------------------
    PROCEDURE fide_devoluciones_tb_insertar_sp (
        v_idproducto IN fide_devoluciones_tb.idproducto%TYPE,
        v_idfactura  IN fide_devoluciones_tb.idfactura%TYPE,
        v_fecha      IN fide_devoluciones_tb.fecha%TYPE,
        v_motivo     IN fide_devoluciones_tb.motivo%TYPE
    ) IS
    BEGIN
        INSERT INTO fide_devoluciones_tb (
            idproducto,
            idfactura,
            fecha,
            motivo
        ) VALUES (
            v_idproducto,
            v_idfactura,
            v_fecha,
            v_motivo
        );

        COMMIT;
    END fide_devoluciones_tb_insertar_sp;


    --------------------- FUNCIONES ---------------------------------
    
    FUNCTION categorias_generar_secuencia_fn RETURN VARCHAR2 IS
        v_resultado VARCHAR2(100);
    BEGIN
        v_resultado := id_categorias_seq.nextval;
        RETURN v_resultado;
    END categorias_generar_secuencia_fn;
  
  
    FUNCTION estados_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_estados_seq.nextval;
        RETURN v_resultado;
    END estados_generar_secuencia_fn;


    FUNCTION paises_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_paises_seq.nextval;
        RETURN v_resultado;
    END paises_generar_secuencia_fn;


    FUNCTION provincias_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_provincias_seq.nextval;
        RETURN v_resultado;
    END provincias_generar_secuencia_fn;


    FUNCTION cantones_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_cantones_seq.nextval;
        RETURN v_resultado;
    END cantones_generar_secuencia_fn;


    FUNCTION distritos_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_distritos_seq.nextval;
        RETURN v_resultado;
    END distritos_generar_secuencia_fn;


    FUNCTION direcciones_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_direcciones_seq.nextval;
        RETURN v_resultado;
    END direcciones_generar_secuencia_fn;


    FUNCTION proveedores_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_proveedores_seq.nextval;
        RETURN v_resultado;
    END proveedores_generar_secuencia_fn;


    FUNCTION marcasproducto_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_marcasproducto_seq.nextval;
        RETURN v_resultado;
    END marcasproducto_generar_secuencia_fn;


    FUNCTION productos_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_productos_seq.nextval;
        RETURN v_resultado;
    END productos_generar_secuencia_fn;


    FUNCTION productoproveedor_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_productoproveedor_seq.nextval;
        RETURN v_resultado;
    END productoproveedor_generar_secuencia_fn;
  
  
    FUNCTION sucursales_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_sucursales_seq.nextval;
        RETURN v_resultado;
    END sucursales_generar_secuencia_fn;


    FUNCTION inventarios_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_inventarios_seq.nextval;
        RETURN v_resultado;
    END inventarios_generar_secuencia_fn;


    FUNCTION empleados_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_empleados_seq.nextval;
        RETURN v_resultado;
    END empleados_generar_secuencia_fn;


    FUNCTION ventas_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_ventas_seq.nextval;
        RETURN v_resultado;
    END ventas_generar_secuencia_fn;


    FUNCTION detalleventas_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_detalleventas_seq.nextval;
        RETURN v_resultado;
    END detalleventas_generar_secuencia_fn;


    FUNCTION metodospago_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_metodospago_seq.nextval;
        RETURN v_resultado;
    END metodospago_generar_secuencia_fn;


    FUNCTION facturas_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_facturas_seq.nextval;
        RETURN v_resultado;
    END facturas_generar_secuencia_fn;


    FUNCTION devoluciones_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_devoluciones_seq.nextval;
        RETURN v_resultado;
    END devoluciones_generar_secuencia_fn;


    FUNCTION roles_generar_secuencia_fn RETURN NUMBER IS
        v_resultado NUMBER;
    BEGIN
        v_resultado := id_roles_seq.nextval;
        RETURN v_resultado;
    END roles_generar_secuencia_fn;  
  
-----------------------------FIN DEL PAQUETE-------------------------------------------

END fide_proyecto_final_pkg;