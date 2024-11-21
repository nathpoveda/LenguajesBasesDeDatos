package com.innovatech.services;

import com.innovatech.domain.Categoria;
import java.util.List;

public interface CategoriaService {
    public List<Categoria> getCategorias();
    
    public Categoria getCategoria(Categoria categoria);
    public void save(Categoria categoria);
    public void update(Categoria categoria);
    public void delete(Categoria categoria);
}