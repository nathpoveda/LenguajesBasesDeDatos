/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.servicesimpl;

import com.innovatech.dao.DistritoDao;
import com.innovatech.domain.Distrito;
import com.innovatech.services.DistritoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author natha
 */
@Service
public class DistritoServiceImpl implements DistritoService {
    @Autowired
    private DistritoDao distritoDao;

    @Override
    public List<Distrito> getDistritos() {
        return distritoDao.findAll();
    }

    @Override
    public Distrito getDistrito(Distrito distrito) {
        return distritoDao.findById(distrito.getIdDistrito()).orElse(null);
    }

    @Override
    public List<Distrito> getDistritosPorCanton(Long idCanton) {
        return distritoDao.findByCantonIdCanton(idCanton);
    }
    
  
}
