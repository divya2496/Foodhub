/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package profile;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author richa yadav
 */
@WebServlet(name="DeleteProfile",urlPatterns = {"/DeleteProfile"})
public class DeleteProfile extends HttpServlet{
    
    profileDaoImpl pdao = new profileDaoImpl();
    
    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        super.service(req, res); //To change body of generated methods, choose Tools | Templates.
    }
    
       protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("hello");    
        /*int id = Integer.parseInt( request.getParameter("id") );
        System.out.println(id);
        cdao.delete(id);*/
        
        response.sendRedirect("ViewUsers.jsp");
    }

    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.service(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doTrace(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doTrace(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doOptions(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doOptions(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doDelete(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPost(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doHead(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doHead(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected long getLastModified(HttpServletRequest req) {
        return super.getLastModified(req); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
         processRequest(req, resp); //To change body of generated methods, choose Tools | Templates.
         int id = Integer.parseInt( req.getParameter("id") );
        System.out.println("ID: " + id);
        pdao.delete(id);
    }
    
}
