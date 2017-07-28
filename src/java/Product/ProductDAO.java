/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Product;


import java.util.List;

/**
 *
 * @author richa yadav
 */
public interface ProductDAO {
    public abstract void insert(Product p);
    public abstract void update(Product p);
    public abstract void delete(int pid);
    
    
public abstract Product getproduct(int pid);
  public abstract List<Product> getproduct(); 
}
