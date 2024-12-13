package com.innovatech.dao;

import com.innovatech.domain.Venta;
import java.time.LocalDate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;


public interface VentaDao extends JpaRepository<Venta, Long> {
    
    @Transactional
    @Modifying
    @Query("UPDATE Venta c SET c.idestado = 1 WHERE c.id = :id")
    int disable(@Param("id") Long id);
    
    @Transactional
    @Modifying
    @Query("UPDATE Venta c SET c.idestado = 2 WHERE c.id = :id")
    int enable(@Param("id") Long id);
    
    
    @Transactional
    @Modifying
    @Query(value = "UPDATE FIDE_VENTAS_TB p "
            + "SET p.idempleado = :v_idempleado, "
            + "p.idsucursal = :v_idsucursal, "
            + "p.fechaVenta = :v_fechaventa, "
            + "p.total = :v_total "
            + "WHERE p.idventa = :id", nativeQuery = true)
    int update(
        @Param("id") Long id,
        @Param("v_idempleado") Long idEmpleado,
        @Param("v_idsucursal") Long idSucursal,
        @Param("v_fechaventa") LocalDate fechaVenta,
        @Param("v_total") Double total
    );
    
    @Transactional
    @Procedure(procedureName = "FIDE_PROYECTO_FINAL_PKG.FIDE_VENTAS_TB_INSERTAR_SP") 
    void insertarVenta(
        @Param("v_idempleado") Long idEmpleado,
        @Param("v_idsucursal") Long idSucursal,
        @Param("v_fechaventa") LocalDate fechaVenta,
        @Param("v_total") Double total
    );
    
}

