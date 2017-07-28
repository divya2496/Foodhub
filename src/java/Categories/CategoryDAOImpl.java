/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Categories;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import profile.profile;

/**
 *
 * @author richa yadav
 */
public class CategoryDAOImpl implements CategoryDAO{
    
        @Override
    public void insert(Category c) {
        try{
        Connection conn = loader.loader.getConnection();
        
        String query = "insert into Category1 ( CategoryName) values(?)";
             PreparedStatement ps = conn.prepareStatement(query);
            
            ps.setString(1, c.getCategoryName());
           
            
            ps.execute();    
        }
         catch(Exception e)
      {
          e.printStackTrace();
         }
    }

    @Override
    public void update(Category c) {
        Connection conn = loader.loader.getConnection();
        
          String query = "update Category1 SET CategoryName = '" + c.getCategoryName() + "'  where CategoryId = " + c.getCatID();
        
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
    public void delete(int cid) {
         Connection conn = loader.loader.getConnection();
        
          String query = "delete from Category1 where CategoryId = " + cid;
        
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
    public Category getcategory(int cid) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Category> getcategory() {
   List<Category> arrayList=new ArrayList();
        try {
            String s="select * from  Category1";
            Connection c=DriverManager.getConnection("jdbc:derby://localhost:1527/sample123", "root","root");
            Statement s1=c.createStatement();
            ResultSet r=s1.executeQuery(s);
            while (r.next()) {

                Category cat = new Category();
                
                cat.setCatID(r.getInt("CATEGORYID"));
                cat.setCategoryName(r.getString("CATEGORYNAME"));
                
                
                arrayList.add(cat);
            }
 } catch (SQLException ex) {
        }
        
        return  arrayList;    }
    
    
}
