/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Categories;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="UpdateCategory",urlPatterns = {"/UpdateCategory"})
public class UpdateCategory extends HttpServlet{
        CategoryDAOImpl cdao = new CategoryDAOImpl();
protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("hello");    
        /*int id = Integer.parseInt( request.getParameter("id") );
        System.out.println(id);
        cdao.delete(id);*/
        
        response.sendRedirect("Categories.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp); //To change body of generated methods, choose Tools | Templates.
        
        String catID = req.getParameter("catId");
        String catName = req.getParameter("categoryName");
        
        Category c =new Category();
        c.setCatID(Integer.parseInt(catID));
        c.setCategoryName(catName);
        
        cdao.update(c);
        
        System.out.println("Category : " + catID + catName);
        
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp); //To change body of generated methods, choose Tools | Templates.
      
    }
    
    
}
