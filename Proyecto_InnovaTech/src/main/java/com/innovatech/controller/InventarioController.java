
package com.innovatech.controller;

import com.innovatech.domain.Inventario;
import com.innovatech.services.InventarioService;
import com.innovatech.services.ProductoService;
import com.innovatech.services.SucursalService;
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
@RequestMapping("/inventario")
public class InventarioController {
    @Autowired
    private InventarioService inventarioService;
    
    @Autowired
    private ProductoService productoService;
    
    @Autowired
    private SucursalService sucursalService;
    
    @GetMapping("/listado")
    public String listado(Model model) {
        var lista = inventarioService.getInventarios();
        var productos = productoService.getProductos();
        var sucursales = sucursalService.getSucursales();
        
        model.addAttribute("inventarios", lista);
        model.addAttribute("productos", productos);
        model.addAttribute("sucursales", sucursales);
        
        return "/inventario/listado";
    }
    
    @PostMapping("/guardar")
    public String guardar(Inventario inventario){
        inventarioService.save(inventario);
        return "redirect:/inventario/listado";
    }
    
    @PostMapping("/actualizar")
    public String actualizar(Inventario inventario){
        inventarioService.update(inventario);
        return "redirect:/inventario/listado";
    }
    
    @GetMapping("/eliminar/{idInventario}")
    public String eliminar(Inventario inventario){
        inventarioService.delete(inventario);
        return "redirect:/inventario/listado";
    }
         
    @GetMapping("/modificar/{idInventario}")
    public String modificar(Inventario inventario, Model model){
        inventario=inventarioService.getInventario(inventario);
        var productos = productoService.getProductos();
        var sucursales = sucursalService.getSucursales();
        
        model.addAttribute("productos", productos);
        model.addAttribute("sucursales", sucursales);
        model.addAttribute("inventario",inventario);
        return "/inventario/modifica";
    }
}
