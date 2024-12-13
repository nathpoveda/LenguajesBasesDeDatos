package com.innovatech.servicesimpl;

import com.innovatech.dao.DetalleVentaDao;
import com.innovatech.domain.DetalleVenta;
import com.innovatech.services.DetalleVentaService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class DetalleVentaServiceImpl implements DetalleVentaService {
    
    @Autowired
    private DetalleVentaDao detalleventaDao;
    
    @Override
    public List<DetalleVenta> getDetalleVentas() {
        var lista = detalleventaDao.findAll();
        return lista;
    }
    
    @Override
    public DetalleVenta getDetalleVenta(DetalleVenta detalleventa) {
        return detalleventaDao.findById(detalleventa.getIddetalleventa()).orElse(null);
    }
    
    @Override
    public void save(DetalleVenta detalleventa) {
        detalleventaDao.insertarDetalleVenta(
                detalleventa.getProducto().getIdProducto(),
                detalleventa.getCantidad(),
                detalleventa.getPrecioUnitario()
        );
    }
    
    @Override
    public void update(DetalleVenta detalleventa) {
        detalleventaDao.update(
                detalleventa.getIddetalleventa(), 
                detalleventa.getVenta().getIdVenta(),
                detalleventa.getProducto().getIdProducto(),
                detalleventa.getCantidad(),
                detalleventa.getPrecioUnitario()
        );
    }
    
    @Override
    public void delete(DetalleVenta detalleventa) {
        DetalleVenta det = getDetalleVenta(detalleventa);
        if (det.getIdestado() == 2) {
            detalleventaDao.disable(detalleventa.getIddetalleventa());
        } else {
            detalleventaDao.enable(detalleventa.getIddetalleventa());
        }
    }
    
}

