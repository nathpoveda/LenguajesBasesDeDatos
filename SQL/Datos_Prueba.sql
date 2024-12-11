INSERT INTO FIDE_PAISES_TB(Nombre) VALUES ('Costa Rica');
COMMIT;


INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Cartago', 1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('San José', 1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Alajuela', 1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Limón', 1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Puntarenas', 1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Heredia', 1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Guanacaste', 1);
COMMIT;





-- Insertar en FIDE_CATEGORIAS_TB
INSERT INTO FIDE_CATEGORIAS_TB (idCategoria, Nombre, Descripcion, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 'Electrónica', 'Productos electrónicos como teléfonos, computadoras, televisores, etc.', 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar en FIDE_ESTADOS_TB
INSERT INTO FIDE_ESTADOS_TB (idEstado, Nombre, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 'Disponible', 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar en FIDE_PAISES_TB
INSERT INTO FIDE_PAISES_TB (idPais, Nombre, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 'Costa Rica', 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar en FIDE_PROVINCIAS_TB
INSERT INTO FIDE_PROVINCIAS_TB (idProvincia, Nombre, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 'San José', 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

INSERT INTO FIDE_PROVINCIAS_TB (Nombre) VALUES('Cartago');
COMMIT;

-- Insertar en FIDE_CANTONES_TB
INSERT INTO FIDE_CANTONES_TB (idCanton, Nombre, FECHA_CREACION, CREADO_POR, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 'San José', SYSTIMESTAMP, 'admin', 'admin', SYSTIMESTAMP, 'A', 'insertar');





-- Insertar en FIDE_DISTRITOS_TB
INSERT INTO FIDE_DISTRITOS_TB (idDistrito, Nombre, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 'Carmen', 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar en FIDE_DIRECCIONES_TB
INSERT INTO FIDE_DIRECCIONES_TB (idDireccion, idPais, idProvincia, idCanton, idDistrito, direccionExacta, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 1, 1, 1, 1, 'Avenida Central, San José, Costa Rica', 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar en FIDE_PROVEEDORES_TB
INSERT INTO FIDE_PROVEEDORES_TB (idProveedor, Nombre, idDireccion, Telefono, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 'Proveedor A', 1, 25467890, 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar en FIDE_MARCASPRODUCTO_TB
INSERT INTO FIDE_MARCASPRODUCTO_TB (idMarca, Nombre, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 'MarcaX', 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar en FIDE_PRODUCTOS_TB
INSERT INTO FIDE_PRODUCTOS_TB (idProducto, Nombre, Precio, idCategoria, idEstado, idMarca, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 'Teléfono Móvil', 199.99, 1, 1, 1, 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar en FIDE_PRODUCTOPROVEEDOR_TB
INSERT INTO FIDE_PRODUCTOPROVEEDOR_TB (idProductoProveedor, horarioEntrega, idProveedor, precioCompra, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 'Lunes a Viernes 9:00 AM - 5:00 PM', 1, 150.00, 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar en FIDE_SUCURSALES_TB
INSERT INTO FIDE_SUCURSALES_TB (idSucursal, Nombre, idDireccion, horaApertura, horaCierre, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 'Sucursal Central', 1, '8:00 AM', '6:00 PM', 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar en FIDE_INVENTARIOS_TB
INSERT INTO FIDE_INVENTARIOS_TB (idInventario, idProducto, Cantidad, ultimaActualizacion, idSucursal, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 1, 100, SYSDATE, 1, 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar en FIDE_EMPLEADOS_TB
INSERT INTO FIDE_EMPLEADOS_TB (idEmpleado, Nombre, idSucursal, Puesto, idDireccion, Salario, Correo, idEstado, Contrasena)
VALUES (1, 'Juan Pérez', 1, 'Vendedor', 1, 1200.00, 'juan@innovatech.com', 1, '123');

-- Insertar en FIDE_ROLES_TB
INSERT INTO FIDE_ROLES_TB (idRol, Nombre, idEmpleado, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 'ROLE_ADMIN', 1, 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar en FIDE_VENTAS_TB
INSERT INTO FIDE_VENTAS_TB (idVenta, idEmpleado, idSucursal, fechaVenta, Total, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 1, 1, SYSDATE, 199.99, 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar en FIDE_DETALLEVENTAS_TB
INSERT INTO FIDE_DETALLEVENTAS_TB (idDetalle, idVenta, idProducto, Cantidad, precioUnitario, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 1, 1, 1, 199.99, 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar en FIDE_METODOSPAGO_TB
INSERT INTO FIDE_METODOSPAGO_TB (idMetodoPago, Nombre, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 'Tarjeta de Crédito', 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar en FIDE_FACTURAS_TB
INSERT INTO FIDE_FACTURAS_TB (idFactura, idVenta, fechaEmision, idMetodoPago, Subtotal, Impuesto, Total, CREADO_POR, FECHA_CREACION, MODIFICADO_POR, FECHA_MODIFICACION, ESTADO, ACCION)
VALUES (1, 1, SYSDATE, 1, 199.99, 19.99, 219.98, 'admin', SYSTIMESTAMP, 'admin', SYSTIMESTAMP, 'A', 'insertar');

-- Insertar




INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Oriental',1);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Occidental',1);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Carmen',1);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Nicolas',1);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Aguacaliente',1);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Guadalupe',1);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Corralillo',1);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tierra Blanca',1);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Dulce Nombre',1);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Llano Grande',1);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Quebradilla',1);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Paraiso',2);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santiago',2);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Orosi',2);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cachi',2);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Llanos de Santa Lucia',2);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Birrisito',2);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tres Rios',3);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Diego',3);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Juan',3);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Rafael',3);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Concepcion',3);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Dulce Nombre',3);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Ramon',3);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Rio Azul',3);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Juan Vinas',4);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tucurrique',4);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Pejibaye',4);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Victoria',4);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Turrialba',5);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Suiza',5);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Peralta',5);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Cruz',5);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Teresita',5);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Pavones',5);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tuis',5);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tayutic',5);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Rosa',5);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tres Equis',5);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Isabel',5);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Chirripo',5);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Pacayas',6);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cervantes',6);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Capellades',6);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Rafael',7);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cot',7);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Potrero Cerrado',7);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cipreses',7);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Rosa',7);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('El Tejar',8);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Isidro',8);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tobosi',8);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Patio de Agua',8);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Carmen',9);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Merced',9);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Hospital',9);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Catedral',9);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Zapote',9);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Francisco de Dos Rios',9);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Uruca',9);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Mata Redonda',9);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Pavas',9);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Hatillo',9);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Sebastian',9);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Escazu',10);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Antonio',10);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Rafael',10);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Desamparados',11);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Miguel',11);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Juan de Dios',11);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Rafael Arriba',11);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Antonio',11);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Frailes',11);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Patarra',11);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Cristobal',11);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Rosario',11);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Damas',11);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Rafael Abajo',11);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Gravilias',11);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Los Guido',11);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santiago',12);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Mercedes Sur',12);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Barbacoas',12);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Grifo Alto',12);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Rafael',12);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Candelarita',12);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Desamparaditos',12);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Antonio',12);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Chires',12);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Marcos',13);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Lorenzo',13);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Carlos',13);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Aserri',14);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tarbaca',14);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Vuelta de Jorco',14);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Gabriel',14);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Legua',14);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Monterrey',14);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Salitrillos',14);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Colon',15);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Guayabo',15);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tabarcia',15);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Piedras Negras',15);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Picagres',15);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Jaris',15);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Quitirrisi',15);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Guadalupe',16);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Francisco',16);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Calle Blancos',16);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Mata de Platano',16);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Ipis',16);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Rancho Redondo',16);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Purral',16);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Ana',17);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Salitral',17);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Pozos',17);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Uruca',17);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Piedades',17);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Brasil',17);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Alajuelita',18);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Josecito',18);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Antonio',18);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Concepcion',18);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Felipe',18);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Isidro',19);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Rafael',19);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Dulce Nombre de Jesus',19);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Patalillo',19);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cascajal',19);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Ignacio',20);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Guaitil',20);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Palmichal',20);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cangrejal',20);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Sabanillas',20);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Juan',21);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cinco Esquinas',21);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Anselmo llorente',21);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Leon XIII',21);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Colima',21);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Vicente',22);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Jeronimo',22);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Trinidad',22);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Pedro',23);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Sabanilla',23);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Mercedes',23);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Rafael',23);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Pablo',24);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Pedro',24);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Juan de Mata',24);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Luis',24);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Carara',24);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Maria',25);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Jardin',25);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Copey',25);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Curridabat',26);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Granadilla',26);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Sanchez',26);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tirrases',26);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Isidro de El General',27);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('El General',27);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Daniel Flores',27);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Rivas',27);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Pedro',27);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Platanares',27);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Pejibaye',27);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cajon',27);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Baru',27);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Rio Nuevo',27);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Paramo',27);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Amistad',27);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Pablo',28);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Andres',28);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Llano Bonito',28);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Isidro',28);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Cruz',28);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Antonio',28);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Alajuela',29);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Jose',29);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Carrizal',29);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Antonio',29);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Guacima',29);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Isidro',29);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Sabanilla',29);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Rafael',29);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Rio Segundo',29);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Desamparados',29);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Turrucares',29);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tambor',29);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Garita',29);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Sarapiqui',29);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Ramon',30);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santiago',30);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Juan',30);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Piedades Norte',30);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Piedades Sur',30);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Rafael',30);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Isidro',30);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Angeles',30);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Alfaro',30);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Volio',30);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Concepcion',30);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Zapotal',30);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Penas Blancas',30);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Lorenzo',30);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Grecia',31);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Isidro',31);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Jose',31);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Roque',31);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tacares',31);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Puente de Piedra',31);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Bolivar',31);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Mateo',32);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Desmonte',32);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Jesus Maria',32);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Labrador',32);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Atenas',33);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Jesus',33);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Mercedes',33);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Isidro',33);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Concepcion',33);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Jose',33);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Eulalia',33);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Escobal',33);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Naranjo',34);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Miguel',34);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Jose',34);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cirri Sur',34);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Jeronimo',34);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Juan',34);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('El Rosario',34);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Palmitos',34);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Palmares',35);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Zaragoza',35);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Buenos Aires',35);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santiago',35);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Candelaria',35);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Esquipulas',35);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Granja',35);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Pedro',36);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Juan',36);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Rafael',36);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Carrillos',36);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Sabana Redonda',36);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Orotina',37);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('El Mastate',37);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Hacienda Vieja',37);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Coyolar',37);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Ceiba',37);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Quesada',38);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Florencia',38);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Buenavista',38);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Aguas Zarcas',38);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Venecia',38);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Pital',38);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Fortuna',38);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Tigra',38);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Palmera',38);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Venado',38);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cutris',38);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Monterrey',38);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Pocosol',38);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Zarcero',39);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Laguna',39);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tapesco',39);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Guadalupe',39);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Palmira',39);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Zapote',39);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Brisas',39);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Sarchi Norte',40);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Sarchi Sur',40);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Toro Amarillo',40);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Pedro',40);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Rodriguez',40);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Upala',41);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Aguas Claras',41);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Jose(Pizote)',41);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Bijagua',41);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Delicias',41);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Dos Rios',41);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Yolillal',41);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Canalete',41);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Los Chiles',42);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cano Negro',42);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('El Amparo',42);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Jorge',42);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Rafael',43);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Buenavista',43);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cote',43);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Katira',43);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Rio Cuarto',44);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Rita',44);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Isabel',44);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Heredia',45);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Mercedes',45);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Francisco',45);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Ulloa',45);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Varablanca',45);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Barva',46);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Pedro',46);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Pablo',46);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Roque',46);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Lucia',46);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Jose de la Montana',46);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santo Domingo',47);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Vicente',47);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Miguel',47);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Paracito',47);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santo Tomas',47);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Rosa',47);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tures',47);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Para',47);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Barbara',48);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Pedro',48);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Juan',48);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Jesus',48);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santo Domingo',48);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Puraba',48);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Rafael',49);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Josecito',49);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santiago',49);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Angeles',49);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Concepcion',49);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Isidro',50);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Jose',50);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Concepcion',50);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Francisco',50);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Antonio',51);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Ribera',51);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Asuncion',51);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Joaquin',52);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Barrantes',52);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Llorente',52);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Pablo',53);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Rincon de Sabanilla',53);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Puerto Viejo',54);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Virgen',54);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Horquetas',54);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Llanuras del Gaspar',54);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Curena',54);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Limon',55);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Valle La Estrella',55);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Rio Blanco',55);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Matama',55);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Guapiles',56);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Jimenez',56);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Rita',56);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Roxana',56);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cariari',56);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Colorado',56);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Colonia',56);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Siquirres',57);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Pacuarito',57);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Florida',57);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Germania',57);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('El Cairo',57);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Alegria',57);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Reventazon',57);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Bratsi',58);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Sixaola',58);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cahuita',58);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Telire',58);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Matina',59);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Batan',59);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Carrandi',59);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Guacimo',60);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Mercedes',60);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Pocora',60);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Rio Jimenez',60);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Duacari',60);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Puntarenas',61);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Pitahaya',61);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Chomes',61);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Lepanto',61);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Paquera',61);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Manzanillo',61);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Guacimal',61);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Barranca',61);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Isla del Coco',61);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cobano',61);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Chacarita',61);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Chira',61);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Acapulco',61);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('El Roble',61);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Arancibia',61);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Espiritu Santo',62);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Juan Grande',62);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Macacona',62);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Rafael',62);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Jeroimo',62);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Caldera',62);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Buenos Aires',63);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Volcan',63);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Potrero Grande',63);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Boruca',63);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Pilas',63);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Colinas',63);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Changuena',63);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Biolley',63);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Brunka',63);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Miramar',64);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Union',64);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Isidro',64);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Puerto Cortes',65);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Palmar',65);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Sierpe',65);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Bahia Ballena',65);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Piedras Blancas',65);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Bahia Drake',65);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Quepos',66);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Savegre',66);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Naranjito',66);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Golfito',67);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Guaycar ',67);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Pavon',67);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Vito',68);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Sabalito',68);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Aguabuena',68);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Limoncito',68);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Pittier',68);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Gutierrez Braun',68);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Parrita',69);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Corredor',70);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Cuesta',70);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Canoas',70);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Laurel',70);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Jaco',71);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tarcoles',71);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Lagunillas',71);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Monteverde',72);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Puerto Jimenez',73);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Liberia',74);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Canas Dulces',74);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Mayorga',74);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Nacascolo',74);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Curubando',74);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Nicoya',75);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Mansion',75);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Antonio',75);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Quebrada Honda',75);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Samara',75);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Nosara',75);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Belen de Nosarita',75);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Cruz',76);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Bolson',76);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Veintisiete de Abril',76);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tempate',76);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cartagena',76);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cuajiniquil',76);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Diria',76);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cabo Velas',76);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tamarindo',76);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Bagaces',77);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Fortuna',77);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Mogote',77);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Rio Naranjo',77);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Filadelfia',78);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Palmira',78);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Sardinal',78);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Belen',78);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Canas',79);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Palmira',79);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Miguel',79);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Bebedero',79);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Porozal',79);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Las Juntas',80);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Sierra',80);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Juan',80);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Colorado',80);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tilaran',81);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Quebrada Grande',81);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tronadora',81);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Rosa',81);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Libano',81);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Tierras Morenas',81);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Arenal',81);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Cabeceras',81);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Carmona',82);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Rita',82);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Zapotal',82);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('San Pablo',82);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Porvenir',82);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Bejuco',82);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Cruz',83);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Cecilia',83);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('La Garita',83);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Santa Elena',83);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Hojancha',84);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Monte Romo',84);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Puerto Carrillo',84);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Huacas',84);
INSERT INTO FIDE_DISTRITOS_TB(Nombre, idCanton) VALUES ('Matambe',84);
COMMIT;
