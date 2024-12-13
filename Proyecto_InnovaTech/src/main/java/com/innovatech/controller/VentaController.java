package com.innovatech.controller;

import com.innovatech.domain.Venta;
import com.innovatech.services.SucursalService;
import com.innovatech.services.VentaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/venta")
public class VentaController {
     @Autowired
    private VentaService ventaService;
    
    //@Autowired 
    //  crear empleado Service: private EmpleadoService empleadoService;
    
    @Autowired
    private SucursalService sucursalService;
    
    @GetMapping("/listado")
    public String listado(Model model){
        var lista = ventaService.getVentas(); 
        //var empleadoss = empleadoService.getCategorias();
        var sucursal = sucursalService.getSucursales();

        model.addAttribute("ventas",lista);
        // model.addAttribute("empleados", empleados);
        model.addAttribute("sucursales", sucursal);
        model.addAttribute("totalProductos",lista.size());
        
        return "/venta/listado";
    }
    
    @PostMapping("/guardar")
    public String guardar(@ModelAttribute Venta venta){
        ventaService.save(venta);
        return "redirect:/venta/listado";
    }
    
    @PostMapping("/actualizar")
    public String actualizar(Venta venta){
        ventaService.update(venta);
        return "redirect:/venta/listado";
    }
    
    @GetMapping("/eliminar/{idVenta}")
    public String eliminar(Venta venta){
        ventaService.delete(venta);
        return "redirect:/venta/listado";
    }
    
    @GetMapping("/modificar/{idVenta}")
    public String modificar(Venta venta, Model model){
        venta=ventaService.getVenta(venta);
        //var empleados = empleadoService.getEmpleados();
        var sucursales = sucursalService.getSucursales();
        
        //model.addAttribute("empleados", empleados);
        model.addAttribute("sucursales", sucursales);
        model.addAttribute("venta",venta);
        return "/venta/modifica";
    }
    
}

