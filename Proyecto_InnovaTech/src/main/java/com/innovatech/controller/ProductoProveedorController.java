/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.controller;

import com.innovatech.domain.Producto;
import com.innovatech.domain.ProductoProveedor;
import com.innovatech.domain.ProductoProveedorId;
import com.innovatech.services.ProductoProveedorService;
import com.innovatech.services.ProductoService;
import com.innovatech.services.ProveedorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

/**
 *
 * @author natha
 */
@Controller
@RequestMapping("/productoProveedor")
public class ProductoProveedorController {
    @Autowired
    private ProductoProveedorService productoProveedorService;
    
    @Autowired
    private ProductoService productoService;
    
    @Autowired
    private ProveedorService proveedorService;
    
    @GetMapping("/listado")
    public String listado(Model model){
        var lista = productoProveedorService.getProductos(); 
        var productos = productoService.getProductos();
        var proveedores = proveedorService.getProveedores();

        model.addAttribute("productosProveedor",lista);
        model.addAttribute("productos", productos);
        model.addAttribute("proveedores", proveedores);
        model.addAttribute("totalProductos",lista.size());
        
        return "/productoProveedor/listado";
    }
    
    @PostMapping("/guardar")
    public String guardar(@ModelAttribute ProductoProveedor producto){
        productoProveedorService.save(producto);
        return "redirect:/productoProveedor/listado";
    }
    
    @PostMapping("/actualizar")
    public String actualizar(ProductoProveedor producto){
        productoProveedorService.update(producto);
        return "redirect:/productoProveedor/listado";
    }
    
    @GetMapping("/eliminar")
    public String eliminar(@RequestParam Long idProducto, @RequestParam Long idProveedor){
        
        ProductoProveedorId productoProveedorId = new ProductoProveedorId();
        productoProveedorId.getProducto().setIdProducto(idProducto);
        productoProveedorId.getProveedor().setIdProveedor(idProveedor);
        
        productoProveedorService.delete(productoProveedorId);
        return "redirect:/productoProveedor/listado";
    }
    
       @GetMapping("/modificar/{id}")
    public String modificar(ProductoProveedor producto, Model model){
        producto=productoProveedorService.getProductoProveedor(producto);
      
        model.addAttribute("producto",producto);
        return "/productoProveedor/modifica";
    }
}
