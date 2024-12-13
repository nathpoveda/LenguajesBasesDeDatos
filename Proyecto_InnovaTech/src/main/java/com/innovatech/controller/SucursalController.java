
package com.innovatech.controller;

import com.innovatech.domain.Canton;
import com.innovatech.domain.Distrito;
import com.innovatech.domain.Provincia;
import com.innovatech.domain.Sucursal;
import com.innovatech.services.CantonService;
import com.innovatech.services.DistritoService;
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



@Controller
@RequestMapping("/sucursal")
public class SucursalController {
    @Autowired
    private SucursalService sucursalService;
    
    @Autowired
    private PaisService paisService;
    
    @Autowired
    private ProvinciaService provinciaService;
    
    @Autowired
    private CantonService cantonService;
    
    @Autowired
    private DistritoService distritoService;
    
    @GetMapping("/listado")
    public String listado(Model model){
        var lista = sucursalService.getSucursales(); 
        var paises = paisService.getPaises();

        model.addAttribute("sucursales",lista);
        model.addAttribute("paises", paises);
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
        var paises = paisService.getPaises();
        var provincias = provinciaService.getProvinciasPorPais(sucursal.getDireccion().getPais().getIdPais());
        var cantones = cantonService.getCantonesPorProvincia(sucursal.getDireccion().getProvincia().getIdProvincia());
        var distritos = distritoService.getDistritosPorCanton(sucursal.getDireccion().getCanton().getIdCanton());
        model.addAttribute("paises", paises);
        model.addAttribute("provincias", provincias);
        model.addAttribute("cantones", cantones);
        model.addAttribute("distritos", distritos);
        model.addAttribute("sucursal",sucursal);
        return "/sucursal/modifica";
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
