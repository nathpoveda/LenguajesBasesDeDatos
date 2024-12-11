
package com.innovatech.controller;

import com.innovatech.domain.Sucursal;
import com.innovatech.services.SucursalService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;



@Controller
@RequestMapping("/sucursal")
public class SucursalController {
     @Autowired
    private SucursalService sucursalService;
     
    @GetMapping("/listado")
    public String listado(Model model){
        var lista = sucursalService.getSucursales(); 

        model.addAttribute("sucursales",lista);
        model.addAttribute("totalSucursales",lista.size());
        
        return "/sucursal/listado";
    }
    
    @PostMapping("/guardar")
    public String guardar(Sucursal sucursal){
        sucursalService.save(sucursal);
        return "redirect:/sucursal/listado";
    }
    
    @PostMapping("/actualizar")
    public String actualizar(Sucursal sucursal){
        sucursalService.update(sucursal);
        return "redirect:/sucursal/listado";
    }
    
    @GetMapping("/eliminar/{idsucursal}")
    public String eliminar(Sucursal sucursal){
        sucursalService.delete(sucursal);
        return "redirect:/sucursal/listado";
    }
         
    @GetMapping("/modificar/{idsucursal}")
    public String modificar(Sucursal sucursal, Model model){
        sucursal=sucursalService.getSucursal(sucursal);
        model.addAttribute("sucursal",sucursal);
        return "/sucursal/modifica";
    }
}

