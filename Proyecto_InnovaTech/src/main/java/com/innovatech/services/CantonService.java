/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.services;

import com.innovatech.domain.Canton;
import java.util.List;

/**
 *
 * @author natha
 */
public interface CantonService {
    public List<Canton> getCantones();
    public List<Canton> getCantonesPorProvincia(Long idProvincia);
    public Canton getCanton(Canton canton);
}
