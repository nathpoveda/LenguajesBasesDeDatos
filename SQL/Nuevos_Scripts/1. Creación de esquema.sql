alter session set "_ORACLE_SCRIPT"= true;


--
--  Eliminación de objetos creadas si existen
--

/*

alter session set "_ORACLE_SCRIPT"= true;
DROP USER usuario1 CASCADE;
DROP ROLE admin_role;

*/



--
--  Parte I: Creación de Rol
--


-- Creación de Rol específico a utilizar
CREATE ROLE admin_role;

-- Dar acceso a crear los siguientes recursos a Admin_Role
GRANT CREATE SESSION, CREATE TRIGGER, CREATE TABLE, CREATE VIEW, CREATE PROCEDURE,CREATE SEQUENCE TO admin_role;

-- Dar accesos a Any Table a admin_role
GRANT SELECT ANY TABLE, INSERT ANY TABLE, UPDATE ANY TABLE, DELETE ANY TABLE TO admin_role;



--
--  Parte I: Creación de Usuario
--


CREATE USER usuario1 IDENTIFIED BY "123";
GRANT admin_role to usuario1;
ALTER USER usuario1 QUOTA UNLIMITED ON USERS;

