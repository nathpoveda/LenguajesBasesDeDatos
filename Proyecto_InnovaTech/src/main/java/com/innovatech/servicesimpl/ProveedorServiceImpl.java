package com.innovatech.servicesimpl;

import com.innovatech.dao.DireccionDao;
import com.innovatech.dao.ProveedorDao;
import com.innovatech.domain.Proveedor;
import com.innovatech.services.ProveedorService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class ProveedorServiceImpl implements ProveedorService {

    @Autowired
    private ProveedorDao proveedorDao;

    @Autowired
    private DireccionDao direccionDao;

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
        Long idDireccion = direccionDao.insertarDireccion(
                proveedor.getDireccion().getPais().getIdPais(),
                proveedor.getDireccion().getProvincia().getIdProvincia(),
                proveedor.getDireccion().getCanton().getIdCanton(),
                proveedor.getDireccion().getDistrito().getIdDistrito(),
                proveedor.getDireccion().getDireccionexacta()
        );

        proveedorDao.insertarProveedor(
                proveedor.getNombre(),
                idDireccion,
                proveedor.getTelefono()
        );
    }

    @Override
    @Transactional
    public void update(Proveedor proveedor) {
        direccionDao.updateDireccion(
                proveedor.getDireccion().getIdDireccion(),
                proveedor.getDireccion().getPais().getIdPais(),
                proveedor.getDireccion().getProvincia().getIdProvincia(),
                proveedor.getDireccion().getCanton().getIdCanton(),
                proveedor.getDireccion().getDistrito().getIdDistrito(),
                proveedor.getDireccion().getDireccionexacta()
        );
        
        proveedorDao.updateProveedor(
                proveedor.getIdProveedor(), 
                proveedor.getNombre(), 
                proveedor.getDireccion().getIdDireccion(), 
                proveedor.getTelefono()
        );
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
