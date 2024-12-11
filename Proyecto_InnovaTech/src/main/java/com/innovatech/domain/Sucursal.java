
package com.innovatech.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;

@Data
@Entity
@Table(name="FIDE_SUCURSALES_TB")
public class Sucursal implements Serializable{
    private static final long serialVersionUID = 1l;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idsucursal")
    
    private Long idsucursal;
    private String nombre;
    
    @OneToOne
    @JoinColumn(name = "iddireccion", nullable = false)
    private Direccion direccion;
   
    private String horaapertura;
    private String horacierre;
    private int idestado;
}
