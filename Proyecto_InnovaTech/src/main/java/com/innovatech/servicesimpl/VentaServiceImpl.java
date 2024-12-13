package com.innovatech.servicesimpl;

import com.innovatech.dao.VentaDao;
import com.innovatech.domain.Venta;
import com.innovatech.services.VentaService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class VentaServiceImpl implements VentaService {
    
    @Autowired
    private VentaDao ventaDao;
    
    @Override
    public List<Venta> getVentas() {
        var lista = ventaDao.findAll();
        return lista;
    }
    
    @Override
    public Venta getVenta(Venta venta) {
        return ventaDao.findById(venta.getIdVenta()).orElse(null);
    }
    
    @Override
    public void save(Venta venta) {
        ventaDao.insertarVenta(
                venta.getEmpleado().getIdEmpleado(),
                venta.getSucursal().getIdsucursal(),
                venta.getFechaVenta(),
                venta.getTotal()
        );
    }
    
    @Override
    public void update(Venta venta) {
        ventaDao.update(
               venta.getIdVenta(), 
                venta.getEmpleado().getIdEmpleado(),
                venta.getSucursal().getIdsucursal(), 
                venta.getFechaVenta(),
                venta.getTotal()
        );
    }
    
    @Override
    public void delete(Venta venta) {
        Venta vent = getVenta(venta);
        if (vent.getIdestado() == 2) {
            ventaDao.disable(venta.getIdVenta());
        } else {
            ventaDao.enable(venta.getIdVenta());
        }
    }
    
}

