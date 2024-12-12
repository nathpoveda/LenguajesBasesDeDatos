/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.services;

import com.innovatech.domain.Pais;
import java.util.List;

/**
 *
 * @author natha
 */
public interface PaisService {
    public List<Pais> getPaises();
    
    public Pais getPais(Pais pais);
}
