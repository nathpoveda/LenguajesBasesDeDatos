--Vistas
--Realizado por Nathalie Poveda 

-- VISTA 1
CREATE OR REPLACE VIEW FIDE_PRODUCTOS_DISPONIBLES_V AS 
SELECT
    P.NOMBRE AS PRODUCTO,
    C.NOMBRE AS CATEGORIA,
    M.NOMBRE AS MARCA,
    I.CANTIDAD AS DISPONIBILIDAD,
    S.NOMBRE AS SUCURSAL
FROM
    FIDE_PRODUCTOS_TB P 
    JOIN FIDE_INVENTARIOS_TB I ON P.IDPRODUCTO = I.IDPRODUCTO
    JOIN FIDE_CATEGORIAS_TB C ON P.IDCATEGORIA = C.IDCATEGORIA
    JOIN FIDE_MARCASPRODUCTO_TB M ON P.IDMARCA = M.IDMARCA
    JOIN FIDE_SUCURSALES_TB S ON I.IDSUCURSAL = S.IDSUCURSAL;
--(Exito)

--Prueba de la vista
SELECT * FROM FIDE_PRODUCTOS_DISPONIBLES_V;
--(Exito)


-- VISTA 2
CREATE OR REPLACE VIEW FIDE_DETALLEFACTURA_V AS 
SELECT
    F.IDFACTURA AS NUMERO_FACTURA,
    P.NOMBRE AS PRODUCTO,
    D.CANTIDAD AS CANTIDAD, 
    D. PRECIOUNITARIO AS PRECIO_UNITARIO,
    V.FECHAVENTA AS FECHA_VENTA,
    F.TOTAL AS TOTAL_FACTURA
FROM
    FIDE_FACTURAS_TB F
JOIN FIDE_VENTAS_TB V ON F.IDVENTA = V.IDVENTA
JOIN FIDE_DETALLEVENTAS_TB D ON D.IDVENTA = V.IDVENTA
JOIN FIDE_PRODUCTOS_TB P ON D.IDPRODUCTO = P.IDPRODUCTO;
--(Exito)

--Prueba de la vista
SELECT * FROM FIDE_DETALLEFACTURA_V;
--(Exito)


-- VISTA 3
CREATE OR REPLACE VIEW FIDE_PRODUCTOS_PROVEEDOR_V AS
SELECT
    P.NOMBRE AS PRODUCTO,
    R.NOMBRE AS PROVEEDOR,
    PP.PRECIOCOMPRA AS PRECIO_COMPRA,
    PP.HORARIOENTREGA AS HORARIO_ENTREGA
FROM
    FIDE_PRODUCTOS_TB P
JOIN FIDE_PRODUCTOPROVEEDOR_TB PP ON P.IDPRODUCTO = PP.IDPROVEEDOR
JOIN FIDE_PROVEEDORES_TB R ON PP.IDPROVEEDOR = R.IDPROVEEDOR;
--(Exito)

--Prueba de la vista
SELECT * FROM FIDE_PRODUCTOS_PROVEEDOR_V;
--(Exito)


-- VISTA 4
CREATE OR REPLACE VIEW FIDE_VENTAS_EMPLEADO_V AS
SELECT 
    E.NOMBRE AS EMPLEADO,
    S.NOMBRE AS SUCURSAL,
    V.FECHAVENTA AS FECHA,
    V.TOTAL AS TOTAL_VENTAS
FROM FIDE_VENTAS_TB V
JOIN FIDE_EMPLEADOS_TB E ON V.IDEMPLEADO = E.IDEMPLEADO
JOIN FIDE_SUCURSALES_TB S ON V.IDSUCURSAL = S.IDSUCURSAL;
    
--Prueba de la vista
SELECT * FROM FIDE_VENTAS_EMPLEADO_V;
--(Exito)    
    

-- VISTA 5
CREATE OR REPLACE VIEW FIDE_DEVOLUCIONES_V AS 
SELECT
    F.IDFACTURA AS FACTURA,
    P.NOMBRE AS PRODUCTO,
    D.FECHA AS FECHA,
    D.MOTIVO AS MOTIVO
FROM
    FIDE_DEVOLUCIONES_TB D
JOIN FIDE_FACTURAS_TB F ON D.IDFACTURA=F.IDFACTURA
JOIN FIDE_PRODUCTOS_TB P ON D.IDPRODUCTO = P.IDPRODUCTO;

--Prueba de la vista
SELECT * FROM FIDE_DEVOLUCIONES_V;
--(Exito) 
    

-- VISTA 6
CREATE OR REPLACE VIEW FIDE_ESTADO_PRODUCTO_V AS
SELECT
    P.NOMBRE AS PRODUCTO,
    E.NOMBRE AS ESTADO
FROM
    FIDE_PRODUCTOS_TB P
JOIN FIDE_ESTADOS_TB E ON P.IDESTADO = E.IDESTADO;
    
--Prueba de la vista
SELECT * FROM FIDE_ESTADO_PRODUCTO_V;
--(Exito)     


-- VISTA 7
CREATE OR REPLACE VIEW FIDE_CATEGORIAS_V AS
SELECT 
    C.NOMBRE AS CATEGORIA,
    S.NOMBRE AS SUCURSAL,
    SUM(I.CANTIDAD) AS INVENTARIO_TOTAL
FROM 
    FIDE_PRODUCTOS_TB P
JOIN FIDE_CATEGORIAS_TB C ON P.IDCATEGORIA = C.IDCATEGORIA
JOIN FIDE_INVENTARIOS_TB I ON P.IDPRODUCTO = I.IDPRODUCTO
JOIN FIDE_SUCURSALES_TB S ON I.IDSUCURSAL = S.IDSUCURSAL
GROUP BY C.NOMBRE, S.NOMBRE;

--Prueba de la vista
SELECT * FROM FIDE_CATEGORIAS_V;
--(Exito)  
    
    
-- VISTA 8 
CREATE OR REPLACE VIEW FIDE_EMPLEADOS_SUCURSAL_V AS 
SELECT 
    S.NOMBRE AS SUCURSAL,
    E.NOMBRE AS EMPLEADO,
    E.PUESTO AS PUESTO,
    E.SALARIO AS SALARIO
FROM FIDE_SUCURSALES_TB S
JOIN FIDE_EMPLEADOS_TB E ON S.IDSUCURSAL =E.IDSUCURSAL;
    
--Prueba de la vista
SELECT * FROM FIDE_EMPLEADOS_SUCURSAL_V;
--(Exito)  
        
    
-- VISTA 9
CREATE OR REPLACE VIEW FIDE_INFORMACION_EMPLEADOS_V AS
SELECT
    E.NOMBRE AS EMPLEADO,
    E.CORREO AS CORREO,
    E.PUESTO AS PUESTO,
    S.NOMBRE AS SUCURSAL,
    D.DIRECCIONEXACTA AS DIRECCION_SUCURSAL
FROM 
    FIDE_EMPLEADOS_TB E 
JOIN FIDE_SUCURSALES_TB S ON E.IDSUCURSAL=S.IDSUCURSAL 
JOIN FIDE_DIRECCIONES_TB D ON S.IDDIRECCION=D.IDDIRECCION;

--Prueba de la vista
SELECT * FROM FIDE_INFORMACION_EMPLEADOS_V;
--(Exito) 


-- VISTA 10
CREATE OR REPLACE VIEW FIDE_VENTAS_SUCURSAL_V AS
SELECT 
    S.NOMBRE AS SUCURSAL,
    SUM(V.TOTAL) AS TOTAL_VENTAS,
    COUNT(V.IDVENTA) AS NUMERO_VENTAS
FROM FIDE_VENTAS_TB V
JOIN FIDE_SUCURSALES_TB S ON V.IDSUCURSAL = S.IDSUCURSAL
GROUP BY S.NOMBRE;
    
--Prueba de la vista
SELECT * FROM FIDE_VENTAS_SUCURSAL_V;
--(Exito) 





