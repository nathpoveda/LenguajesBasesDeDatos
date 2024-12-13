/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.controller;

import com.innovatech.domain.Canton;
import com.innovatech.domain.Distrito;
import com.innovatech.domain.Empleado;
import com.innovatech.domain.Provincia;
import com.innovatech.domain.Sucursal;
import com.innovatech.services.CantonService;
import com.innovatech.services.DistritoService;
import com.innovatech.services.EmpleadoService;
import com.innovatech.services.PaisService;
import com.innovatech.services.ProvinciaService;
import com.innovatech.services.SucursalService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author natha
 */
@Controller
@RequestMapping("/empleado")
public class EmpleadoController {
    @Autowired
    private EmpleadoService empleadoService;
    
    @Autowired
    private PaisService paisService;
    
    @Autowired
    private ProvinciaService provinciaService;
    
    @Autowired
    private CantonService cantonService;
    
    @Autowired
    private DistritoService distritoService;
    
    @Autowired
    private SucursalService sucursalService;
    
    @GetMapping("/listado")
    public String listado(Model model){
        var lista = empleadoService.getEmpleados(); 
        var paises = paisService.getPaises();
        var sucursales = sucursalService.getSucursales();

        model.addAttribute("empleados",lista);
        model.addAttribute("paises", paises);
        model.addAttribute("sucursales", sucursales);
        model.addAttribute("totalSucursales",lista.size());
        
        return "/empleado/listado";
    }
    
    @PostMapping("/guardar")
    public String guardar(Empleado empleado){
        empleadoService.save(empleado);
        return "redirect:/empleado/listado";
    }
    
    @PostMapping("/actualizar")
    public String actualizar(Empleado empleado){
        empleadoService.update(empleado);
        return "redirect:/empleado/listado";
    }
    
    @GetMapping("/eliminar/{idEmpleado}")
    public String eliminar(Empleado empleado){
        empleadoService.delete(empleado);
        return "redirect:/empleado/listado";
    }
    
    @GetMapping("/modificar/{idEmpleado}")
    public String modificar(Empleado empleado, Model model){
        empleado=empleadoService.getEmpleado(empleado);

        model.addAttribute("empleado", empleado);
        return "/empleado/modifica";
    }
    
    @GetMapping("/provincias/{idPais}")
    @ResponseBody
    public List<Provincia> obtenerProvincias(@PathVariable Long idPais) {
        return provinciaService.getProvinciasPorPais(idPais);
    }
    
    @GetMapping("/cantones/{idProvincia}")
    @ResponseBody
    public List<Canton> obtenerCantones(@PathVariable Long idProvincia) {
        return cantonService.getCantonesPorProvincia(idProvincia);
    }

    @GetMapping("/distritos/{idCanton}")
    @ResponseBody
    public List<Distrito> obtenerDistritos(@PathVariable Long idCanton) {
        return distritoService.getDistritosPorCanton(idCanton);
    }
}
