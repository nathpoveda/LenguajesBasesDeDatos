package com.innovatech.servicesimpl;

import com.innovatech.dao.InventarioDao;
import com.innovatech.domain.Inventario;
import com.innovatech.services.InventarioService;
import java.time.LocalDate;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author natha
 */
@Service
public class InventarioServiceImpl implements InventarioService {

    @Autowired
    private InventarioDao inventarioDao;

    @Override
    public List<Inventario> getInventarios() {
        var lista = inventarioDao.findAll();
        return lista;
    }

    @Override
    public Inventario getInventario(Inventario inventario) {
        return inventarioDao.findById(inventario.getIdInventario()).orElse(null);
    }

    @Override
    public void save(Inventario inventario) {
        inventarioDao.insertarInventario(
                inventario.getProducto().getIdProducto(),
                inventario.getCantidad(),
                LocalDate.now(),
                inventario.getSucursal().getIdsucursal()
        );
    }

    @Override
    public void update(Inventario inventario) {
        inventarioDao.updateInventario(
                inventario.getIdInventario(),
                inventario.getProducto().getIdProducto(),
                inventario.getCantidad(),
                LocalDate.now(),
                inventario.getSucursal().getIdsucursal()
        );
    }

    @Override
    public void delete(Inventario inventario) {
        Inventario inv = getInventario(inventario);
        if (inv.getIdestado() == 2) {
            inventarioDao.disable(inv.getIdInventario());
        } else {
            inventarioDao.enable(inv.getIdInventario());
        }
    }
}
