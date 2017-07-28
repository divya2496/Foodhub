<%-- 
    Document   : sign in
    Created on : Jun 23, 2017, 12:18:44 PM
    Author     : richa yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <html lang="en" ng-app>
        <body background="images/image17.jpg">
            
    <style>
        
        input[type=text], input[type=password] 
        
        {
    width: 35%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    box-sizing: border-box;
}

button {
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    cursor: pointer;
    width: 35%;
}

input.ng-invalid.ng-dirty{border:1px solid red;}
  
    </style>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signin</title>
        <script src="./js/angular.min.js"></script>
    </head>
   
    
        
        <h1>Sign in </h1>
    <div class="container">
  
  </div>
      
              
      <form action="logdetails.jsp" name="myform" method="post">
         ${msg}
 
          <center> <label><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="mail" ng-model="user.name" />
    <span ng-show="myform.name.$dirty && myform.name.$error.required">Required!</span><br>
           
    <label><b>Password</b></label>
 <input type="password" placeholder="Enter Password" name="pass" ng-model="user.psw" />
    <span ng-show="myform.psw.$dirty && myform.psw.$error.required">Required!</span><br>

         <button type="submit">Login</button></center>
    
      </form><br>
      
    <center>    <a href ="#">Forget password?</a></center>
      

     </body>
    
</html>

