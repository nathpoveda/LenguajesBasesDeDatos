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
    
    private String nombre;
    
    @ManyToOne
    @JoinColumn(name = "idsucursal", nullable = false)
    private Sucursal sucursal;
   
    private String puesto;
    
    @ManyToOne
    @JoinColumn(name = "iddireccion", nullable = false)
    private Direccion direccion;
    
    private double salario;
    private String correo;
    private String contrasena;
    
    @OneToMany(fetch = FetchType.EAGER)
    @JoinColumn(name="idempleado", updatable=false)
    private List<Rol> roles;
    
    
    private int idestado;
}
