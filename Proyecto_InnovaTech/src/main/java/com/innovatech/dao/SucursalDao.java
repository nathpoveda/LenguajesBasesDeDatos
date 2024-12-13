package com.innovatech.dao;

import com.innovatech.domain.Direccion;
import com.innovatech.domain.Sucursal;
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
public interface SucursalDao extends JpaRepository<Sucursal, Long> {

    @Transactional
    @Modifying
    @Query("UPDATE Sucursal c SET c.idestado = 1 WHERE c.id = :id")
    int disable(@Param("id") Long id);

    @Transactional
    @Modifying
    @Query("UPDATE Sucursal c SET c.idestado = 2 WHERE c.id = :id")
    int enable(@Param("id") Long id);

    @Transactional
    @Modifying
    @Query(value = "UPDATE FIDE_SUCURSALES_TB c "
            + "SET c.nombre = :nombre, "
            + "c.iddireccion = :iddireccion, "
            + "c.horaapertura = :horaapertura, "
            + "c.horacierre = :horacierre "
            + "WHERE c.idsucursal = :idsucursal"
            ,nativeQuery = true)
    int updateSucursal(
            @Param("idsucursal") Long idSucursal,
            @Param("nombre") String nombre,
            @Param("iddireccion") Long idDireccion,
            @Param("horaapertura") String horaApertura,
            @Param("horacierre") String horaCierre
    );

    @Transactional
    @Procedure(procedureName = "FIDE_PROYECTO_FINAL_PKG.FIDE_SUCURSALES_TB_INSERTAR_SP")
    void insertarSucursal(
            @Param("v_nombre") String nombre,
            @Param("v_iddireccion") Long idDireccion,
            @Param("v_horaapertura") String horaApertura,
            @Param("v_horacierre") String horaCierre
    );

}
