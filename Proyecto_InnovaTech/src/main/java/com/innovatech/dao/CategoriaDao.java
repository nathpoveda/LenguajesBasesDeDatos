package com.innovatech.dao;

import com.innovatech.domain.Categoria;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CategoriaDao 
        extends JpaRepository<Categoria,Long>{
    
}
