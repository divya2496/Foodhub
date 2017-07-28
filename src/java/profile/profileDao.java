
package profile;

import java.util.List;

public interface profileDao {
    
    public abstract void insert(profile p);
    public abstract void update(profile p);
    public abstract void delete(int pid);
    
    
  public abstract List getprofile();      
}
