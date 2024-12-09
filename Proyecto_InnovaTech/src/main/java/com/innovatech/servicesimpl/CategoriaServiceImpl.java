
package com.innovatech.servicesimpl;

import com.innovatech.dao.CategoriaDao;
import com.innovatech.domain.Categoria;
import com.innovatech.services.CategoriaService;
import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Random;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CategoriaServiceImpl implements CategoriaService{
    
    
    @Autowired
    private CategoriaDao categoriaDao;
    
    @Override
    public List<Categoria> getCategorias(){
        //findAll trae todos los datos de la tabla como tal
        var lista = categoriaDao.findAll();
        
        lista.removeIf(c -> !c.getEstado().equals("A"));
        return lista;
    }

    
    @Override
    @Transactional(readOnly=true)
    public Categoria getCategoria(Categoria categoria) {
        return categoriaDao.findById(categoria.getIdCategoria()).orElse(null);
    }

    @Override
    @Transactional
    public void save(Categoria categoria) {
        categoriaDao.insertarCategoria(categoria.getNombre(), categoria.getDescripcion());
    }
    
    @Override
    @Transactional
    public void update(Categoria categoria) {
        categoriaDao.update(categoria.getIdCategoria(), categoria.getNombre(), categoria.getDescripcion());
    }

    @Override
    @Transactional
    public void delete(Categoria categoria) {
        categoriaDao.disable(categoria.getIdCategoria());
    }
    
}