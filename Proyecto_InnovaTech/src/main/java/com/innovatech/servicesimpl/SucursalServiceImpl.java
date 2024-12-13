package com.innovatech.servicesimpl;

import com.innovatech.dao.DireccionDao;
import com.innovatech.dao.SucursalDao;
import com.innovatech.domain.Sucursal;
import com.innovatech.services.SucursalService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service
public class SucursalServiceImpl implements SucursalService {

    @Autowired
    private SucursalDao sucursalDao;

    @Autowired
    private DireccionDao direccionDao;

    @Override
    public List<Sucursal> getSucursales() {
        var lista = sucursalDao.findAll();
        return lista;
    }

    @Override
    @Transactional(readOnly = true)
    public Sucursal getSucursal(Sucursal sucursal) {
        return sucursalDao.findById(sucursal.getIdsucursal()).orElse(null);
    }

    @Override
    @Transactional
    public void save(Sucursal sucursal) {
        Long idDireccion = direccionDao.insertarDireccion(
                sucursal.getDireccion().getPais().getIdPais(),
                sucursal.getDireccion().getProvincia().getIdProvincia(),
                sucursal.getDireccion().getCanton().getIdCanton(),
                sucursal.getDireccion().getDistrito().getIdDistrito(),
                sucursal.getDireccion().getDireccionexacta()
        );
        
        sucursalDao.insertarSucursal(
                sucursal.getNombre(),
                idDireccion,
                sucursal.getHoraapertura(),
                sucursal.getHoracierre()
        );
    }

    @Override
    @Transactional
    public void update(Sucursal sucursal) {
        
        direccionDao.updateDireccion(
                sucursal.getDireccion().getIdDireccion(),
                sucursal.getDireccion().getPais().getIdPais(),
                sucursal.getDireccion().getProvincia().getIdProvincia(),
                sucursal.getDireccion().getCanton().getIdCanton(),
                sucursal.getDireccion().getDistrito().getIdDistrito(),
                sucursal.getDireccion().getDireccionexacta()
        );
        
        sucursalDao.updateSucursal(
                sucursal.getIdsucursal(), 
                sucursal.getNombre(), 
                sucursal.getDireccion().getIdDireccion(), 
                sucursal.getHoraapertura(), 
                sucursal.getHoracierre()
        );
    }

    @Override
    public void delete(Sucursal sucursal) {
        Sucursal suc = getSucursal(sucursal);
        if (suc.getIdestado() == 2) {
            sucursalDao.disable(sucursal.getIdsucursal());
        } else {
            sucursalDao.enable(sucursal.getIdsucursal());
        }
    }
}
