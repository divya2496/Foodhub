/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Product;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author richa yadav
 */
public class ProductDAOImpl implements ProductDAO{

    @Override
    public void insert(Product p) {
         try{
        Connection conn = loader.loader.getConnection();
        
        String query = "insert into Product ( ProductName, ProductCategory, ProductDescription, ProductPrice) values(?, ?, ?, ?)";
             PreparedStatement ps = conn.prepareStatement(query);
            
            ps.setString(1, p.getProductName());
           ps.setString(2, p.getProductCategory());
           ps.setString(3, p.getProductPrice());
           ps.setString(4, p.getProductDescription());
           
            
            ps.execute();    
        }
         catch(Exception e)
      {
          e.printStackTrace();
         }
    }

    @Override
    public void update(Product p) {
          Connection conn = loader.loader.getConnection();
        
          String query = "update Product SET ProductName = '" + p.getProductName() + "'  where ProductId = " + p.getProductID();
        
        try {
             PreparedStatement ps = conn.prepareStatement(query);
            //Statement stmt = LoadApp.conn.createStatement();
            
            ps.execute(); 
            
            //stmt.executeUpdate(query);
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public void delete(int pid) {
                 Connection conn = loader.loader.getConnection();
        
          String query = "delete from Product where ProductId = " + pid;
        
        try {
             PreparedStatement ps = conn.prepareStatement(query);
            //Statement stmt = LoadApp.conn.createStatement();
            
            ps.execute(); 
            
            //stmt.executeUpdate(query);
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
    }

    @Override
    public Product getproduct(int pid) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Product> getproduct() {
        List<Product> arrayList=new ArrayList();
           try {
            String s="select * from  Product";
            Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/sample123", "root","root");
            Statement s1=c.createStatement();
            ResultSet r=s1.executeQuery(s);
            while (r.next()) {

                Product p = new Product();
                
                p.setProductID(r.getInt("PRODUCTID"));
                p.setProductName(r.getString("ProductName"));
                p.setProductCategory(r.getString("ProductCategory"));
                p.setProductDescription(r.getString("ProductDescription"));
                p.setProductPrice(r.getString("ProductPrice"));
                arrayList.add(p);
                
            }
            
               System.out.println( arrayList );
 } catch (SQLException ex) {
            ex.printStackTrace();
     
        }
        
        return  arrayList;    }
    
    
    
    
    public void addtocart(String a) {
         try{
             Connection conn = loader.loader.getConnection();
               
               String query = "insert into ADDTOCART ( PRODUCT_ID) values(?)";
               PreparedStatement ps = conn.prepareStatement(query);
               ps.setString(1,a);
               System.out.println("hoo gya add richa Yadav"+ a);
               ps.execute();    
        }
         catch(Exception e)
      {
          e.printStackTrace();
         }
    }
    }
    
    
