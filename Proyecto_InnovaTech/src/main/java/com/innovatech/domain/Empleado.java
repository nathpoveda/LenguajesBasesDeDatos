/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import java.util.List;
import lombok.Data;

/**
 *
 * @author natha
 */
@Data
@Entity
@Table(name="FIDE_EMPLEADOS_TB")
public class Empleado implements Serializable {
    private static final long serialVersionUID = 1l;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idempleado")
    private Long idEmpleado;
    private String correo;
    private String contrasena;
    
    @OneToMany(fetch = FetchType.EAGER)
    @JoinColumn(name="idempleado", updatable=false)
    private List<Rol> roles;
}
