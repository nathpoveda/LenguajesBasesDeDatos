
package com.innovatech.controller;

import com.innovatech.domain.Marca;
import com.innovatech.services.MarcaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/marca")
public class MarcaController {
    @Autowired
    private MarcaService marcaService;
    
    @GetMapping("/listado")
    public String listado(Model model){
        var lista = marcaService.getMarcas(); 

        model.addAttribute("marcas",lista);
        model.addAttribute("totalMarcas",lista.size());
        
        return "/marca/listado";
    }
    
    @PostMapping("/guardar")
    public String guardar(Marca marca){
        marcaService.save(marca);
        return "redirect:/marca/listado";
    }
    
    @PostMapping("/actualizar")
    public String actualizar(Marca marca){
        marcaService.update(marca);
        return "redirect:/marca/listado";
    }
    
    @GetMapping("/eliminar/{idMarca}")
    public String eliminar(Marca marca){
        marcaService.delete(marca);
        return "redirect:/marca/listado";
    }
         
    @GetMapping("/modificar/{idMarca}")
    public String modificar(Marca marca, Model model){
        marca=marcaService.getMarca(marca);
        model.addAttribute("marca",marca);
        return "/marca/modifica";
    }
}
