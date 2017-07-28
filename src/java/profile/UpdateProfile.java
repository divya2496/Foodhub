/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package profile;

import Categories.Category;
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
@WebServlet(name="UpdateProfile",urlPatterns = {"/UpdateProfile"})
public class UpdateProfile extends HttpServlet{
    profileDaoImpl pdao = new profileDaoImpl();

    @Override
    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        super.service(req, res); //To change body of generated methods, choose Tools | Templates.
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
      processRequest(req, resp); //To change body of generated methods, choose Tools | Templates.
        
        String proID = req.getParameter("proId");
        String proName = req.getParameter("ProfileName");
        String proemail = req.getParameter("ProfileEmail");
        String proadd = req.getParameter("ProfileAdd");
        String prophone = req.getParameter("ProfilePhone");
        
        profile p = new profile();
        p.setId(Integer.parseInt(proID));
        p.setFirstname(proName);
        p.setEmail(proemail);
        p.setAddress(proadd);
        p.setPhone(prophone);
        
        pdao.update(p);
        
        System.out.println("Category : " + proID + proName);    }

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
           processRequest(req, resp);
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         System.out.println("hello");    
        /*int id = Integer.parseInt( request.getParameter("id") );
        System.out.println(id);
        cdao.delete(id);*/
        
        response.sendRedirect("ViewUsers.jsp");
    }
    
}
