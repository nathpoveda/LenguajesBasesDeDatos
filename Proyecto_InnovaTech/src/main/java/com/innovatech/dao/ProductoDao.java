
package com.innovatech.dao;

import com.innovatech.domain.Producto;
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
public interface ProductoDao extends JpaRepository<Producto, Long> {
    
    @Transactional
    @Modifying
    @Query("UPDATE Producto c SET c.idestado = 1 WHERE c.id = :id")
    int disable(@Param("id") Long id);
    
    @Transactional
    @Modifying
    @Query("UPDATE Producto c SET c.idestado = 2 WHERE c.id = :id")
    int enable(@Param("id") Long id);
    
    @Transactional
    @Modifying
    @Query(value = "UPDATE FIDE_PRODUCTOS_TB p "
            + "SET p.nombre = :v_nombre, "
            + "p.precio = :v_precio, "
            + "p.idcategoria = :v_idcategoria, "
            + "p.idmarca = :v_idmarca "
            + "WHERE p.idproducto = :id", nativeQuery = true)
    int update(
        @Param("id") Long id,
        @Param("v_nombre") String nombre,
        @Param("v_precio") Double precio,
        @Param("v_idcategoria") Long idCategoria,
        @Param("v_idmarca") Long idMarca
    );
    
    @Transactional
    @Procedure(procedureName = "FIDE_PROYECTO_FINAL_PKG.FIDE_PRODUCTOS_TB_INSERTAR_SP") 
    void insertarProducto(
            @Param("v_nombre") String nombre,
            @Param("v_precio") Double precio,
            @Param("v_idcategoria") Long idCategoria,
            @Param("v_idmarca") Long idMarca
    );
}
