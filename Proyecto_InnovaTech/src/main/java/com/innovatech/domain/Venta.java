package com.innovatech.domain;


import jakarta.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;
import lombok.Data;

/**
 *
 * @author natha
 */
@Data
@Entity
@Table(name="FIDE_VENTAS_TB")
public class Venta implements Serializable{
    private static final long serialVersionUID = 1l;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idventa")
    private Long idVenta;
    
    @ManyToOne
    @JoinColumn(name = "idempleado", nullable = false)
    private Empleado empleado;
    
    @ManyToOne
    @JoinColumn(name = "idsucursal", nullable = false)
    private Sucursal sucursal;
    
    @Column(name="fechaventa")
    private LocalDate fechaVenta;
    private Double total;
    
    private int idestado;
    
}

