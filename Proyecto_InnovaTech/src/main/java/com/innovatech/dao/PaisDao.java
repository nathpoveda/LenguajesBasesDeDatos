/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.dao;

import com.innovatech.domain.Pais;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author natha
 */
public interface PaisDao extends JpaRepository<Pais, Long> { 
    
}
