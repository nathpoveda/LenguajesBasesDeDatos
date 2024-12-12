/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.services;

import com.innovatech.domain.Distrito;
import java.util.List;

/**
 *
 * @author natha
 */
public interface DistritoService {
    public List<Distrito> getDistritos();
    public List<Distrito> getDistritosPorCanton(Long idCanton);
    public Distrito getDistrito(Distrito distrito);
}
