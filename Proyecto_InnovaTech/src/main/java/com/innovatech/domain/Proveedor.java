
package com.innovatech.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.OneToOne;
import jakarta.persistence.Table;
import java.io.Serializable;
import lombok.Data;

@Data
@Entity
@Table(name="FIDE_PROVEEDORES_TB")
public class Proveedor implements Serializable {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idproveedor")
    
    private Long idProveedor;
    private String nombre;
    
    @OneToOne
    @JoinColumn(name = "iddireccion", nullable = false)
    private Direccion direccion;
    
    private int idestado;
   
    
    
}
