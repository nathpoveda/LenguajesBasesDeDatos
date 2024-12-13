package com.innovatech.services;

import com.innovatech.domain.Venta;
import java.util.List;


public interface VentaService {
    public List<Venta> getVentas();
    
    public Venta getVenta(Venta venta);
    public void save(Venta venta);
    public void update(Venta venta);
    public void delete(Venta venta);
    
}