---------------------------------------------------
---------------------TRIGGERS----------------------
---------------------------------------------------


----------------TABLA 1: CATEGORIAS----------------
------------SECUENCIA PARA CATEGORIAS--------------
CREATE SEQUENCE  ID_CATEGORIAS_SEQ
START WITH 1
INCREMENT BY 1;

CREATE TABLE FIDE_CATEGORIAS_TB(
    idCategoria  NUMBER CONSTRAINT FIDE_CATEGORIAS_ID_CATEGORIA_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    Descripcion VARCHAR2(1000),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)
    
--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION CATEGORIAS_GENERAR_SECUENCIA_FN
RETURN VARCHAR2
IS 
V_RESULTADO VARCHAR2(100);
BEGIN
V_RESULTADO:=ID_CATEGORIAS_SEQ.NEXTVAL;
RETURN V_RESULTADO;
END CATEGORIAS_GENERAR_SECUENCIA_FN;
/

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_CATEGORIAS_ID_TRG
BEFORE INSERT ON FIDE_CATEGORIAS_TB
FOR EACH ROW
BEGIN
:NEW.idCategoria:=GENERAR_SECUENCIA_FN;
END;
/


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


CREATE OR REPLACE TRIGGER FIDE_CATEGORIAS_ESTADO_TRG
BEFORE INSERT ON EJEMPLO_SEQ_TRIGGER
FOR EACH ROW
BEGIN 
:NEW.ESTADO:='A';
END;
/

----------------TABLA 2: ESTADOS----------------
------------SECUENCIA PARA ESTADOS--------------
CREATE SEQUENCE ID_ESTADOS_SEQ
START WITH 1
INCREMENT BY 1;

CREATE TABLE FIDE_ESTADOS_TB(
    idEstado NUMBER CONSTRAINT FIDE_ESTADOS_ID_ESTADO_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)

--------------------FUNCION-----------------------     
CREATE OR REPLACE FUNCTION ESTADOS_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS
 V_RESULTADO NUMBER;
BEGIN
 V_RESULTADO:=ID_ESTADOS_SEQ.NEXTVAL;
RETURN V_RESULTADO;
END ESTADOS_GENERAR_SECUENCIA_FN;
/

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_ESTADOS_ID_TRG
BEFORE INSERT ON FIDE_ESTADOS_TB
FOR EACH ROW
BEGIN
  :NEW.idEstado:=ESTADOS_GENERAR_SECUENCIA_FN;
END;  
/

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


CREATE OR REPLACE TRIGGER FIDE_ESTADOS_CREACION_MODIFICACION_TRG
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

CREATE OR REPLACE TRIGGER FIDE_ESTADOS_ESTADO_TRG
BEFORE INSERT ON FIDE_ESTADOS_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/


----------------TABLA 3: PAISES----------------
------------SECUENCIA PARA PAISES--------------
CREATE SEQUENCE ID_PAISES_SEQ
START WITH 1
INCREMENT BY 1;

CREATE TABLE FIDE_PAISES_TB(
    idPais NUMBER CONSTRAINT FIDE_PAIS_ID_PAIS_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)
/

--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION PAISES_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_PAISES_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END PAISES_GENERAR_SECUENCIA_FN;
/

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_PAISES_ID_TRG
BEFORE INSERT ON FIDE_PAISES_TB
FOR EACH ROW
BEGIN
  :NEW.idPais := PAISES_GENERAR_SECUENCIA_FN;
END;
/


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


CREATE OR REPLACE TRIGGER FIDE_PAISES_CREACION_MODIFICACION_TRG
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


CREATE OR REPLACE TRIGGER FIDE_PAISES_ESTADO_TRG
BEFORE INSERT ON FIDE_PAISES_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/

----------------TABLA 4: PROVINCIAS----------------
------------SECUENCIA PARA PROVINCIAS--------------
CREATE SEQUENCE ID_PROVINCIAS_SEQ 
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_PROVINCIAS_TB(
    idProvincia NUMBER CONSTRAINT FIDE_PROVINCIA_ID_PROVINCIA_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)
/

--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION PROVINCIAS_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_PROVINCIAS_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END PROVINCIAS_GENERAR_SECUENCIA_FN;
/

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_PROVINCIAS_ID_TRG
BEFORE INSERT ON FIDE_PROVINCIAS_TB
FOR EACH ROW
BEGIN
  :NEW.idProvincia := PROVINCIAS_GENERAR_SECUENCIA_FN;
END;
/

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

CREATE OR REPLACE TRIGGER FIDE_PROVINCIAS_CREACION_MODIFICACION_TRG
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

CREATE OR REPLACE TRIGGER FIDE_PROVINCIAS_ESTADO_TRG
BEFORE INSERT ON FIDE_PROVINCIAS_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/


----------------TABLA 5: CANTONES----------------
------------SECUENCIA PARA CANTONES--------------
CREATE SEQUENCE ID_CANTONES_SEQ 
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_CANTONES_TB(
    idCanton NUMBER CONSTRAINT FIDE_CANTONES_ID_CANTON_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    FECHA_CREACION TIMESTAMP,
    CREADO_POR VARCHAR2(100),
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)
/

--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION CANTONES_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_CANTONES_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END CANTONES_GENERAR_SECUENCIA_FN;
/

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_CANTONES_ID_TRG
BEFORE INSERT ON FIDE_CANTONES_TB
FOR EACH ROW
BEGIN
  :NEW.idCanton := CANTONES_GENERAR_SECUENCIA_FN;
END;
/

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

CREATE OR REPLACE TRIGGER FIDE_CANTONES_CREACION_MODIFICACION_TRG
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

CREATE OR REPLACE TRIGGER FIDE_CANTONES_ESTADO_TRG
BEFORE INSERT ON FIDE_CANTONES_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/

----------------TABLA 6: DISTRITOS----------------
------------SECUENCIA PARA DISTRITOS--------------
CREATE SEQUENCE ID_DISTRITOS_SEQ 
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_DISTRITOS_TB(
    idDistrito NUMBER CONSTRAINT FIDE_DISTRITOS_ID_DISTRITO_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)

--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION DISTRITOS_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_DISTRITOS_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END DISTRITOS_GENERAR_SECUENCIA_FN;
/ 

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_DISTRITOS_ID_TRG
BEFORE INSERT ON FIDE_DISTRITOS_TB
FOR EACH ROW
BEGIN
  :NEW.idDistrito := DISTRITOS_GENERAR_SECUENCIA_FN;
END;
/ 

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

CREATE OR REPLACE TRIGGER FIDE_DISTRITOS_CREACION_MODIFICACION_TRG
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

CREATE OR REPLACE TRIGGER FIDE_DISTRITOS_ESTADO_TRG
BEFORE INSERT ON FIDE_DISTRITOS_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/ 

----------------TABLA 7: DIRECCIONES----------------
------------SECUENCIA PARA DIRECCIONES--------------
CREATE SEQUENCE ID_DIRECCIONES_SEQ 
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_DIRECCIONES_TB(
    idDireccion NUMBER CONSTRAINT FIDE_DIRECCIONES_ID_DIRECCION_PRIMARY_KEY PRIMARY KEY,
    idPais NUMBER, CONSTRAINT FIDE_DIRECCIONES_ID_PAIS_FOREIGN_KEY FOREIGN KEY(idPais) REFERENCES FIDE_PAISES_TB(idPais),
    idProvincia NUMBER, CONSTRAINT FIDE_DIRECCIONES_ID_PROVINCIA_FOREIGN_KEY FOREIGN KEY(idProvincia) REFERENCES FIDE_PROVINCIAS_TB(idProvincia),
    idCanton NUMBER, CONSTRAINT FIDE_DIRECCIONES_ID_CANTON_FOREIGN_KEY FOREIGN KEY(idCanton) REFERENCES FIDE_CANTONES_TB(idCanton),
    idDistrito NUMBER, CONSTRAINT FIDE_DIRECCIONES_ID_DISTRITO_FOREIGN_KEY FOREIGN KEY(idDistrito) REFERENCES FIDE_DISTRITOS_TB(idDistrito),
    direccionExacta VARCHAR2(1000),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)
/

--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION DIRECCIONES_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_DIRECCIONES_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END DIRECCIONES_GENERAR_SECUENCIA_FN;
/ 

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_DIRECCIONES_ID_TRG
BEFORE INSERT ON FIDE_DIRECCIONES_TB
FOR EACH ROW
BEGIN
  :NEW.idDireccion := DIRECCIONES_GENERAR_SECUENCIA_FN;
END;
/ 


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


CREATE OR REPLACE TRIGGER FIDE_DIRECCIONES_CREACION_MODIFICACION_TRG
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


CREATE OR REPLACE TRIGGER FIDE_DIRECCIONES_ESTADO_TRG
BEFORE INSERT ON FIDE_DIRECCIONES_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/ 


----------------TABLA 8: PROVEEDORES----------------
------------SECUENCIA PARA PROVEEDORES--------------
CREATE SEQUENCE ID_PROVEEDORES_SEQ 
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_PROVEEDORES_TB(
    idProveedor NUMBER CONSTRAINT FIDE_PROVEEDORES_ID_PROVEEDOR_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    idDireccion NUMBER, CONSTRAINT FIDE_PROVEEDORES_ID_DIRECCION_FOREIGN_KEY FOREIGN KEY(idDireccion) REFERENCES FIDE_DIRECCIONES_TB(idDireccion),
    Telefono NUMBER,
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)
/

--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION PROVEEDORES_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_PROVEEDORES_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END PROVEEDORES_GENERAR_SECUENCIA_FN;
/ 

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_PROVEEDORES_ID_TRG
BEFORE INSERT ON FIDE_PROVEEDORES_TB
FOR EACH ROW
BEGIN
  :NEW.idProveedor := PROVEEDORES_GENERAR_SECUENCIA_FN;
END;
/ 


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


CREATE OR REPLACE TRIGGER FIDE_PROVEEDORES_CREACION_MODIFICACION_TRG
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


CREATE OR REPLACE TRIGGER FIDE_PROVEEDORES_ESTADO_TRG
BEFORE INSERT ON FIDE_PROVEEDORES_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/ 


----------------TABLA 9: MARCAS PRODUCTOS----------------
------------SECUENCIA PARA MARCAS PRODUCTOS--------------
CREATE SEQUENCE ID_MARCASPRODUCTO_SEQ 
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_MARCASPRODUCTO_TB(
    idMarca NUMBER CONSTRAINT FIDE_MARCASPRODUCTO_TB_ID_MARCA_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)
/

--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION MARCASPRODUCTO_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_MARCASPRODUCTO_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END MARCASPRODUCTO_GENERAR_SECUENCIA_FN;
/ 

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_MARCASPRODUCTO_ID_TRG
BEFORE INSERT ON FIDE_MARCASPRODUCTO_TB
FOR EACH ROW
BEGIN
  :NEW.idMarca := MARCASPRODUCTO_GENERAR_SECUENCIA_FN;
END;
/ 


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


CREATE OR REPLACE TRIGGER FIDE_MARCASPRODUCTO_CREACION_MODIFICACION_TRG
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


CREATE OR REPLACE TRIGGER FIDE_MARCASPRODUCTO_ESTADO_TRG
BEFORE INSERT ON FIDE_MARCASPRODUCTO_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/ 


----------------TABLA 10: PRODUCTOS----------------
-------------SECUENCIA PARA PRODUCTOS--------------
CREATE SEQUENCE ID_PRODUCTOS_SEQ 
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_PRODUCTOS_TB(
    idProducto NUMBER CONSTRAINT FIDE_PRODUCTOS_ID_PRODUCTO_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    Precio NUMBER(10,2),
    idCategoria NUMBER, CONSTRAINT FIDE_PRODUCTOS_ID_CATEGORIA_FOREIGN_KEY FOREIGN KEY(idCategoria) REFERENCES FIDE_CATEGORIAS_TB(idCategoria),
    idEstado NUMBER, CONSTRAINT FIDE_PRODUCTOS_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    idMarca NUMBER, CONSTRAINT FIDE_PRODUCTOS_ID_MARCA_FOREIGN_KEY FOREIGN KEY(idMarca) REFERENCES FIDE_MARCASPRODUCTO_TB(idMarca),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
/

--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION PRODUCTOS_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_PRODUCTOS_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END PRODUCTOS_GENERAR_SECUENCIA_FN;
/ 

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_PRODUCTOS_ID_TRG
BEFORE INSERT ON FIDE_PRODUCTOS_TB
FOR EACH ROW
BEGIN
  :NEW.idProducto := PRODUCTOS_GENERAR_SECUENCIA_FN;
END;
/ 


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


CREATE OR REPLACE TRIGGER FIDE_PRODUCTOS_CREACION_MODIFICACION_TRG
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


CREATE OR REPLACE TRIGGER FIDE_PRODUCTOS_ESTADO_TRG
BEFORE INSERT ON FIDE_PRODUCTOS_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/ 


----------------TABLA 11: PRODUCTOPROVEEDOR----------------
-------------SECUENCIA PARA PRODUCTOPROVEEDOR--------------
CREATE SEQUENCE ID_PRODUCTOPROVEEDOR_SEQ 
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_PRODUCTOPROVEEDOR_TB(
    idProductoProveedor NUMBER CONSTRAINT FIDE_PRODUCTOPROVEEDOR_ID_PRODUCTOPROVEEDOR_PRIMARY_KEY PRIMARY KEY,
    horarioEntrega VARCHAR2(1000),
    idProveedor NUMBER, CONSTRAINT FIDE_PRODUCTOSPROVEEDOR_ID_PROVEEDOR_FOREIGN_KEY FOREIGN KEY(idProveedor) REFERENCES FIDE_PROVEEDORES_TB(idProveedor),
    precioCompra NUMBER(10,2),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)
/

--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION PRODUCTOPROVEEDOR_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_PRODUCTOPROVEEDOR_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END PRODUCTOPROVEEDOR_GENERAR_SECUENCIA_FN;
/ 

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_PRODUCTOPROVEEDOR_ID_TRG
BEFORE INSERT ON FIDE_PRODUCTOPROVEEDOR_TB
FOR EACH ROW
BEGIN
  :NEW.idProductoProveedor := PRODUCTOPROVEEDOR_GENERAR_SECUENCIA_FN;
END;
/ 


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


CREATE OR REPLACE TRIGGER FIDE_PRODUCTOPROVEEDOR_CREACION_MODIFICACION_TRG
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


CREATE OR REPLACE TRIGGER FIDE_PRODUCTOPROVEEDOR_ESTADO_TRG
BEFORE INSERT ON FIDE_PRODUCTOPROVEEDOR_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/ 


----------------TABLA 12: SUCURSALES----------------
-------------SECUENCIA PARA SUCURSALES--------------
CREATE SEQUENCE ID_SUCURSALES_SEQ 
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_SUCURSALES_TB(
    idSucursal NUMBER CONSTRAINT FIDE_SUCURSALES_ID_SUCURSAL_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    idDireccion NUMBER, CONSTRAINT FIDE_SUCURSALES_ID_DIRECCION_FOREIGN_KEY FOREIGN KEY(idDireccion) REFERENCES FIDE_DIRECCIONES_TB(idDireccion),
    horaApertura VARCHAR2(200),
    horaCierre VARCHAR2(200),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)
/

--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION SUCURSALES_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_SUCURSALES_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END SUCURSALES_GENERAR_SECUENCIA_FN;
/ 

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_SUCURSALES_ID_TRG
BEFORE INSERT ON FIDE_SUCURSALES_TB
FOR EACH ROW
BEGIN
  :NEW.idSucursal := SUCURSALES_GENERAR_SECUENCIA_FN;
END;
/ 


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


CREATE OR REPLACE TRIGGER FIDE_SUCURSALES_CREACION_MODIFICACION_TRG
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


CREATE OR REPLACE TRIGGER FIDE_SUCURSALES_ESTADO_TRG
BEFORE INSERT ON FIDE_SUCURSALES_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/ 


----------------TABLA 13: INVENTARIOS----------------
-------------SECUENCIA PARA INVENTARIOS--------------
CREATE SEQUENCE ID_INVENTARIOS_SEQ 
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_INVENTARIOS_TB(
    idInventario NUMBER CONSTRAINT FIDE_INVENTARIOS_ID_INVENTARIO_PRIMARY_KEY PRIMARY KEY,
    idProducto NUMBER, CONSTRAINT FIDE_INVENTARIOS_ID_PRODUCTO_FOREIGN_KEY FOREIGN KEY(idProducto) REFERENCES FIDE_PRODUCTOS_TB(idProducto),
    Cantidad NUMBER,
    ultimaActualizacion DATE,
    idSucursal NUMBER, CONSTRAINT FIDE_INVENTARIOS_ID_SUCURSAL_FOREIGN_KEY FOREIGN KEY(idSucursal) REFERENCES FIDE_SUCURSALES_TB(idSucursal),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)
/

--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION INVENTARIOS_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_INVENTARIOS_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END INVENTARIOS_GENERAR_SECUENCIA_FN;
/ 

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_INVENTARIOS_ID_TRG
BEFORE INSERT ON FIDE_INVENTARIOS_TB
FOR EACH ROW
BEGIN
  :NEW.idInventario := INVENTARIOS_GENERAR_SECUENCIA_FN;
END;
/ 


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


CREATE OR REPLACE TRIGGER FIDE_INVENTARIOS_CREACION_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_INVENTARIOS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
    :NEW.FECHA_CREACION := CURRENT_TIMESTAMP;
  ELSE
    :NEW.MODIFICADO_POR := USER;
    :NEW.FECHA_MODIFICACION := CURRENT_TIMESTAMP;
  END IF;
END;
/ 


CREATE OR REPLACE TRIGGER FIDE_INVENTARIOS_ESTADO_TRG
BEFORE INSERT ON FIDE_INVENTARIOS_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/ 

----------------TABLA 14: EMPLEADOS----------------
-------------SECUENCIA PARA EMPLEADOS--------------
CREATE SEQUENCE ID_EMPLEADOS_SEQ 
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_EMPLEADOS_TB(
    idEmpleado NUMBER CONSTRAINT FIDE_EMPLEADOS_ID_EMPLEADO_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    idSucursal NUMBER, CONSTRAINT FIDE_EMPLEADOS_ID_SUCURSAL_FOREIGN_KEY FOREIGN KEY(idSucursal) REFERENCES FIDE_SUCURSALES_TB(idSucursal),
    Puesto VARCHAR2(200),
    idDireccion NUMBER, CONSTRAINT FIDE_EMPLEADOS_ID_DIRECCION_FOREIGN_KEY FOREIGN KEY(idDireccion) REFERENCES FIDE_DIRECCIONES_TB(idDireccion),
    Salario NUMBER(10,2),
    Correo VARCHAR2(200),
    idEstado NUMBER, CONSTRAINT FIDE_EMPLEADOS_ID_ESTADO_FOREIGN_KEY FOREIGN KEY(idEstado) REFERENCES FIDE_ESTADOS_TB(idEstado),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)
/

--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION EMPLEADOS_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_EMPLEADOS_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END EMPLEADOS_GENERAR_SECUENCIA_FN;
/ 

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_EMPLEADOS_ID_TRG
BEFORE INSERT ON FIDE_EMPLEADOS_TB
FOR EACH ROW
BEGIN
  :NEW.idEmpleado := EMPLEADOS_GENERAR_SECUENCIA_FN;
END;
/ 


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


CREATE OR REPLACE TRIGGER FIDE_EMPLEADOS_CREACION_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_EMPLEADOS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
    :NEW.FECHA_CREACION := CURRENT_TIMESTAMP;
  ELSE
    :NEW.MODIFICADO_POR := USER;
    :NEW.FECHA_MODIFICACION := CURRENT_TIMESTAMP;
  END IF;
END;
/ 


CREATE OR REPLACE TRIGGER FIDE_EMPLEADOS_ESTADO_TRG
BEFORE INSERT ON FIDE_EMPLEADOS_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/ 
----------------TABLA 15: VENTAS----------------
-------------SECUENCIA PARA VENTAS--------------
CREATE SEQUENCE ID_VENTAS_SEQ 
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_VENTAS_TB(
    idVenta NUMBER CONSTRAINT FIDE_VENTAS_TB_ID_VENTA_PRIMARY_KEY PRIMARY KEY,
    idEmpleado NUMBER, CONSTRAINT FIDE_VENTAS_ID_EMPLEADO_FOREIGN_KEY FOREIGN KEY(idEmpleado) REFERENCES FIDE_EMPLEADOS_TB(idEmpleado),
    idSucursal NUMBER, CONSTRAINT FIDE_VENTAS_ID_SUCURSAL_FOREIGN_KEY FOREIGN KEY(idSucursal) REFERENCES FIDE_SUCURSALES_TB(idSucursal),
    fechaVenta DATE,
    Total NUMBER(10,2),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)
/

--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION VENTAS_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_VENTAS_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END VENTAS_GENERAR_SECUENCIA_FN;
/ 

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_VENTAS_ID_TRG
BEFORE INSERT ON FIDE_VENTAS_TB
FOR EACH ROW
BEGIN
  :NEW.idVenta := VENTAS_GENERAR_SECUENCIA_FN;
END;
/ 


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


CREATE OR REPLACE TRIGGER FIDE_VENTAS_CREACION_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_VENTAS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
    :NEW.FECHA_CREACION := CURRENT_TIMESTAMP;
  ELSE
    :NEW.MODIFICADO_POR := USER;
    :NEW.FECHA_MODIFICACION := CURRENT_TIMESTAMP;
  END IF;
END;
/ 


CREATE OR REPLACE TRIGGER FIDE_VENTAS_ESTADO_TRG
BEFORE INSERT ON FIDE_VENTAS_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/ 
----------------TABLA 16: DETALLEVENTAS----------------
-------------SECUENCIA PARA DETALLEVENTAS--------------
CREATE SEQUENCE ID_DETALLEVENTAS_SEQ  
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_DETALLEVENTAS_TB(
    idDetalle NUMBER CONSTRAINT FIDE_DETALLEVENTAS_TB_ID_DETALLE_PRIMARY_KEY PRIMARY KEY,
    idVenta NUMBER, CONSTRAINT FIDE_DETALLEVENTAS_ID_VENTA_FOREIGN_KEY FOREIGN KEY(idVenta) REFERENCES FIDE_VENTAS_TB(idVenta),
    idProducto NUMBER, CONSTRAINT FIDE_PRODUCTOS_ID_PRODUCTO_FOREIGN_KEY FOREIGN KEY(idProducto) REFERENCES FIDE_PRODUCTOS_TB(idProducto),
    Cantidad NUMBER,
    precioUnitario NUMBER(10,2),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)
/

--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION DETALLEVENTAS_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_DETALLEVENTAS_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END DETALLEVENTAS_GENERAR_SECUENCIA_FN;
/ 

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_DETALLEVENTAS_ID_TRG
BEFORE INSERT ON FIDE_DETALLEVENTAS_TB
FOR EACH ROW
BEGIN
  :NEW.idDetalle := DETALLEVENTAS_GENERAR_SECUENCIA_FN;
END;
/ 


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


CREATE OR REPLACE TRIGGER FIDE_DETALLEVENTAS_CREACION_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_DETALLEVENTAS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
    :NEW.FECHA_CREACION := CURRENT_TIMESTAMP;
  ELSE
    :NEW.MODIFICADO_POR := USER;
    :NEW.FECHA_MODIFICACION := CURRENT_TIMESTAMP;
  END IF;
END;
/ 


CREATE OR REPLACE TRIGGER FIDE_DETALLEVENTAS_ESTADO_TRG
BEFORE INSERT ON FIDE_DETALLEVENTAS_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/

----------------TABLA 17: METODOSPAGO----------------
-------------SECUENCIA PARA METODOSPAGO--------------
CREATE SEQUENCE ID_METODOSPAGO_SEQ  
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_METODOSPAGO_TB(
    idMetodoPago NUMBER CONSTRAINT FIDE_METODOSPAGO_ID_METODOPAGO_PRIMARY_KEY PRIMARY KEY,
    Nombre VARCHAR2(200),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)
/

--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION METODOSPAGO_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_METODOSPAGO_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END METODOSPAGO_GENERAR_SECUENCIA_FN;
/ 

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_METODOSPAGO_ID_TRG
BEFORE INSERT ON FIDE_METODOSPAGO_TB
FOR EACH ROW
BEGIN
  :NEW.idMetodoPago := METODOSPAGO_GENERAR_SECUENCIA_FN;
END;
/ 


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


CREATE OR REPLACE TRIGGER FIDE_METODOSPAGO_CREACION_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_METODOSPAGO_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
    :NEW.FECHA_CREACION := CURRENT_TIMESTAMP;
  ELSE
    :NEW.MODIFICADO_POR := USER;
    :NEW.FECHA_MODIFICACION := CURRENT_TIMESTAMP;
  END IF;
END;
/ 


CREATE OR REPLACE TRIGGER FIDE_METODOSPAGO_ESTADO_TRG
BEFORE INSERT ON FIDE_METODOSPAGO_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/ 
----------------TABLA 18: FACTURAS----------------
-------------SECUENCIA PARA FACTURAS--------------
CREATE SEQUENCE ID_FACTURAS_SEQ  
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_FACTURAS_TB(
    idFactura NUMBER CONSTRAINT FIDE_FACTURAS_ID_FACTURA_PRIMARY_KEY PRIMARY KEY,
    idVenta NUMBER, CONSTRAINT FIDE_FACTURAS_ID_VENTA_FOREIGN_KEY FOREIGN KEY(idVenta) REFERENCES FIDE_VENTAS_TB(idVenta),
    fechaEmision DATE,
    idMetodoPago NUMBER, CONSTRAINT FIDE_FACTURAS_ID_METODOPAGO_FOREIGN_KEY FOREIGN KEY(idMetodoPago) REFERENCES FIDE_METODOSPAGO_TB(idMetodoPago),
    Subtotal NUMBER(10,2),
    Impuesto NUMBER(10,2),
    Total NUMBER(10,2),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)

--------------------FUNCION-----------------------    
CREATE OR REPLACE FUNCTION FACTURAS_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_FACTURAS_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END FACTURAS_GENERAR_SECUENCIA_FN;
/ 

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_FACTURAS_ID_TRG
BEFORE INSERT ON FIDE_FACTURAS_TB
FOR EACH ROW
BEGIN
  :NEW.idFactura := FACTURAS_GENERAR_SECUENCIA_FN;
END;
/ 


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


CREATE OR REPLACE TRIGGER FIDE_FACTURAS_CREACION_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_FACTURAS_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
    :NEW.FECHA_CREACION := CURRENT_TIMESTAMP;
  ELSE
    :NEW.MODIFICADO_POR := USER;
    :NEW.FECHA_MODIFICACION := CURRENT_TIMESTAMP;
  END IF;
END;
/ 


CREATE OR REPLACE TRIGGER FIDE_FACTURAS_ESTADO_TRG
BEFORE INSERT ON FIDE_FACTURAS_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/ 
----------------TABLA 19: DEVOLUCIONES----------------
-------------SECUENCIA PARA DEVOLUCIONES--------------
CREATE SEQUENCE ID_DEVOLUCIONES_SEQ  
START WITH 1 
INCREMENT BY 1;

CREATE TABLE FIDE_DEVOLUCIONES_TB(
    idDevolucion NUMBER CONSTRAINT FIDE_DEVOLUCIONES_ID_DEVOLUCION_PRIMARY_KEY PRIMARY KEY,
    idProducto NUMBER, CONSTRAINT FIDE_DEVOLUCIONES_ID_PRODUCTO_FOREIGN_KEY FOREIGN KEY(idProducto) REFERENCES FIDE_PRODUCTOS_TB(idProducto),
    idFactura NUMBER, CONSTRAINT FIDE_DEVOLUCIONES_ID_FACTURA_FOREIGN_KEY FOREIGN KEY(idFactura) REFERENCES FIDE_FACTURAS_TB(idFactura),
    Fecha DATE,
    Motivo VARCHAR2(1000),
    CREADO_POR VARCHAR2(100),
    FECHA_CREACION TIMESTAMP,
    MODIFICADO_POR VARCHAR2(100),
    FECHA_MODIFICACION TIMESTAMP,
    ESTADO VARCHAR2(10),
    ACCION VARCHAR2(100));
    ---(Exito)
/
--------------------FUNCION-----------------------
CREATE OR REPLACE FUNCTION DEVOLUCIONES_GENERAR_SECUENCIA_FN
RETURN NUMBER
IS 
  V_RESULTADO NUMBER;
BEGIN
  V_RESULTADO := ID_DEVOLUCIONES_SEQ.NEXTVAL;
  RETURN V_RESULTADO;
END DEVOLUCIONES_GENERAR_SECUENCIA_FN;
/ 

--------------CREACION DE TRIGGERS----------------
CREATE OR REPLACE TRIGGER FIDE_DEVOLUCIONES_ID_TRG
BEFORE INSERT ON FIDE_DEVOLUCIONES_TB
FOR EACH ROW
BEGIN
  :NEW.idDevolucion := DEVOLUCIONES_GENERAR_SECUENCIA_FN;
END;
/ 


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


CREATE OR REPLACE TRIGGER FIDE_DEVOLUCIONES_CREACION_MODIFICACION_TRG
BEFORE INSERT OR UPDATE ON FIDE_DEVOLUCIONES_TB
FOR EACH ROW
BEGIN
  IF INSERTING THEN
    :NEW.CREADO_POR := USER;
    :NEW.FECHA_CREACION := CURRENT_TIMESTAMP;
  ELSE
    :NEW.MODIFICADO_POR := USER;
    :NEW.FECHA_MODIFICACION := CURRENT_TIMESTAMP;
  END IF;
END;
/ 


CREATE OR REPLACE TRIGGER FIDE_DEVOLUCIONES_ESTADO_TRG
BEFORE INSERT ON FIDE_DEVOLUCIONES_TB
FOR EACH ROW
BEGIN
  :NEW.ESTADO := 'A';
END;
/ 

