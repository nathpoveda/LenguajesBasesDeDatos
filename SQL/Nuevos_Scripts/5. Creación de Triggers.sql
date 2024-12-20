--
--      Creación de los Triggers
--

----------------TABLA 1: CATEGORIAS----------------
--------------CREACION DE TRIGGERS----------------
-- Trigger de la secuencia
CREATE OR REPLACE TRIGGER FIDE_CATEGORIAS_ID_TRG
BEFORE INSERT ON FIDE_CATEGORIAS_TB
FOR EACH ROW
BEGIN
:NEW.idCategoria:= FIDE_PROYECTO_FINAL_PKG.CATEGORIAS_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_CATEGORIAS_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_CATEGORIAS_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger de la accion
CREATE OR REPLACE TRIGGER FIDE_CATEGORIAS_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_CATEGORIAS_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
  :NEW.ACCION:='INSERT';
ELSE
:NEW.ACCION:='UPDATE';
END IF;
END;
/
-- (Exito)

--Trigger del autor 
CREATE OR REPLACE TRIGGER CATEGORIAS_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON  FIDE_CATEGORIAS_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.CREADO_POR:=USER;
ELSE
:NEW.MODIFICADO_POR:=USER;
END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_CATEGORIAS_ESTADO_TRG
BEFORE INSERT ON FIDE_CATEGORIAS_TB
FOR EACH ROW
BEGIN 
:NEW.IDESTADO:=2;
END;
/
-- (Exito)

----------------TABLA 2: ESTADOS----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_ESTADOS_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_ESTADOS_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
-- Trigger del ID
CREATE OR REPLACE TRIGGER FIDE_ESTADOS_ID_TRG
BEFORE INSERT ON FIDE_ESTADOS_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:= FIDE_PROYECTO_FINAL_PKG.ESTADOS_GENERAR_SECUENCIA_FN;
END;  
/
-- (Exito)

--Trigger de la accion
CREATE OR REPLACE TRIGGER FIDE_ESTADOS_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_ESTADOS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION:='INSERT';
  ELSE
    :NEW.ACCION:='UPDATE';
  END IF;
END;
/
-- (Exito)

--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_ESTADOS_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_ESTADOS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR:=USER;
  ELSE
    :NEW.MODIFICADO_POR:=USER;
  END IF;
END;  
/
-- (Exito)


----------------TABLA 3: PAISES----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_PAISES_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_PAISES_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger del ID
CREATE OR REPLACE TRIGGER FIDE_PAISES_ID_TRG
BEFORE INSERT ON FIDE_PAISES_TB
FOR EACH ROW
BEGIN
  :NEW.idPais := FIDE_PROYECTO_FINAL_PKG.PAISES_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)

--Trigger de la accion
CREATE OR REPLACE TRIGGER FIDE_PAISES_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_PAISES_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)

-- Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_PAISES_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_PAISES_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_PAISES_ESTADO_TRG
BEFORE INSERT ON FIDE_PAISES_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)

----------------TABLA 4: PROVINCIAS----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_PROVINCIAS_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_PROVINCIAS_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger del ID
CREATE OR REPLACE TRIGGER FIDE_PROVINCIAS_ID_TRG
BEFORE INSERT ON FIDE_PROVINCIAS_TB
FOR EACH ROW
BEGIN
  :NEW.idProvincia := FIDE_PROYECTO_FINAL_PKG.PROVINCIAS_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)

--Trigger de la accion
CREATE OR REPLACE TRIGGER FIDE_PROVINCIAS_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_PROVINCIAS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)

--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_PROVINCIAS_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_PROVINCIAS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_PROVINCIAS_ESTADO_TRG
BEFORE INSERT ON FIDE_PROVINCIAS_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)


----------------TABLA 5: CANTONES----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_CANTONES_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_CANTONES_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger del id
CREATE OR REPLACE TRIGGER FIDE_CANTONES_ID_TRG
BEFORE INSERT ON FIDE_CANTONES_TB
FOR EACH ROW
BEGIN
  :NEW.idCanton := FIDE_PROYECTO_FINAL_PKG.CANTONES_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)

--Trigger de la accion
CREATE OR REPLACE TRIGGER FIDE_CANTONES_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_CANTONES_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)

--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_CANTONES_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_CANTONES_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_CANTONES_ESTADO_TRG
BEFORE INSERT ON FIDE_CANTONES_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)

----------------TABLA 6: DISTRITOS----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_DISTRITOS_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_DISTRITOS_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
-- Trigger del ID
CREATE OR REPLACE TRIGGER FIDE_DISTRITOS_ID_TRG
BEFORE INSERT ON FIDE_DISTRITOS_TB
FOR EACH ROW
BEGIN
  :NEW.idDistrito := FIDE_PROYECTO_FINAL_PKG.DISTRITOS_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)

--Trigger de la acción
CREATE OR REPLACE TRIGGER FIDE_DISTRITOS_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_DISTRITOS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)


--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_DISTRITOS_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_DISTRITOS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)


--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_DISTRITOS_ESTADO_TRG
BEFORE INSERT ON FIDE_DISTRITOS_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)

----------------TABLA 7: DIRECCIONES----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion


--Trigger del id
CREATE OR REPLACE TRIGGER FIDE_DIRECCIONES_ID_TRG
BEFORE INSERT ON FIDE_DIRECCIONES_TB
FOR EACH ROW
BEGIN
  :NEW.idDireccion := FIDE_PROYECTO_FINAL_PKG.DIRECCIONES_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)


--Trigger de la accion
CREATE OR REPLACE TRIGGER FIDE_DIRECCIONES_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_DIRECCIONES_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)

--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_DIRECCIONES_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_DIRECCIONES_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)


--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_DIRECCIONES_ESTADO_TRG
BEFORE INSERT ON FIDE_DIRECCIONES_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)


----------------TABLA 8: PROVEEDORES----------------
--------------CREACION DE TRIGGERS----------------
--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_PROVEEDORES_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_PROVEEDORES_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger del ID
CREATE OR REPLACE TRIGGER FIDE_PROVEEDORES_ID_TRG
BEFORE INSERT ON FIDE_PROVEEDORES_TB
FOR EACH ROW
BEGIN
  :NEW.idProveedor := FIDE_PROYECTO_FINAL_PKG.PROVEEDORES_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)


--Trigger de la accion
CREATE OR REPLACE TRIGGER FIDE_PROVEEDORES_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_PROVEEDORES_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)


--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_PROVEEDORES_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_PROVEEDORES_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_PROVEEDORES_ESTADO_TRG
BEFORE INSERT ON FIDE_PROVEEDORES_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)


----------------TABLA 9: MARCAS PRODUCTOS----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_MARCASPRODUCTO_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_MARCASPRODUCTO_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger del id
CREATE OR REPLACE TRIGGER FIDE_MARCASPRODUCTO_ID_TRG
BEFORE INSERT ON FIDE_MARCASPRODUCTO_TB
FOR EACH ROW
BEGIN
  :NEW.idMarca := FIDE_PROYECTO_FINAL_PKG.MARCASPRODUCTO_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)


--Trigger de la accion
CREATE OR REPLACE TRIGGER FIDE_MARCASPRODUCTO_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_MARCASPRODUCTO_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)


--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_MARCASPRODUCTO_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_MARCASPRODUCTO_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_MARCASPRODUCTO_ESTADO_TRG
BEFORE INSERT ON FIDE_MARCASPRODUCTO_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)


----------------TABLA 10: PRODUCTOS----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_PRODUCTOS_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_PRODUCTOS_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger del id
CREATE OR REPLACE TRIGGER FIDE_PRODUCTOS_ID_TRG
BEFORE INSERT ON FIDE_PRODUCTOS_TB
FOR EACH ROW
BEGIN
  :NEW.idProducto := FIDE_PROYECTO_FINAL_PKG.PRODUCTOS_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)

--Trigger de la accion
CREATE OR REPLACE TRIGGER FIDE_PRODUCTOS_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_PRODUCTOS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)

--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_PRODUCTOS_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_PRODUCTOS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_PRODUCTOS_ESTADO_TRG
BEFORE INSERT ON FIDE_PRODUCTOS_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)


----------------TABLA 11: PRODUCTOPROVEEDOR----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_PRODUCTOPROVEEDOR_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_PRODUCTOPROVEEDOR_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
-- No se necesita Secuencia porque es una llave primaria compuesta por dos llaves foraneas
-- (Exito)

--Trigger de la accion
CREATE OR REPLACE TRIGGER FIDE_PRODUCTOPROVEEDOR_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_PRODUCTOPROVEEDOR_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)

--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_PRODUCTOPROVEEDOR_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_PRODUCTOPROVEEDOR_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_PRODUCTOPROVEEDOR_ESTADO_TRG
BEFORE INSERT ON FIDE_PRODUCTOPROVEEDOR_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/


----------------TABLA 12: SUCURSALES----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_SUCURSALES_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_SUCURSALES_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger del id
CREATE OR REPLACE TRIGGER FIDE_SUCURSALES_ID_TRG
BEFORE INSERT ON FIDE_SUCURSALES_TB
FOR EACH ROW
BEGIN
  :NEW.idSucursal := FIDE_PROYECTO_FINAL_PKG.SUCURSALES_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)

--Trigger de la accion
CREATE OR REPLACE TRIGGER FIDE_SUCURSALES_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_SUCURSALES_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)

--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_SUCURSALES_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_SUCURSALES_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_SUCURSALES_ESTADO_TRG
BEFORE INSERT ON FIDE_SUCURSALES_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)


----------------TABLA 13: INVENTARIOS----------------
--------------CREACION DE TRIGGERS----------------
--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_INVENTARIOS_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_INVENTARIOS_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger del id
CREATE OR REPLACE TRIGGER FIDE_INVENTARIOS_ID_TRG
BEFORE INSERT ON FIDE_INVENTARIOS_TB
FOR EACH ROW
BEGIN
  :NEW.idInventario := FIDE_PROYECTO_FINAL_PKG.INVENTARIOS_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)

--Trigger de la accion
CREATE OR REPLACE TRIGGER FIDE_INVENTARIOS_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_INVENTARIOS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)

--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_INVENTARIOS_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_INVENTARIOS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_INVENTARIOS_ESTADO_TRG
BEFORE INSERT ON FIDE_INVENTARIOS_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)

----------------TABLA 14: EMPLEADOS----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_EMPLEADOS_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_EMPLEADOS_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger del id
CREATE OR REPLACE TRIGGER FIDE_EMPLEADOS_ID_TRG
BEFORE INSERT ON FIDE_EMPLEADOS_TB
FOR EACH ROW
BEGIN
  :NEW.idEmpleado := FIDE_PROYECTO_FINAL_PKG.EMPLEADOS_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)

--Trigger de la accion
CREATE OR REPLACE TRIGGER FIDE_EMPLEADOS_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_EMPLEADOS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)

--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_EMPLEADOS_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_EMPLEADOS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_EMPLEADOS_ESTADO_TRG
BEFORE INSERT ON FIDE_EMPLEADOS_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)

----------------TABLA 15: VENTAS----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_VENTAS_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_VENTAS_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger del id
CREATE OR REPLACE TRIGGER FIDE_VENTAS_ID_TRG
BEFORE INSERT ON FIDE_VENTAS_TB
FOR EACH ROW
BEGIN
  :NEW.idVenta := FIDE_PROYECTO_FINAL_PKG.VENTAS_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)

--Trigger de la accion
CREATE OR REPLACE TRIGGER FIDE_VENTAS_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_VENTAS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)

--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_VENTAS_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_VENTAS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_VENTAS_ESTADO_TRG
BEFORE INSERT ON FIDE_VENTAS_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)


----------------TABLA 16: DETALLEVENTAS----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_DETALLEVENTAS_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_DETALLEVENTAS_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger del id
CREATE OR REPLACE TRIGGER FIDE_DETALLEVENTAS_ID_TRG
BEFORE INSERT ON FIDE_DETALLEVENTAS_TB
FOR EACH ROW
BEGIN
  :NEW.idDetalle := FIDE_PROYECTO_FINAL_PKG.DETALLEVENTAS_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)

--Trigger del accion
CREATE OR REPLACE TRIGGER FIDE_DETALLEVENTAS_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_DETALLEVENTAS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)

--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_DETALLEVENTAS_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_DETALLEVENTAS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_DETALLEVENTAS_ESTADO_TRG
BEFORE INSERT ON FIDE_DETALLEVENTAS_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)

----------------TABLA 17: METODOSPAGO----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_METODOSPAGO_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_METODOSPAGO_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger de id
CREATE OR REPLACE TRIGGER FIDE_METODOSPAGO_ID_TRG
BEFORE INSERT ON FIDE_METODOSPAGO_TB
FOR EACH ROW
BEGIN
  :NEW.idMetodoPago := FIDE_PROYECTO_FINAL_PKG.METODOSPAGO_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)

--Trigger de accion
CREATE OR REPLACE TRIGGER FIDE_METODOSPAGO_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_METODOSPAGO_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)

--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_METODOSPAGO_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_METODOSPAGO_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_METODOSPAGO_ESTADO_TRG
BEFORE INSERT ON FIDE_METODOSPAGO_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)


----------------TABLA 18: FACTURAS----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_FACTURAS_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_FACTURAS_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger del id
CREATE OR REPLACE TRIGGER FIDE_FACTURAS_ID_TRG
BEFORE INSERT ON FIDE_FACTURAS_TB
FOR EACH ROW
BEGIN
  :NEW.idFactura := FIDE_PROYECTO_FINAL_PKG.FACTURAS_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)

--Trigger del accion
CREATE OR REPLACE TRIGGER FIDE_FACTURAS_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_FACTURAS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)

--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_FACTURAS_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_FACTURAS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_FACTURAS_ESTADO_TRG
BEFORE INSERT ON FIDE_FACTURAS_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)

----------------TABLA 19: DEVOLUCIONES----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_DEVOLUCIONES_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_DEVOLUCIONES_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger del id
CREATE OR REPLACE TRIGGER FIDE_DEVOLUCIONES_ID_TRG
BEFORE INSERT ON FIDE_DEVOLUCIONES_TB
FOR EACH ROW
BEGIN
  :NEW.idDevolucion := FIDE_PROYECTO_FINAL_PKG.DEVOLUCIONES_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)

--Trigger del accion
CREATE OR REPLACE TRIGGER FIDE_DEVOLUCIONES_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_DEVOLUCIONES_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)

--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_DEVOLUCIONES_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_DEVOLUCIONES_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_DEVOLUCIONES_ESTADO_TRG
BEFORE INSERT ON FIDE_DEVOLUCIONES_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)

----------------TABLA 20: ROLES----------------
--------------CREACION DE TRIGGERS----------------

--Trigger de la fecha de modificacion
CREATE OR REPLACE TRIGGER FIDE_ROLES_FECHA_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_ROLES_TB
FOR EACH ROW
BEGIN
IF INSERTING THEN
:NEW.FECHA_CREACION:=SYSTIMESTAMP;
ELSE
:NEW.FECHA_MODIFICACION:=SYSTIMESTAMP;
END IF;
END;
/
--Trigger del id
CREATE OR REPLACE TRIGGER FIDE_ROLES_ID_TRG
BEFORE INSERT ON FIDE_ROLES_TB
FOR EACH ROW
BEGIN
  :NEW.idRol := FIDE_PROYECTO_FINAL_PKG.ROLES_GENERAR_SECUENCIA_FN;
END;
/
-- (Exito)

--Trigger de la accion
CREATE OR REPLACE TRIGGER FIDE_ROLES_ACCION_TRG
BEFORE INSERT OR UPDATE ON FIDE_ROLES_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.ACCION := 'INSERT';
  ELSE
    :NEW.ACCION := 'UPDATE';
  END IF;
END;
/
-- (Exito)

--Trigger del autor
CREATE OR REPLACE TRIGGER FIDE_ROLES_CREACION_MODIFICACION_POR_TRG
BEFORE INSERT OR UPDATE ON FIDE_ROLES_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
  ELSE
    :NEW.MODIFICADO_POR := USER;
  END IF;
END;
/
-- (Exito)

--Trigger del estado
CREATE OR REPLACE TRIGGER FIDE_ROLES_ESTADO_TRG
BEFORE INSERT ON FIDE_ROLES_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=2;
END;
/
-- (Exito)