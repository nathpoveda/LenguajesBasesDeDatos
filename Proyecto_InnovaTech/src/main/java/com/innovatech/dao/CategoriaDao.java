package com.innovatech.dao;

import com.innovatech.domain.Categoria;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;


public interface CategoriaDao 
        extends JpaRepository<Categoria,Long>{
    
    @Transactional
    @Modifying
    @Query("UPDATE Categoria c SET c.estado = 'I' WHERE c.id = :id")
    int disable(@Param("id") Long id);
    
    @Transactional
    @Modifying
    @Query("UPDATE Categoria c SET c.nombre = :V_Nombre, c.descripcion = :V_Descripcion WHERE c.id = :id")
    int update(
            @Param("id") Long id,
            @Param("V_Nombre") String nombre, 
            @Param("V_Descripcion") String descripcion
    );
    
    @Transactional
    @Procedure(procedureName = "FIDE_PROYECTO_FINAL_PKG.FIDE_CATEGORIAS_TB_INSERTAR_SP")
    void insertarCategoria(
        @Param("V_Nombre") String nombre, 
        @Param("V_Descripcion") String descripcion);
}
