INSERT INTO FIDE_ESTADOS_TB (Nombre)
VALUES ('Inactivo');

INSERT INTO FIDE_ESTADOS_TB (Nombre)
VALUES ('Activo');
COMMIT;

INSERT INTO FIDE_PAISES_TB(Nombre) VALUES ('Costa Rica');
COMMIT;
    
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Cartago',1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('San Jos�',1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Alajuela',1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Heredia',1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Limón',1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Puntarenas',1);
INSERT INTO FIDE_PROVINCIAS_TB(Nombre, idPais) VALUES ('Guanacaste',1);
COMMIT;
 



-- Inserción de cantones por provincia
-- Cartago
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Cartago',1);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Paraíso',1);    
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('La Unión',1);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Jiménez',1);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Turrialba',1);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Alvarado',1);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Oreamuno',1);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('El Guarco',1);
COMMIT;

-- San José
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('San José',2);   
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Escazú',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Desamparados',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Puriscal',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Tarrazú',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Aserrí',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Mora',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Goicoechea',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Santa Ana',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Alajuelita',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Vázquez de Coronado',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Acosta',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Tibás',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Moravia',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Montes de Oca',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Turrubares',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Dota',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Curridabat',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Pérez Zeledón',2);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('León Cortés Castro',2);
COMMIT;

-- Alajuela
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Alajuela',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('San Ramón',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Grecia',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('San Mateo',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Atenas',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Naranjo',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Palmares',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Poás',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Orotina',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('San Carlos',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Zarcero',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Sarchí',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Upala',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Los Chiles',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Guatuso',3);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Río Cuarto',3);
COMMIT;

-- Heredia
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Heredia',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Barva',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Santo Domingo',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Santa Bárbara',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('San Rafael',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('San Isidro',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Belén',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Flores',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('San Pablo',4);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Sarapiquí',4);
COMMIT;

-- Limón
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Limón',5);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Pococí',5);    
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Siquirres',5);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Talamanca',5);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Matina',5);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Guácimo',5);
COMMIT;

-- Puntarenas
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Puntarenas',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Esparza',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Buenos Aires',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Montes de Oro',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Osa',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Quepos',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Golfito',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Coto Brus',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Parrita',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Corredores',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Garabito',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Monteverde',6);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Puerto Jiménez',6);
COMMIT;

-- Guanacaste
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Liberia',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Nicoya',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Santa Cruz',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Bagaces',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Carillo',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Cañas',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Abangares',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Tilarán',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Nandayure',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('La Cruz',7);
INSERT INTO FIDE_CANTONES_TB(Nombre, idProvincia) VALUES ('Hojancha',7);
COMMIT;

INSERT INTO FIDE_DIRECCIONES_TB(idPais, idProvincia, idCanton, idDistrito, direccionExacta) VALUES 
    (1,2, 23, 143, '200 metros sur del Outlet Mall');
    COMMIT;
COMMIT;

INSERT INTO FIDE_SUCURSALES_TB(Nombre, idDireccion, horaApertura, horaCierre) VALUES
    ('Sucursal Central', 1, '8:00am','5:00pm');
    COMMIT;
COMMIT;

INSERT INTO FIDE_EMPLEADOS_TB(Nombre,idSucursal,Puesto, idDireccion, Salario, correo, contrasena) VALUES
    ('Nathalie Poveda Chaves', 1, 'Gerente de Cajas', 1, 1500, 'nathalie@innovatech.com', '123');
COMMIT;

INSERT INTO FIDE_ROLES_TB(Nombre, idEmpleado) VALUES
    ('ADMIN',1);
COMMIT;

INSERT INTO FIDE_METODOSPAGO_TB(Nombre) VALUES ('Tarjeta'); 
INSERT INTO FIDE_METODOSPAGO_TB(Nombre) VALUES ('Efectivo'); 
INSERT INTO FIDE_METODOSPAGO_TB(Nombre) VALUES ('SINPE M�vil'); 
COMMIT;