/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.services;

import com.innovatech.domain.Producto;
import com.innovatech.domain.ProductoProveedor;
import com.innovatech.domain.ProductoProveedorId;
import java.util.List;

/**
 *
 * @author natha
 */
public interface ProductoProveedorService {
    public List<ProductoProveedor> getProductos();
    
    public ProductoProveedor getProductoProveedor(ProductoProveedor producto);
    public void save(ProductoProveedor producto);
    public void update(ProductoProveedor producto);
    public void delete(ProductoProveedorId producto);
}
