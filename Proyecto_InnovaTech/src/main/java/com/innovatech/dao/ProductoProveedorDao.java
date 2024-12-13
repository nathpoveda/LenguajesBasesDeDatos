/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.innovatech.dao;

import com.innovatech.domain.ProductoProveedor;
import com.innovatech.domain.ProductoProveedorId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author natha
 */
public interface ProductoProveedorDao extends JpaRepository<ProductoProveedor, ProductoProveedorId> {
    
    @Transactional
    @Modifying
    @Query("UPDATE ProductoProveedor c SET c.idestado = 1 WHERE c.id = :id")
    int disable(@Param("id") ProductoProveedorId id);
    
    @Transactional
    @Modifying
    @Query("UPDATE ProductoProveedor c SET c.idestado = 2 WHERE c.id = :id")
    int enable(@Param("id") ProductoProveedorId id);
    
    @Transactional
    @Procedure(procedureName = "FIDE_PROYECTO_FINAL_PKG.fide_productoproveedor_tb_insertar_sp") 
    void insertarProducto(
            @Param("v_horarioentrega") String horarioEntrega,
            @Param("v_idproveedor") Long idProveedor,
            @Param("v_idproducto") Long idProducto,
            @Param("v_preciocompra") Double precioCompra
    );
}
