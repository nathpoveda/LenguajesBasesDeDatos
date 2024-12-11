package com.innovatech.servicesimpl;

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
//        sucursalDao.insertarSucursal(
//                sucursal.getNombre(),
//                sucursal.getHoraapertura(),
//                sucursal.getHoracierre(),
//                sucursal.getIddireccion()
//        );
    }

    @Override
    @Transactional
    public void update(Sucursal sucursal) {
//        sucursalDao.updateSucursal(
//                sucursal.getIdsucursal(), 
//                sucursal.getNombre(), 
//                sucursal.getIddireccion(), 
//                sucursal.getHoraapertura(), 
//                sucursal.getHoracierre(),
//                sucursal.getIdestado() 
//        );
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
