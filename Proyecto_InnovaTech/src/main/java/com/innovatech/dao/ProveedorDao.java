
package com.innovatech.dao;

import com.innovatech.domain.Proveedor;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;


public interface ProveedorDao extends JpaRepository<Proveedor, Long> {
    @Transactional
    @Modifying
    @Query("UPDATE Proveedor c SET c.idestado = 1 WHERE c.id = :id")
    int disable(@Param("id") Long id);
    
    @Transactional
    @Modifying
    @Query("UPDATE Proveedor c SET c.idestado = 2 WHERE c.id = :id")
    int enable(@Param("id") Long id);
    
    @Transactional
    @Modifying
    @Query(value = "UPDATE FIDE_PROVEEDORES_TB c "
            + "SET c.nombre = :nombre, "
            + "c.idDireccion = :iddireccion, "
            + "c.telefono = :telefono "
            + "WHERE c.idproveedor = :idproveedor"
            ,nativeQuery = true)
    int updateProveedor(
            @Param("idproveedor") Long idProveedor,
            @Param("nombre") String nombre,
            @Param("iddireccion") Long idDireccion,
            @Param("telefono") String telefono
    );
    
    @Transactional
    @Procedure(procedureName = "FIDE_PROYECTO_FINAL_PKG.FIDE_PROVEEDORES_TB_INSERTAR_SP")
    void insertarProveedor(
            @Param("V_Nombre") String nombre,
            @Param("V_iddireccion") Long idDireccion,
            @Param("V_telefono") String telefono
    );
    
}
