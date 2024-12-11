
package com.innovatech.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;

@Data
@Entity
@Table(name="FIDE_MARCASPRODUCTO_TB")
public class Marca implements Serializable{
    private static final long serialVersionUID = 1l;
     
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idmarca")
    private Long idMarca;
    private String nombre;
    private int idestado;
}
