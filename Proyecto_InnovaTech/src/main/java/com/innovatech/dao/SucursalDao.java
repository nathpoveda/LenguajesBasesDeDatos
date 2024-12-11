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
    @Query(value = "UPDATE FIDE_SUCURSALES_TB c SET c.nombre = :nombre, c.iddireccion = :iddireccion, "
            + "c.horaapertura = :horaapertura, c.horacierre = :horacierre, "
            + "c.idestado = :idestado WHERE c.idsucursal = :idsucursal"
            ,nativeQuery = true)
    int updateSucursal(
            @Param("idsucursal") Long idSucursal,
            @Param("nombre") String nombre,
            @Param("iddireccion") Long idDireccion,
            @Param("horaapertura") String horaApertura,
            @Param("horacierre") String horaCierre,
            @Param("idestado") int idestado
    );

    @Transactional
    @Procedure(procedureName = "FIDE_PROYECTO_FINAL_PKG.FIDE_SUCURSALES_TB_INSERTAR_SP")
    void insertarSucursal(
            @Param("V_Nombre") String nombre,
            @Param("V_HoraApertura") String horaApertura,
            @Param("V_HoraCierre") String horaCierre,
            @Param("V_IdDireccion") Long idDireccion
    );

}
