<%-- 
    Document   : Product
    Created on : Jul 5, 2017, 2:59:15 PM
    Author     : richa yadav
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="Product.ProductDAOImpl"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
      <head>

        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>
    <body>
        <nav class="navbar navbar-index" style="background-color: #800000; border: none; box-shadow: 2px 2px 20px #000000;">
  <div class="container-fluid slider">
    <div class="navbar-header">
        <a class="navbar-brand" href="#"><font color="#ffffff">Foodie</font></a>
       <div class="col-sm-3 col-sm-3 col-xs-4  logo">
           <a href="https://www.Foodi.com" title="Food">
           </a>
       </div>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="#"><font color="#ffffff">Home</font></a></li>
      <li><a href="aboutus.jsp"><font color="#ffffff">About</font></a></li>
      <li><a href="AddProduct.jsp"><font color="#ffffff">Products</font></a></li>
      
      <li><a href="Categories.jsp"><font color="#ffffff">Categories</font></a></li>
      <li><a href="ViewUsers.jsp"><font color="#ffffff">ViewUsers</font></a></li>
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Signin.jsp"><span class="glyphicon glyphicon-user"></span><font color="#ffffff"> Signin</font></a></li>
      <li><a href="Signup.jsp"><span class="glyphicon glyphicon-user"></span><font color="#ffffff"> Signup</font></a></li>
    
      
    </ul>
  </div>
</nav>
         <div class="container">
            <form action="AddProduct" method="post" enctype="multipart/form-data">
            <input type="text" class="form-control" placeholder="Enter Product name" name="productimage">
            <hr>
            <input type="text" class="form-control" placeholder="Enter Product category" name="productimage">
            <hr>
            <input type="text" class="form-control" placeholder="Enter Product description" name="productimage">
            <hr>
            <input type="text" class="form-control" placeholder="Enter Product price" name="productimage">
                <input type="file" value="upload" name="productimage1">
            <hr>
           
            
           
            <input type="submit" class="btn btn-warning" value="add">
            
            </form>
            
            
            
            </div>
        
             <%
        
  ProductDAOImpl daoImpl=new ProductDAOImpl();
  List<Product.Product> al=daoImpl.getproduct();
  
//request.setAttribute("al", al);
//System.out.println(al);
%>
<div class="container">
    
    
    
    <c:forEach var="j" items="<%=al%>">
    
    <div class="col-lg-2">${j.getProductName()}
        <a class="btn btn-danger" href="deleteProduct?id=${j.getProductID()}">delete</a>
        <button type="button" class="btn btn-info" data-tole="modal" data-target="#myModal" onclick="getid(${j.getProductID()})">Edit</button>
</div>

    
</c:forEach>
</div>
    </body>
</html>
