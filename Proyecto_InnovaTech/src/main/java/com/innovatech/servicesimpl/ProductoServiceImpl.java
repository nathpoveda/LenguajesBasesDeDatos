/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.servicesimpl;

import com.innovatech.dao.ProductoDao;
import com.innovatech.domain.Producto;
import com.innovatech.services.ProductoService;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ProductoServiceImpl implements ProductoService {

    @Autowired
    private ProductoDao productoDao;

    @Override
    public List<Producto> getProductos() {
        var lista = productoDao.findAll();
        return lista;
    }

    @Override
    public Producto getProducto(Producto producto) {
        return productoDao.findById(producto.getIdProducto()).orElse(null);
    }

    @Override
    public void save(Producto producto) {
        productoDao.insertarProducto(
                producto.getNombre(),
                producto.getPrecio(),
                producto.getCategoria().getIdCategoria(),
                producto.getMarca().getIdMarca()
        );
    }

    @Override
    public void update(Producto producto) {
        productoDao.update(
                producto.getIdProducto(), 
                producto.getNombre(), 
                producto.getPrecio(), 
                producto.getCategoria().getIdCategoria(), 
                producto.getMarca().getIdMarca()
        );
    }

    @Override
    public void delete(Producto producto) {
        Producto prod = getProducto(producto);
        if (prod.getIdestado() == 2) {
            productoDao.disable(producto.getIdProducto());
        } else {
            productoDao.enable(producto.getIdProducto());
        }
    }
}
