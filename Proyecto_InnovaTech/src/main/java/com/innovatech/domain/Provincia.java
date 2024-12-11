
package com.innovatech.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;

@Data
@Entity
@Table(name="FIDE_PROVINCIAS_TB")
public class Provincia implements Serializable{
    private static final long serialVersionUID = 1l;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idprovincia")
    private Long idProvincia;
    private String nombre;
    
    @ManyToOne
    @JoinColumn(name = "idpais", nullable = false)
    private Pais pais;
}
