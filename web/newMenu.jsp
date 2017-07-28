<%-- 
    Document   : newMenu
    Created on : Jul 19, 2017, 6:13:58 PM
    Author     : richa yadav
--%>


<%@page import="FOOD_DATA.FOOD_DATA"%>
<%@page import="java.util.List"%>
<%@page import="FOOD_DATA.FOOD_DATADAOImpl"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MENU</title>
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
<link href='https://fonts.googleapis.com/css?family=Amita' rel='stylesheet'> 
<link href='https://fonts.googleapis.com/css?family=Annie Use Your Telescope' rel='stylesheet'>
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

          <a href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Amatic+SC">  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        
        
        
    </head>
p    <style> 
        .h51{
            font:15px Comic Sans MS, sans-serif;
            font-weight: bolder ;
            
        }
    
        
    </style>
    <body>
    <%
        FOOD_DATA f = new FOOD_DATA();
        FOOD_DATADAOImpl fdao= new FOOD_DATADAOImpl();
       
        List<FOOD_DATA> list = fdao.getFOOD_DATA();
        request.setAttribute("allProfiles", list);
       
    %>
    
    <br>
    <br>
    <br>
     <div class="container">
       
  
  
  <table class="table table-hover">
      
    <thead text-align="center">
      

          <th colspan="2" >Menu</th>
          
          
      
    </thead>
     <tbody>
         <c:forEach items="${allProfiles}" var="item">
      <tr>
        <td>${item.getFOOD_NAME()}</td>
        <td>${item.getFOOD_DESCRIPTION()}</td>
        <td>${item.getFOOD_TYPE()}</td>
        <td>${item.getFOOD_PRICE()}</td>
        <td>${item.getFOOD_QUANTITY()}</td>
   
       </tr>
     </c:forEach>
         </tbody>
     
      
        
    
  </table>
        
     </div>
     
    
    
    </body>
</html>
