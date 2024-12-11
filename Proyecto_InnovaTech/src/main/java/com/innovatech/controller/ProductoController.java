/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.controller;

import com.innovatech.domain.Producto;
import com.innovatech.services.CategoriaService;
import com.innovatech.services.MarcaService;
import com.innovatech.services.ProductoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/producto")
public class ProductoController {
    
    @Autowired
    private ProductoService productoService;
    
    @Autowired 
    private CategoriaService categoriaService;
    
    @Autowired
    private MarcaService marcaService;
    
    @GetMapping("/listado")
    public String listado(Model model){
        var lista = productoService.getProductos(); 
        var categorias = categoriaService.getCategorias();
        var marcas = marcaService.getMarcas();

        model.addAttribute("productos",lista);
        model.addAttribute("categorias", categorias);
        model.addAttribute("marcas", marcas);
        model.addAttribute("totalProductos",lista.size());
        
        return "/producto/listado";
    }
    
    @PostMapping("/guardar")
    public String guardar(@ModelAttribute Producto producto){
        productoService.save(producto);
        return "redirect:/producto/listado";
    }
    
    @PostMapping("/actualizar")
    public String actualizar(Producto producto){
        productoService.update(producto);
        return "redirect:/producto/listado";
    }
    
    @GetMapping("/eliminar/{idProducto}")
    public String eliminar(Producto producto){
        productoService.delete(producto);
        return "redirect:/producto/listado";
    }
         
    @GetMapping("/modificar/{idProducto}")
    public String modificar(Producto producto, Model model){
        producto=productoService.getProducto(producto);
        var categorias = categoriaService.getCategorias();
        var marcas = marcaService.getMarcas();
        
        model.addAttribute("categorias", categorias);
        model.addAttribute("marcas", marcas);
        model.addAttribute("producto",producto);
        return "/producto/modifica";
    }
}
