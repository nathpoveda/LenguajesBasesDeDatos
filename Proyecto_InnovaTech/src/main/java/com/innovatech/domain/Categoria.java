package com.innovatech.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;

@Data
@Entity
@Table(name="FIDE_CATEGORIAS_TB")
public class Categoria implements Serializable{
    
    private static final long serialVersionUID = 1l;
     
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idcategoria")
    
    
    private Long idCategoria;
    private String nombre;
    private String descripcion;
    private String estado;

}
