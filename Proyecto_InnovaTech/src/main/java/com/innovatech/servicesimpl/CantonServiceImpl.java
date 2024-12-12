/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.servicesimpl;

import com.innovatech.dao.CantonDao;
import com.innovatech.domain.Canton;
import com.innovatech.services.CantonService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author natha
 */
@Service
public class CantonServiceImpl implements CantonService {

    @Autowired
    private CantonDao cantonDao;
    
    @Override
    public List<Canton> getCantones() {
        return cantonDao.findAll();
    }
    
    @Override
    public List<Canton> getCantonesPorProvincia(Long idProvincia) {
        return cantonDao.findByProvinciaIdProvincia(idProvincia);
    }

    @Override
    public Canton getCanton(Canton canton) {
        return cantonDao.findById(canton.getIdCanton()).orElse(null);
    }
    
}
