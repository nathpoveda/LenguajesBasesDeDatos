
package com.innovatech.servicesimpl;

import com.innovatech.dao.CategoriaDao;
import com.innovatech.domain.Categoria;
import com.innovatech.services.CategoriaService;
import org.springframework.stereotype.Service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.transaction.annotation.Transactional;

@Service
public class CategoriaServiceImpl implements CategoriaService{
    
    
    @Autowired
    private CategoriaDao categoriaDao;
    
    @Override
    public List<Categoria> getCategorias(){
        return categoriaDao.findAll();
    }

    
    @Override
    @Transactional(readOnly=true)
    public Categoria getCategoria(Categoria categoria) {
        return categoriaDao.findById(categoria.getIdCategoria()).orElse(null);
    }

    @Override
    @Transactional
    public void save(Categoria categoria) {
        categoriaDao.save(categoria);
    }

    @Override
    @Transactional
    //me imagino que aquí hay que hacer la modificación para que no borre la categoría como tal, 
    //sino aquel drama de pasarlo a "inactivo"
    public void delete(Categoria categoria) {
        categoriaDao.delete(categoria);
    }
    
}