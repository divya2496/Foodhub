/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Categories;

import Product.ProductDAOImpl;
import com.sun.xml.ws.tx.coord.common.PendingRequestManager;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author richa yadav
 */
@WebServlet(name="deleteProduct",urlPatterns = {"/deleteProduct"})
public class DeleteProduct extends HttpServlet{
    
    CategoryDAOImpl cdao = new CategoryDAOImpl();
    ProductDAOImpl pdao = new ProductDAOImpl();
   protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("hello");    
        int id = Integer.parseInt( request.getParameter("id") );
        System.out.println(id);
        pdao.delete(id);
        
        response.sendRedirect("AddProduct.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp); //To change body of generated methods, choose Tools | Templates.
         int id = Integer.parseInt( req.getParameter("id") );
        System.out.println("ID: " + id);
        cdao.delete(id);
    }
  
    
    
}
