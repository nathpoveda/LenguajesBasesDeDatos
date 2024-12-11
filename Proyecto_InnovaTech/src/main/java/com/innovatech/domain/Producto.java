/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.domain;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import java.io.Serializable;
import lombok.Data;

@Data
@Entity
@Table(name="FIDE_PRODUCTOS_TB")
public class Producto implements Serializable {
    private static final long serialVersionUID = 1l;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idproducto")
    private Long idProducto;
    private String nombre;
    private Double precio;
    
    @ManyToOne
    @JoinColumn(name = "idcategoria", nullable = false)
    private Categoria categoria;
    
    private int idestado;
    
    @ManyToOne
    @JoinColumn(name = "idmarca", nullable = false)
    private Marca marca;
}
