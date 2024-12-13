package com.innovatech.dao;

import com.innovatech.domain.DetalleVenta;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;


public interface DetalleVentaDao extends JpaRepository<DetalleVenta, Long>{
    @Transactional
    @Modifying
    @Query("UPDATE DetalleVenta c SET c.idestado = 1 WHERE c.id = :id")
    int disable(@Param("id") Long id);
    
    @Transactional
    @Modifying
    @Query("UPDATE DetalleVenta c SET c.idestado = 2 WHERE c.id = :id")
    int enable(@Param("id") Long id);
    
    @Transactional
    @Modifying
    @Query(value = "UPDATE FIDE_DETALLEVENTAS_TB p "
            + "SET p.iddetalleventa = :v_iddetalleventa, "
            + "p.idventa = :v_idventa, "
            + "p.idproducto = :v_idproducto,"
            + "p.cantidad = :v_cantidad, "
            + "p.preciounitario = :v_preciounitario "
            + "WHERE p.iddetalleventa = :id", nativeQuery = true)
    int update(
        @Param("id") Long id,
        @Param("v_idventa") Long idVenta,
        @Param("v_idproducto") Long idProducto,
        @Param("v_cantidad") int cantidad,
        @Param("v_preciounitario") Double precioUnitario
    );
    
    @Transactional
    @Procedure(procedureName = "FIDE_PROYECTO_FINAL_PKG.FIDE_DETALLEVENTAS_TB_INSERTAR_SP") 
    void insertarDetalleVenta(
        @Param("v_idproducto") Long idProducto,
        @Param("v_cantidad") int cantidad,
        @Param("v_preciounitario") Double precioUnitario
    );
}

