
package com.innovatech.servicesimpl;

import com.innovatech.dao.MarcaDao;
import com.innovatech.domain.Marca;
import com.innovatech.services.MarcaService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class MarcaServiceImpl implements MarcaService{
    
    @Autowired
    private MarcaDao marcaDao;
    
    @Override
    public List<Marca> getMarcas(){
        var lista = marcaDao.findAll();
        
        return lista;
    }
    
    @Override
    @Transactional(readOnly = true)
    public Marca getMarca(Marca marca) {
        return marcaDao.findById(marca.getIdMarca()).orElse(null);
    }
    
    @Override
    @Transactional
    public void save(Marca marca) {
        marcaDao.insertarCategoria(marca.getNombre());
    }

    @Override
    @Transactional
    public void update(Marca marca) {
        marcaDao.update(marca.getIdMarca(), marca.getNombre());
    }

    @Override
    @Transactional
    public void delete(Marca marca) {
        Marca mar = getMarca(marca);
        System.out.println(mar.getIdestado());
        if (mar.getIdestado() == 2) {
            marcaDao.disable(marca.getIdMarca());
        } else {
            marcaDao.enable(marca.getIdMarca());
        }

    }
}
