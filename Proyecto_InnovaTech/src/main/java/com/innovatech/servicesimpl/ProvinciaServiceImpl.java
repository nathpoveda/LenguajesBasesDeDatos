/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.servicesimpl;

import com.innovatech.dao.ProvinciaDao;
import com.innovatech.domain.Provincia;
import com.innovatech.services.ProvinciaService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author natha
 */
@Service
public class ProvinciaServiceImpl implements ProvinciaService {
    @Autowired
    private ProvinciaDao provinciaDao;

    @Override
    public List<Provincia> getProvincias() {
        return provinciaDao.findAll();
    }

    @Override
    public List<Provincia> getProvinciasPorPais(Long idPais) {
        return provinciaDao.findByPaisIdPais(idPais);
    }

    @Override
    public Provincia getProvincia(Provincia provincia) {
        return provinciaDao.findById(provincia.getIdProvincia()).orElse(null);
    } 
}
