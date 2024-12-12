/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.dao;

import com.innovatech.domain.Canton;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author natha
 */
public interface CantonDao extends JpaRepository<Canton, Long> {
    List<Canton> findByProvinciaIdProvincia(Long idProvincia);
    
}
