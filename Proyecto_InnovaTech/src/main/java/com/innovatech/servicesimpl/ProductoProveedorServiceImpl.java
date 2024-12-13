/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.servicesimpl;

import com.innovatech.dao.ProductoProveedorDao;
import com.innovatech.domain.Producto;
import com.innovatech.domain.ProductoProveedor;
import com.innovatech.domain.ProductoProveedorId;
import com.innovatech.services.ProductoProveedorService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *
 * @author natha
 */
@Service
public class ProductoProveedorServiceImpl implements ProductoProveedorService {
    
    @Autowired
    private ProductoProveedorDao productoProveedorDao;

    @Override
    public List<ProductoProveedor> getProductos() {
        return productoProveedorDao.findAll();
    }

    @Override
    public ProductoProveedor getProductoProveedor(ProductoProveedor producto) {
        return productoProveedorDao.findById(producto.getId()).orElse(null);
    }

    @Override
    public void save(ProductoProveedor producto) {
        productoProveedorDao.insertarProducto(
                producto.getHorarioEntrega(), 
                producto.getId().getProveedor().getIdProveedor(), 
                producto.getId().getProducto().getIdProducto(),
                producto.getPrecioCompra()
        );
    }

    @Override
    public void update(ProductoProveedor producto) {
        
    }

    @Override
    public void delete(ProductoProveedorId id) {
        ProductoProveedor prod = productoProveedorDao.findById(id).orElse(null);
        if (prod.getIdestado() == 2) {
            productoProveedorDao.disable(id);
        } else {
            productoProveedorDao.enable(id);
        }
    }
    
}
