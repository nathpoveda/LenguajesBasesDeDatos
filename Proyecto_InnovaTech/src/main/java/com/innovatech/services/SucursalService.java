
package com.innovatech.services;

import com.innovatech.domain.Sucursal;
import java.util.List;


public interface SucursalService {
    public List<Sucursal> getSucursales();
    
    public Sucursal getSucursal(Sucursal sucursal);
    public void save(Sucursal sucursal);
    public void update(Sucursal sucursal);
    public void delete(Sucursal sucursal);
    
}
