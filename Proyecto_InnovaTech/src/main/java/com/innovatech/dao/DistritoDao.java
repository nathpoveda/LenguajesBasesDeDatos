/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.dao;

import com.innovatech.domain.Distrito;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author natha
 */
public interface DistritoDao extends JpaRepository<Distrito, Long> {
    List<Distrito> findByCantonIdCanton(Long idCanton);
}
