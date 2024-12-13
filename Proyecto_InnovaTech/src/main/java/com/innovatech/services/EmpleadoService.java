/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.services;

import com.innovatech.domain.Empleado;
import java.util.List;

/**
 *
 * @author natha
 */
public interface EmpleadoService {
    public List<Empleado> getEmpleados();
    
    public Empleado getEmpleado(Empleado empleado);
    public void save(Empleado empleado);
    public void update(Empleado empleado);
    public void delete(Empleado empleado);
    
}
