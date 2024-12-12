
package com.innovatech.services;

import com.innovatech.domain.Proveedor;
import java.util.List;


public interface ProveedorService {
    public List<Proveedor> getProveedores();
    
    public Proveedor getProveedor(Proveedor proveedor);
    public void save(Proveedor proveedor);
    public void update(Proveedor proveedor);
    public void delete(Proveedor proveedor);
}
