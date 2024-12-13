
package com.innovatech.dao;

import com.innovatech.domain.Empleado;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 *
 * @author natha
 */
public interface EmpleadoDao extends JpaRepository<Empleado, Long> {
    public Empleado findByCorreo(String correo);
}
