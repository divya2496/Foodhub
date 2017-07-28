<%-- 
    Document   : ViewUsers
    Created on : Jul 6, 2017, 6:43:48 PM
    Author     : richa yadav
--%>
<%@page import="java.util.List"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="profile.profileDaoImpl"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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

    <div class="row">
        <div class="col-lg-2"><h2>First Name</h2></div>
    
    <div class="col-lg-2"><h2>Email</h2></div>
    <div class="col-lg-2"><h2>Address</h2></div>
    <div class="col-lg-2"><h2>Phone NO</h2></div>
    </div>
    

</div>
       <hr>  <%
        
  profileDaoImpl daoImpl=new profileDaoImpl();
  List<profile.profile> al=daoImpl.getprofile();
  
request.setAttribute("al", al);
%>
<div class="container">
<c:forEach var="j" items="${al}">
    <div class="row">
    <div class="col-lg-2">${j.getFirstname()}</div>
 
    <div class="col-lg-2">${j.getEmail()}</div>
    <div class="col-lg-2">${j.getAddress()}</div>
    <div class="col-lg-2">${j.getPhone()}</div>
    <div class="col-lg-2">  <a class="btn btn-danger" href="DeleteProfile?id=${j.getId()}">delete</a></div>
    <div class="col-lg-2">   <button type="button" class="btn btn-info" data-toggle="modal" data-target="#myModal" onclick="getid(${j.getId()})">Edit</button> </div>
    </div>
    <hr>
    
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
          <form action="UpdateProfile" method="post">
              <input type="hidden" id="updatableId" name="proId"></br></br>
               <input type="text" placeholder="Enter new First Name" name="ProfileName"></br></br>
               <input type="text" placeholder="Enter new Email" name="ProfileEmail"></br></br>
               <input type="text" placeholder="Enter new Address" name="ProfileAdd"></br></br>
               <input type="text" placeholder="Enter new Phone" name="ProfilePhone"></br></br>
               
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
