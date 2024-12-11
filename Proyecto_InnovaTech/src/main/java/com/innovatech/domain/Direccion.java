
package com.innovatech.domain;

import jakarta.persistence.*;
import java.io.Serializable;
import lombok.Data;

@Data
@Entity
@Table(name="FIDE_DIRECCIONES_TB")
public class Direccion implements Serializable{
    private static final long serialVersionUID = 1l;
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="iddireccion")
    
    private Long idDireccion;
    
    @ManyToOne
    @JoinColumn(name = "idpais", nullable = false)
    private Pais pais;
    
    @ManyToOne
    @JoinColumn(name = "idprovincia", nullable = false)
    private Provincia provincia;
    
    @ManyToOne
    @JoinColumn(name = "idcanton", nullable = false)
    private Canton canton;
    
    @ManyToOne
    @JoinColumn(name = "iddistrito", nullable = false)
    private Distrito distrito;
    
    private String direccionexacta;
    
    @Override
    public String toString() {
        return this.pais.getNombre() + 
                ", " + 
                this.provincia.getNombre() +
                ", " + 
                this.canton.getNombre() +
                ", " + 
                this.distrito.getNombre() +
                ", " + 
                this.direccionexacta;
    }
}
