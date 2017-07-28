package profile;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "RegisterServlet", urlPatterns = {"/RegisterServlet"})
public class RegisterServlet extends HttpServlet {

   

   
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String name = request.getParameter("name");
         String last = request.getParameter("last");
         String email = request.getParameter("email");
         String password = request.getParameter("password");
         String address = request.getParameter("address");
         String phone = request.getParameter("phone");
         String gender = request.getParameter("gender");
         String pin = request.getParameter("pin");
         String country = request.getParameter("country");
         
         
         ModelMVC m = new ModelMVC();
         m.setName(name);
         m.setLast(last);
         m.setEmail(email);
         m.setPassword(password);
          m.setAddress(address);
         m.setPhone(phone);
         m.setGender(gender);
         m.setPin(pin);
         m.setCountry(country);
         
         
         
         String sql= "insert into profile(Firstname,Lastname,Email,Password,Phone,Address) values(?,?,?,?,?,?)";
        
        int i = DaoMVC.registerUser (m,sql);
         
        if(i!=0)
        {
            System.out.println("Value Inserted");
            request.setAttribute("msg", "Registration Successfully..!!  Login Here");
            getServletContext().getRequestDispatcher("/Signin.jsp").forward(request, response);
        }
        else
        {
            System.out.println("Value Not Inserted");
        }
         
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp); //To change body of generated methods, choose Tools | Templates.
    }
    
    
 }

  
    
