
package FOOD_DATA;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class FOOD_DATADAOImpl  implements FOOD_DATADAO{

    @Override
    public void insert(FOOD_DATA f) {
        try{
        Connection conn = loader1.Loader1.getConnection();
        
        String query = "insert into FOOD_DATA ( FOOD_NAME, FOOD_PRICE, FOOD_TYPE, FOOD_DESCRIPTION, FOOD_QUANTITY) values(?,?,?,?,?)";
             PreparedStatement ps = conn.prepareStatement(query);
            
            ps.setString(1, f.getFOOD_NAME());
            ps.setString(2, f.getFOOD_PRICE());
            ps.setString(3, f.getFOOD_TYPE());
            ps.setString(4, f.getFOOD_DESCRIPTION());
            ps.setString(5, f.getFOOD_QUANTITY());
            
           
            ps.execute();    
        }
         catch(Exception e)
      {
          e.printStackTrace();
         }
            }

    @Override
    public void update(FOOD_DATA f) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public void delete(int FOOD_DATAId) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List getFOOD_DATA(int FOOD_DATAID) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<FOOD_DATA> getFOOD_DATA() {
    List<FOOD_DATA> list = new ArrayList<FOOD_DATA>();
    try
    {
        Connection conn = loader1.Loader1.getConnection();
        String query = "select * from food_data";
        Statement s = conn.createStatement();
        ResultSet rs= s.executeQuery(query);
        
        while(rs.next())
        {
            FOOD_DATA f = new FOOD_DATA();
            
            f.setFOOD_ID(rs.getInt("FOOD_ID"));
            f.setFOOD_NAME(rs.getString("FOOD_NAME"));
            f.setFOOD_PRICE(rs.getString("FOOD_PRICE"));
            f.setFOOD_TYPE(rs.getString("FOOD_TYPE"));
            f.setFOOD_DESCRIPTION(rs.getString("FOOD_DESCRIPTION"));
            f.setFOOD_QUANTITY(rs.getString("FOOD_QUANTITY"));
            System.out.println(f);
            list.add(f);
        }
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    return list;
    }
}
