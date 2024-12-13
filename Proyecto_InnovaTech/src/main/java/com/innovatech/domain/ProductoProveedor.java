/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.domain;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import java.io.Serializable;
import lombok.Data;

/**
 *
 * @author natha
 */

@Data
@Entity
@Table(name="FIDE_PRODUCTOPROVEEDOR_TB")
public class ProductoProveedor implements Serializable {
    private static final long serialVersionUID = 1l;
    
    @EmbeddedId
    private ProductoProveedorId id;
    
    @Column(name="horarioentrega")
    private String horarioEntrega;
    
    @Column(name="preciocompra")
    private Double precioCompra;
    private int idestado;
}

