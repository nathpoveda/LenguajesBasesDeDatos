/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.services;

import com.innovatech.domain.Provincia;
import java.util.List;

/**
 *
 * @author natha
 */
public interface ProvinciaService {
    public List<Provincia> getProvincias();
    public List<Provincia> getProvinciasPorPais(Long idPais);
    public Provincia getProvincia(Provincia provincia);
}
