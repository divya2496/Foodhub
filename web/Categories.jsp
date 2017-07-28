<%-- 
    Document   : Categories
    Created on : Jul 6, 2017, 2:15:07 PM
    Author     : richa yadav
--%>
    

<%@page import="Categories.CategoryDAOImpl"%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@page import="profile.profileDaoImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
            <h3>ADD Categories</h3>
            <form action="AddCategory" method="post">
                <input type="text" placeholder="Enter First Name" name="category"><br>
            <input type="submit" value="Add">
            </form>
	</div>
     <div class="container">

    <div class="row">
        <div><h2>Category Name</h2></div>
    
    

</div>
         <%
        
  CategoryDAOImpl daoImpl=new CategoryDAOImpl();
  List<Categories.Category> al=daoImpl.getcategory();
  
request.setAttribute("al", al);
%>
<div class="container">
    
<c:forEach var="j" items="${al}">
    
    <div class="col-lg-2">${j.getCategoryName()}
        <a class="btn btn-danger" href="deleteProduct?id=${j.getCatID()}">delete</a>
        <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal" onclick="getid(${j.getCatID()})">Edit</button>
</div>

    
</c:forEach>
    
    <script>
        function getid(item){
            
            console.log(item);
            document.getElementById("updatableId").value = item;
            
        }
        
  </script>
    
    
    <!-- Modal -->
<div id="myModal" class="modal fade" role="dialog">
  <div class="modal-dialog">

    <!-- Modal content-->
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h4 class="modal-title">Updater</h4>
      </div>
      <div class="modal-body">
          <form action="UpdateCategory" method="post">
              <input type="hidden" id="updatableId" name="catId"></br></br>
               <input type="text" placeholder="Enter new Category Name" name="categoryName"></br></br>
            <input type="submit" class="btn btn-primary" value="Update">
            </form>
        
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
      </div>
    </div>

  </div>
</div>
    
    
</div>    
</body>
</html>