
package com.innovatech.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import java.time.LocalDate;
import lombok.Data;

@Data
@Entity
@Table(name="FIDE_INVENTARIOS_TB")
public class Inventario implements Serializable {
    private static final long serialVersionUID = 1l;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idinventario")
    
    private Long idInventario;
    @OneToOne
    @JoinColumn(name = "idproducto", nullable = false)
    private Producto producto;
    private int cantidad;
    private LocalDate ultimaactualizacion;
    @OneToOne
    @JoinColumn(name = "idsucursal", nullable = false)
    private Sucursal sucursal;
    private int idestado;
    
    
}
