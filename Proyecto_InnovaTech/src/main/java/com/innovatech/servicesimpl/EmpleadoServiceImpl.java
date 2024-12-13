/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.servicesimpl;

import com.innovatech.dao.DireccionDao;
import com.innovatech.dao.EmpleadoDao;
import com.innovatech.domain.Empleado;
import com.innovatech.domain.Rol;
import com.innovatech.services.EmpleadoService;
import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

/**
 *
 * @author natha
 */
@Service("userDetailsService")
public class EmpleadoServiceImpl implements UserDetailsService, EmpleadoService {
    
    @Autowired
    private EmpleadoDao empleadoDao;
    
    @Autowired
    private DireccionDao direccionDao;

    @Override
    public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
        //va a buscar el registro en la tabla usuario que tenga el correo pasado por parametro
        Empleado empleado = empleadoDao.findByCorreo(username);
        
        //se valida si el usuario se encontro
        if(empleado==null || empleado.getIdestado() == 1){
            //no se encontro el usuario
            throw new UsernameNotFoundException(username);
        }
        
        //Se deben crear los roles que vienen desde la tabla rol...
        var roles = new ArrayList<GrantedAuthority>();
        
        //Se recorren los roles dle usuario y se pasan al arreglo...ya como rol de seguridad
        for (Rol r : empleado.getRoles()){
            roles.add(new SimpleGrantedAuthority(r.getNombre()));
        }
        if (roles.isEmpty()) {
            roles.add(new SimpleGrantedAuthority("ROLE_SALES"));
        }
        
        // quitar el noop cuando activemos la encriptacion
        //Se retorna un usuario del sistema con username, password y roles
        return new User(empleado.getCorreo(),"{noop}"+empleado.getContrasena(),roles);
    }

    @Override
    public List<Empleado> getEmpleados() {
        return empleadoDao.findAll();
    }

    @Override
    public Empleado getEmpleado(Empleado empleado) {
        return empleadoDao.findById(empleado.getIdEmpleado()).orElse(null);
    }

    @Override
    public void save(Empleado empleado) {
        Long idDireccion = direccionDao.insertarDireccion(
                empleado.getDireccion().getPais().getIdPais(),
                empleado.getDireccion().getProvincia().getIdProvincia(),
                empleado.getDireccion().getCanton().getIdCanton(),
                empleado.getDireccion().getDistrito().getIdDistrito(),
                empleado.getDireccion().getDireccionexacta()
        );
        
        empleadoDao.insertarEmpleado(
                empleado.getNombre(),
                empleado.getSucursal().getIdsucursal(),
                empleado.getPuesto(),
                idDireccion,
                empleado.getSalario(),
                empleado.getCorreo(),
                empleado.getContrasena()
        );
    }

    @Override
    public void update(Empleado empleado) {
        empleadoDao.actualizarEmpleado(empleado.getIdEmpleado(), empleado.getSalario(), empleado.getPuesto());
    }

    @Override
    public void delete(Empleado empleado) {
        Empleado emp = getEmpleado(empleado);
        if (emp.getIdestado() == 2) {
            empleadoDao.disable(empleado.getIdEmpleado());
        } else {
            empleadoDao.enable(empleado.getIdEmpleado());
        }
    }
}
