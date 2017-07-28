<%-- 
    Document   : logdetails
    Created on : Jul 19, 2017, 5:31:36 PM
    Author     : richa yadav
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            PreparedStatement ps;
        Connection conn;
        ResultSet rs = null;
        Class.forName("org.apache.derby.jdbc.ClientDriver");
        conn = DriverManager.getConnection("jdbc:derby://localhost:1527/sample123", "root", "root");
        Statement st = conn.createStatement();
          
          
       boolean flag = false;
        String Name = request.getParameter("mail");
        String Password = request.getParameter("pass");
   %>   
   <%
        String sql = "select firstname from profile where email=? and password=?";

        try 
        {
        
            ps = conn.prepareStatement(sql);
            ps.setString(1, Name);
            ps.setString(2, Password);
            rs = ps.executeQuery();
            if(rs.next()) 
            {
                out.println( rs.getString("firstname"));
                flag = true;
                session.setAttribute("uname", rs.getString ("firstname"));
            }
            else
            {
                request.setAttribute("err", "user name or pass error");
            }    
            rs.close();
            ps.close();
            conn.close();
            
        }
        catch(Exception e)
        {
            out.println(e);
        }
        %>
        <%if (flag) {
        
        %>
        <jsp:forward page="logsuccess.jsp"/>
        <%}else{

%>
        <jsp:forward page="logfail.jsp"/>
        <%}%>
    </body>
</html>
