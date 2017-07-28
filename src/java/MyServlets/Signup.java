
package MyServlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import profile.profile;
import profile.profileDaoImpl;

public class Signup extends HttpServlet  {
    
     @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
       
        
        String params[] = req.getParameterValues("signup");
        profile p = new profile();
        
        
       for( int i = 0 ; i < params.length ; i++ )
       {
           
           switch(i)
           {
           
               case 0: p.setFirstname(params[i]); break ;
           case 1: p.setLastname(params[i]); break ;
           case 2: p.setEmail(params[i]); break ;
           case 3: p.setPassword(params[i]); break ;
           case 5: p.setPhone(params[i]); break ;
           case 6: p.setAddress(params[i]); break ;
           
           }
                
           
           
       }
       
       profileDaoImpl pdao= new profileDaoImpl();
       pdao.insert(p);
    }
    }
            