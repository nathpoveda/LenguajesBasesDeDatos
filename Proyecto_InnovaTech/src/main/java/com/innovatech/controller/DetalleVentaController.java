package com.innovatech.controller;

import com.innovatech.domain.DetalleVenta;
import com.innovatech.services.DetalleVentaService;
import com.innovatech.services.ProductoService;
import com.innovatech.services.VentaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/detalleventa")
public class DetalleVentaController {
     
    @Autowired
    private DetalleVentaService detalleventaservice;
    
    @Autowired
    private VentaService ventaService;
    
    @Autowired 
    private ProductoService productoService;
    
    @GetMapping("/listado")
    public String listado(Model model){
        var lista = detalleventaservice.getDetalleVentas(); 
        var ventas = ventaService.getVentas();
        var productos = productoService.getProductos();

        model.addAttribute("detalleventas",lista);
        model.addAttribute("ventas", ventas);
        model.addAttribute("productos", productos);
        model.addAttribute("totalDetalleVentas",lista.size());
        
        return "/detalleventa/listado";
    }
    
    @PostMapping("/guardar")
    public String guardar(@ModelAttribute DetalleVenta detalleventa){
        detalleventaservice.save(detalleventa);
        return "redirect:/detalleventa/listado";
    }
    
    @PostMapping("/actualizar")
    public String actualizar(DetalleVenta detalleventa){
        detalleventaservice.update(detalleventa);
        return "redirect:/detalleventa/listado";
    }
    
    //no estoy segura de si aqui 
    @GetMapping("/eliminar/{idDetalleVenta}")
    public String eliminar(DetalleVenta detalleventa){
        detalleventaservice.delete(detalleventa);
        return "redirect:/detalleventa/listado";
    }
    
    @GetMapping("/modificar/{idDetalleVenta}")
    public String modificar(DetalleVenta detalleventa, Model model){
        detalleventa=detalleventaservice.getDetalleVenta(detalleventa);
        var ventas = ventaService.getVentas();
        var productos = productoService.getProductos();
        
        model.addAttribute("ventas", ventas);
        model.addAttribute("productos", productos);
        model.addAttribute("detalleventa",detalleventa);
        return "/detalleventa/modifica";
    }
}

