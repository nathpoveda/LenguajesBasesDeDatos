
package com.innovatech.controller;

import com.innovatech.domain.Canton;
import com.innovatech.domain.Distrito;
import com.innovatech.domain.Proveedor;
import com.innovatech.domain.Provincia;
import com.innovatech.services.CantonService;
import com.innovatech.services.DistritoService;
import com.innovatech.services.PaisService;
import com.innovatech.services.ProveedorService;
import com.innovatech.services.ProvinciaService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 *
 * @author natha
 */
@Controller
@RequestMapping("/proveedor")
public class ProveedorController {
    @Autowired
    private ProveedorService proveedorService;
    
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
        var lista = proveedorService.getProveedores(); 
        var paises = paisService.getPaises();

        model.addAttribute("proveedores",lista);
        model.addAttribute("paises", paises);
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
    
    @GetMapping("/eliminar/{idProveedor}")
    public String eliminar(Proveedor proveedor){
        proveedorService.delete(proveedor);
        return "redirect:/proveedor/listado";
    }
         
    @GetMapping("/modificar/{idProveedor}")
    public String modificar(Proveedor proveedor, Model model){
        proveedor=proveedorService.getProveedor(proveedor);
        var paises = paisService.getPaises();
        var provincias = provinciaService.getProvinciasPorPais(proveedor.getDireccion().getPais().getIdPais());
        var cantones = cantonService.getCantonesPorProvincia(proveedor.getDireccion().getProvincia().getIdProvincia());
        var distritos = distritoService.getDistritosPorCanton(proveedor.getDireccion().getCanton().getIdCanton());
        model.addAttribute("paises", paises);
        model.addAttribute("provincias", provincias);
        model.addAttribute("cantones", cantones);
        model.addAttribute("distritos", distritos);
        model.addAttribute("proveedor",proveedor);
        return "/proveedor/modifica";
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
