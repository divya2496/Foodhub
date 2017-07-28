
package Categories;

import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import profile.profile;
import profile.profileDaoImpl;


public class Categories extends HttpServlet  {

  @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
       
        
        String params[] = req.getParameterValues("category");
        Category c =new Category();
        
        
       for( int i = 0 ; i < params.length ; i++ )
       {
           
           switch(i)
           {
           
               case 0: c.setCategoryName(params[i]); break ;
          
           }
                
           
           
       }
       
     CategoryDAOImpl cdao = new CategoryDAOImpl();
      System.out.println("inserted");
     cdao.insert(c);
    
     
      
     
     resp.sendRedirect("Categories.jsp");
    
    
    }

      
    
        
    
}