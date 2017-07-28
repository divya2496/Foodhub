/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Categories;

import java.util.List;


/**
 *
 * @author richa yadav
 */
public interface CategoryDAO {
    
       public abstract void insert(Category c);
    public abstract void update(Category c);
    public abstract void delete(int cid);
    
    
public abstract Category getcategory(int cid);
  public abstract List<Category> getcategory(); 
    
}
