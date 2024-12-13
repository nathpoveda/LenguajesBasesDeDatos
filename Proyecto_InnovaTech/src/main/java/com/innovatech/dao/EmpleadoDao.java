
package com.innovatech.dao;

import com.innovatech.domain.Empleado;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author natha
 */
public interface EmpleadoDao extends JpaRepository<Empleado, Long> {
    public Empleado findByCorreo(String correo);
    
    @Transactional
    @Modifying
    @Query("UPDATE Empleado c SET c.idestado = 1 WHERE c.id = :id")
    int disable(@Param("id") Long id);

    @Transactional
    @Modifying
    @Query("UPDATE Empleado c SET c.idestado = 2 WHERE c.id = :id")
    int enable(@Param("id") Long id);
    
    @Transactional
    @Procedure(procedureName = "FIDE_PROYECTO_FINAL_PKG.fide_empleados_tb_insertar_sp")
    void insertarEmpleado(
            @Param("v_nombre") String nombre,
            @Param("v_idsucursal") Long idSucursal,
            @Param("v_puesto") String puesto,
            @Param("v_iddireccion") Long idDireccion,
            @Param("v_salario") Double salario,
            @Param("v_correo") String correo,
            @Param("v_contrasena") String contrasena
    );
    
    @Transactional
    @Procedure(procedureName = "FIDE_PROYECTO_FINAL_PKG.fide_empleados_tb_actualizar_sp")
    void actualizarEmpleado(
            @Param("v_idempleado") Long idEmpleado,
            @Param("v_nuevo_salario") Double salario,
            @Param("v_nuevo_puesto") String puesto
    );
}
