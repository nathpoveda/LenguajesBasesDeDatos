package com.innovatech.dao;

import com.innovatech.domain.Categoria;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.transaction.annotation.Transactional;


public interface CategoriaDao 
        extends JpaRepository<Categoria,Long>{
    
    @Transactional
    @Modifying
    @Query("UPDATE Categoria c SET c.estado = 'I' WHERE c.id = :id")
    int disable(@Param("id") Long id);
    
}
