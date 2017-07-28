<%-- 
    Document   : Admin
    Created on : Jul 19, 2017, 6:34:32 PM
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
    <body>
        <br>
        <h1> Admin</h1>
        <br>
        
        <form action="AdminAddProduct" method="post">
        
        <div class= "container">
            
        <div class="row">
        
        <div class="col-lg-12">
            
           <input type="text" placeholder="Enter name" name="app" class="form-control" />
    </div>
    </div>
            <hr>
            <div class= "container">
            
        <div class="row">
        
        <div class="col-lg-12">
    
            
 <input type="number" placeholder="Enter Description" name=app" class="form-control" />
    </div>
    </div>
            <hr>
             
            <div class= "container">
            
        <div class="row">
        
        <div class="col-lg-12">
    
            
 <input type="text" placeholder="Enter type" name="app" class=form-control" />
     </div>
    </div>
            <hr>
            <div class= "container">
            
        <div class="row">
        
        <div class="col-lg-12">
    
            
 <input type="text" placeholder="Enter Price" name="app" class=form-control" />
     </div>
    </div>
            <hr>
            <div class= "container">
            
        <div class="row">
        
        <div class="col-lg-12">
    
            
 <input type="number" placeholder="Enter quantity" name="app" class="form-control" />
     </div>
    </div>
            <hr>
            <div class= "container">
            
        <div class="row">
        
        <div class="col-lg-12" style="text-align: center;">
    
            
 <input type="submit"  value="Add" class="btn btn-success" />
     </div>
            
    </div>
            </form>
            <hr>