
package com.innovatech.services;

import com.innovatech.domain.Inventario;
import java.util.List;

public interface InventarioService {
    public List<Inventario> getInventarios();
    
    public Inventario getInventario(Inventario inventario);
    public void save(Inventario inventario);
    public void update(Inventario inventario);
    public void delete(Inventario inventario);
}
