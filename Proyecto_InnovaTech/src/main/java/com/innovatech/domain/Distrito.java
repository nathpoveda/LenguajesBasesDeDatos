
package com.innovatech.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;

@Data
@Entity
@Table(name="FIDE_DISTRITOS_TB")
public class Distrito implements Serializable {
    private static final long serialVersionUID = 1l;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="iddistrito")
    private Long idDistrito;
    private String nombre;
    
    @ManyToOne
    @JoinColumn(name = "idcanton", nullable = false)
    private Canton canton;
}
