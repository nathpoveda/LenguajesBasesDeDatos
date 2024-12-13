BEGIN
    fide_proyecto_final_pkg.fide_estados_tb_insertar_sp('Inactivo');
    fide_proyecto_final_pkg.fide_estados_tb_insertar_sp('Activo');

    fide_proyecto_final_pkg.fide_paises_tb_insertar_sp('Costa Rica');

    fide_proyecto_final_pkg.fide_provincias_tb_insertar_sp('Cartago', 1);
    fide_proyecto_final_pkg.fide_provincias_tb_insertar_sp('San José', 1);
    fide_proyecto_final_pkg.fide_provincias_tb_insertar_sp('Alajuela', 1);
    fide_proyecto_final_pkg.fide_provincias_tb_insertar_sp('Heredia', 1);
    fide_proyecto_final_pkg.fide_provincias_tb_insertar_sp('Limón', 1);
    fide_proyecto_final_pkg.fide_provincias_tb_insertar_sp('Puntarenas', 1);
    fide_proyecto_final_pkg.fide_provincias_tb_insertar_sp('Guanacaste', 1);

    -- Inserción de cantones por provincia
    -- Cartago
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Cartago', 1);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Paraíso', 1);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('La Unión', 1);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Jiménez', 1);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Turrialba', 1);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Alvarado', 1);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Oreamuno', 1);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('El Guarco', 1);

    -- San José
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('San José', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Escazú', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Desamparados', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Puriscal', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Tarrazú', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Aserrí', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Mora', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Goicoechea', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Santa Ana', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Alajuelita', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Vázquez de Coronado', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Acosta', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Tibás', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Moravia', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Montes de Oca', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Turrubares', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Dota', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Curridabat', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Pérez Zeledón', 2);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('León Cortés Castro', 2);

    -- Alajuela
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Alajuela', 3);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('San Ramón', 3);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Grecia', 3);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('San Mateo', 3);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Atenas', 3);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Naranjo', 3);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Palmares', 3);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Poás', 3);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Orotina', 3);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('San Carlos', 3);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Zarcero', 3);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Sarchí', 3);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Upala', 3);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Los Chiles', 3);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Guatuso', 3);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Río Cuarto', 3);

    -- Heredia
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Heredia', 4);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Barva', 4);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Santo Domingo', 4);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Santa Bárbara', 4);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('San Rafael', 4);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('San Isidro', 4);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Belén', 4);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Flores', 4);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('San Pablo', 4);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Sarapiquí', 4);

    -- Limón
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Limón', 5);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Pococí', 5);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Siquirres', 5);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Talamanca', 5);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Matina', 5);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Guácimo', 5);

    -- Puntarenas
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Puntarenas', 6);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Esparza', 6);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Buenos Aires', 6);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Montes de Oro', 6);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Osa', 6);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Quepos', 6);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Golfito', 6);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Coto Brus', 6);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Parrita', 6);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Corredores', 6);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Garabito', 6);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Monteverde', 6);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Puerto Jiménez', 6);

    -- Guanacaste
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Liberia', 7);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Nicoya', 7);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Santa Cruz', 7);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Bagaces', 7);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Carillo', 7);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Cañas', 7);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Abangares', 7);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Tilarán', 7);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Nandayure', 7);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('La Cruz', 7);
    fide_proyecto_final_pkg.fide_cantones_tb_insertar_sp('Hojancha', 7);

    fide_proyecto_final_pkg.fide_direcciones_tb_insertar_sp(1, 2, 23, 143, '200 metros sur del Outlet Mall');

    fide_proyecto_final_pkg.fide_sucursales_tb_insertar_sp('Sucursal Central', 1, '8:00am', '5:00pm');

    fide_proyecto_final_pkg.fide_empleados_tb_insertar_sp('Nathalie Poveda Chaves', 1, 'Gerente de Cajas', 1, 1500, 'nathalie@innovatech.com', '123');

    fide_proyecto_final_pkg.fide_roles_tb_insertar_sp('ADMIN', 1);

    fide_proyecto_final_pkg.fide_metodospago_tb_insertar_sp('Tarjeta');
    fide_proyecto_final_pkg.fide_metodospago_tb_insertar_sp('Efectivo');
    fide_proyecto_final_pkg.fide_metodospago_tb_insertar_sp('SINPE Movil');
END;
/