/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.dao;

import com.innovatech.domain.Direccion;
import jakarta.persistence.ParameterMode;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author natha
 */
public interface DireccionDao extends JpaRepository<Direccion, Long> {
    @Transactional
    @Procedure(procedureName = "FIDE_PROYECTO_FINAL_PKG.FIDE_DIRECCIONES_TB_INSERTAR_SP", outputParameterName = "V_iddireccion")
    Long insertarDireccion(
            @Param("V_idpais") Long idPais,
            @Param("V_idprovincia") Long idProvincia,
            @Param("V_idcanton") Long idCanton,
            @Param("V_iddistrito") Long idDistrito,
            @Param("V_direccionexacta") String direccionExacta
    );
}
