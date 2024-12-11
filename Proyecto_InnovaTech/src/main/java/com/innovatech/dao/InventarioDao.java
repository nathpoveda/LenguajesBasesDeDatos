
package com.innovatech.dao;

import com.innovatech.domain.Inventario;
import java.time.LocalDate;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;


public interface InventarioDao extends JpaRepository<Inventario, Long>{
    @Transactional
    @Modifying
    @Query("UPDATE Inventario c SET c.idestado = 1 WHERE c.id = :id")
    int disable(@Param("id") Long id);
    
    @Transactional
    @Modifying
    @Query("UPDATE Inventario c SET c.idestado = 2 WHERE c.id = :id")
    int enable(@Param("id") Long id);
    
    @Transactional
    @Modifying
    @Query(value = "UPDATE FIDE_INVENTARIOS_TB c SET c.idproducto = :idproducto,"
            + "c.cantidad = :cantidad, "
            + "c.ultimaactualizacion = :ultimaactualizacion, "
            + "c.idsucursal = :idsucursal "
            + "WHERE c.idinventario = :idinventario"
            ,nativeQuery = true)
    int updateInventario(
            @Param("idinventario") Long idInventario,
            @Param("idproducto") Long idProducto,
            @Param("cantidad") int cantidad,
            @Param("ultimaactualizacion") LocalDate ultimaactualizacion,
            @Param("idsucursal") Long idSucursal
    );
    
    @Transactional
    @Procedure(procedureName = "FIDE_PROYECTO_FINAL_PKG.FIDE_INVENTARIOS_TB_INSERTAR_SP")
    void insertarInventario(
            @Param("V_IdProducto") Long idProducto,
            @Param("V_Cantidad") int cantidad,
            @Param("V_UltimaActualizacion") LocalDate ultimaactualizacion,
            @Param("V_IdSucursal") Long idSucursal
    );
}
