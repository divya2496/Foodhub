/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Product;


import com.cloudinary.Cloudinary;
import com.cloudinary.utils.ObjectUtils;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author richa yadav
 */
@WebServlet(name="AddProduct",urlPatterns = {"/AddProduct"})
@MultipartConfig(fileSizeThreshold = 1024*1024*2, maxFileSize =1024*1024*10, maxRequestSize = 1024*1024*50)
public class AddProduct extends HttpServlet{

    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        processRequest(req, resp);
        
    }
    

    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       processRequest(req, resp);
    }
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
             
        String params[] = request.getParameterValues("productimage");
      
        for( String s: params )
            System.out.println(s);
        
        Part p = request.getPart("productimage1");
        String appPath = request.getServletContext().getRealPath("");
        System.out.println(appPath);
      
        String savePath = appPath + File.separator + "uploadImages";
        
        File fileSaveDir = new File(savePath);
        
        if( !fileSaveDir.exists() )
        {
            fileSaveDir.mkdir();
             }
        File f = new File( savePath + File.separator + "sample.jpg" );
              FileOutputStream fos = new FileOutputStream(f);
        BufferedOutputStream bos = new BufferedOutputStream(fos);
        
        byte b[]  = new byte[ p.getInputStream().available() ];
        
        p.getInputStream().read(b);
        
       bos.write(b);

         bos.close();
        fos.close();
        
        //cloudinary
         
        Cloudinary cloudinary = new Cloudinary(ObjectUtils.asMap(
  "cloud_name", "dtcxwogz6",
 "api_key" , "459388614255437",
 "api_secret", "AIHRJ2v0ff-1-qWIVQaUOvwrSfU"));

       
        Map uploadResult = cloudinary.uploader().upload( f, ObjectUtils.emptyMap());
        System.out.println( uploadResult.get("secure_url") );
        System.out.println( uploadResult );
        
        
    }
}
