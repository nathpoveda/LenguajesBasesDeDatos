package com.innovatech.services;

import com.innovatech.domain.DetalleVenta;
import java.util.List;


public interface DetalleVentaService {
    public List<DetalleVenta> getDetalleVentas();
    
    public DetalleVenta getDetalleVenta(DetalleVenta detalleventa);
    public void save(DetalleVenta detalleventa);
    public void update(DetalleVenta detalleventa);
    public void delete(DetalleVenta detalleventa);
    
}
