package com.innovatech.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;

/**
 *
 * @author natha
 */
@Data
@Entity
@Table(name="FIDE_ROLES_TB")
public class Rol implements Serializable {
    private static final long serialVersionUID = 1l;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idrol")
    private Long idRol;
    private String nombre;
    @Column(name="idempleado")
    private Long idEmpleado;
}
