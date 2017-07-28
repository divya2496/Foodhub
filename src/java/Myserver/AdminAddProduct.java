package Myserver;

import FOOD_DATA.FOOD_DATA;
import FOOD_DATA.FOOD_DATADAOImpl;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
public class AdminAddProduct extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String params[] = request.getParameterValues("app");
         FOOD_DATA f = new FOOD_DATA();
        
        
       for( int i = 0 ; i < params.length ; i++ )
       {
           
           switch(i)
           {
           
           case 0: f.setFOOD_NAME(params[i]); break ;
           case 1: f.setFOOD_PRICE(params[i]); break ;
           case 2: f.setFOOD_TYPE(params[i]); break ;
           case 3: f.setFOOD_DESCRIPTION(params[i]); break ;
           case 4: f.setFOOD_QUANTITY(params[i]); break ;
           
           
           }
                
           
           
       }
       
       FOOD_DATADAOImpl fdao= new FOOD_DATADAOImpl();
       fdao.insert(f);
        List<FOOD_DATA> list = fdao.getFOOD_DATA();
        request.setAttribute("allProfiles", list);
        RequestDispatcher rd =  request.getRequestDispatcher("ViewProduct.jsp");
        rd.forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
