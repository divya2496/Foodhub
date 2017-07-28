<%-- 
    Document   : index
    Created on : Jun 23, 2017, 11:48:45 AM
    Author     : richa yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Food </title>
        <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

    </head>

	

<body background="images/chr.jpg">
        

<script src="./js/angular.min.js"></script>
<style>
    input.ng-invalid.ng-dirty{border:1px solid #000000;}
    </style>
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
      <li class="active"><a href="index.jsp"><font color="#ffffff">Home</font></a></li>
      <li><a href="about us.jsp"><font color="#ffffff">About Us</font></a></li>
      <li><a href="contact.jsp"><font color="#ffffff">Contact Us</font></a></li>
      <li><a href="AddProduct.jsp"><font color="#ffffff">Products</font></a></li>
      <li><a href="newMenu.jsp"><font color="#ffffff">Menu</font></a></li>
      
      
    </ul>
    <ul class="nav navbar-nav navbar-right">
      <li><a href="Signin.jsp"><span class="glyphicon glyphicon-user"></span><font color="#ffffff"> Signin</font></a></li>
      <li><a href="Signup.jsp"><span class="glyphicon glyphicon-user"></span><font color="#ffffff"> Signup</font></a></li>
    
      
    </ul>
  </div>
</nav>

   <div class="container">
   
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
      <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

   <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
       <center> <img src="images/ric.jpg" alt="Food" style="width:55%;">
      </div>
  

  <div class="item">
      <center>   <img src="images/bur.jpg" alt="Chicago" style="width:55%;">
      </div>
    
<div class="item">
    <center> <img src="images/image7.jpg" alt="New york" style="width:55%;">
      </div>
</div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
    <br>
  <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <image src="images/man.jpg" class="img-rounded" width="350" height="250"> <p style="font-size:160%;">CHINESE FOOD<p>
       </div>
   
                
        <div class="col-sm-4">
        <image src="images/pas.jpg" class="img-rounded" width="350" height="250"> <p style="font-size:160%;">ITALIAN FOOD<p>
       </div>
        <div class="col-sm-4">
        <image src="images/cak2.jpg" class="img-rounded" width="350" height="250"> <p style="font-size:160%;">DESERT<p>
      </div>
                </br>      
</body>
</html>

    
    
