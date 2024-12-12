
package com.innovatech.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;


@Data
@Entity
@Table(name="FIDE_METODOSPAGO_TB")
public class MetodosPago implements Serializable {
    private static final long serialVersionUID = 1l;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="idmetodopago")
    private Long idMetodopago;
    private String nombre;
    private int idestado;
}
