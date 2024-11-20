
package com.innovatech.controller;


import com.innovatech.domain.Categoria;
import com.innovatech.services.CategoriaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/categoria")
public class CategoriaController {
    
    @Autowired
    private CategoriaService categoriaService;
    
    
    @GetMapping("/listado")
    public String listado(Model model){
        var lista = categoriaService.getCategorias(); 

        model.addAttribute("categorias",lista);
        model.addAttribute("totalCategorias",lista.size());
        
        return "/categoria/listado";
    }
    
    @PostMapping("/guardar")
    public String guardar(Categoria categoria){
        categoriaService.save(categoria);
        return "redirect:/categoria/listado";
    }
    
    @GetMapping("/eliminar/{idRestaurante}")
    public String eliminar(Categoria categoria){
        categoriaService.delete(categoria);
        return "redirect:/categoria/listado";
    }
         
    @GetMapping("/modificar/{idCategoria}")
    public String modificar(Categoria categoria, Model model){
        categoria=categoriaService.getCategoria(categoria);
        model.addAttribute("categoria",categoria);
        return "/categoria/modifica";
    }
}
