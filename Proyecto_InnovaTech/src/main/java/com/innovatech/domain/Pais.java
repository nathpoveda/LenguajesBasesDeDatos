
package com.innovatech.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;

@Data
@Entity
@Table(name="FIDE_PAISES_TB")
public class Pais implements Serializable {
    private static final long serialVersionUID = 1l;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idpais")
    
    private Long idPais;
    private String nombre;
}
