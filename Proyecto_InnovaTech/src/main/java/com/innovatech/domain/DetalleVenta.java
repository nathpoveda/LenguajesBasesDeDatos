package com.innovatech.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;


@Data
@Entity
@Table(name="FIDE_DETALLEVENTAS_TB")
public class DetalleVenta implements Serializable {
    private static final long serialVersionUID = 1l;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="iddetalleventa")
    private Long iddetalleventa;
    
    @ManyToOne
    @JoinColumn(name = "idventa", nullable = false)
    private Venta venta;
    
    
    @ManyToOne
    @JoinColumn(name = "idproducto", nullable = false)
    private Producto producto;
    
    private int cantidad;
    private double precioUnitario;
    
    private int idestado;

   
}
