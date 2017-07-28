
package FOOD_DATA;

import java.util.List;

public interface FOOD_DATADAO {
     public abstract void insert(FOOD_DATA f);
    public abstract void update(FOOD_DATA f );
    public abstract void delete(int FOOD_DATAId);
    
    
  public abstract List getFOOD_DATA( int FOOD_DATAID); 
  public abstract List<FOOD_DATA> getFOOD_DATA(); 

}


