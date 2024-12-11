
package com.innovatech.services;

import com.innovatech.domain.Marca;
import java.util.List;


public interface MarcaService {
    public List<Marca> getMarcas();
    
    public Marca getMarca(Marca marca);
    public void save(Marca marca);
    public void update(Marca marca);
    public void delete(Marca marca);
    
}
