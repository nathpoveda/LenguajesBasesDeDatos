
package com.innovatech.controller;

import com.innovatech.domain.Proveedor;
import com.innovatech.services.ProveedorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 *
 * @author natha
 */
@Controller
@RequestMapping("/proveedor")
public class ProveedorController {
    @Autowired
    private ProveedorService proveedorService;
    
    @GetMapping("/listado")
    public String listado(Model model){
        var lista = proveedorService.getProveedores(); 

        model.addAttribute("proveedores",lista);
        model.addAttribute("totalProveedores",lista.size());
        
        return "/proveedor/listado";
    }
    
    @PostMapping("/guardar")
    public String guardar(Proveedor proveedor){
        proveedorService.save(proveedor);
        return "redirect:/proveedor/listado";
    }
    
    @PostMapping("/actualizar")
    public String actualizar(Proveedor proveedor){
        proveedorService.update(proveedor);
        return "redirect:/proveedor/listado";
    }
    
    @GetMapping("/eliminar/{idproveedor}")
    public String eliminar(Proveedor proveedor){
        proveedorService.delete(proveedor);
        return "redirect:/proveedor/listado";
    }
         
    @GetMapping("/modificar/{idproveedor}")
    public String modificar(Proveedor proveedor, Model model){
        proveedor=proveedorService.getProveedor(proveedor);
        model.addAttribute("proveedor",proveedor);
        return "/proveedor/modifica";
    }
}
