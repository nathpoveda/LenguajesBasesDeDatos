/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.servicesimpl;

import com.innovatech.dao.PaisDao;
import com.innovatech.domain.Pais;
import com.innovatech.services.PaisService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author natha
 */
@Service
public class PaisServiceImpl implements PaisService {
    
    @Autowired
    private PaisDao paisDao;

    @Override
    public List<Pais> getPaises() {
        return paisDao.findAll();
    }

    @Override
    public Pais getPais(Pais pais) {
        return paisDao.findById(pais.getIdPais()).orElse(null);
    }
}
