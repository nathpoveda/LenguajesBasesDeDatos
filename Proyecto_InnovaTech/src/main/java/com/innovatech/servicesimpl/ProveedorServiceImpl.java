
package com.innovatech.servicesimpl;

import com.innovatech.dao.ProveedorDao;
import com.innovatech.domain.Proveedor;
import com.innovatech.services.ProveedorService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProveedorServiceImpl implements ProveedorService{
    @Autowired
    private ProveedorDao proveedorDao;
    
    @Override
    public List<Proveedor> getProveedores() {
        var lista = proveedorDao.findAll();
        return lista;
    }
    
    @Override
    @Transactional(readOnly = true)
    public Proveedor getProveedor(Proveedor proveedor) {
        return proveedorDao.findById(proveedor.getIdProveedor()).orElse(null);
    }
    
    @Override
    @Transactional
    public void save(Proveedor proveedor) {
//        proveedorDao.insertarProveedor(
//                proveedor.getNombre(),
//                proveedor.getIddireccion()
//        );
    }

    @Override
    @Transactional
    public void update(Proveedor proveedor) {
//        sucursalDao.updateProveedor(
//                sucursal.getIdproveedor(), 
//                sucursal.getNombre(), 
//                sucursal.getIdestado() 
//        );
    }
    
    
    @Override
    public void delete(Proveedor proveedor) {
        Proveedor prov = getProveedor(proveedor);
        if (prov.getIdestado() == 2) {
            proveedorDao.disable(proveedor.getIdProveedor());
        } else {
            proveedorDao.enable(proveedor.getIdProveedor());
        }
    }
}
