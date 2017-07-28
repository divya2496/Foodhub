<%-- 
    Document   : signup1
    Created on : Jun 23, 2017, 12:06:07 PM
    Author     : richa yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body background="images/image18.jpg">
    <style>
    input[type=firstname] , input[type=lastname] , input[type=text], 
     input[type=password], input[type=text], input[type=password], 
 input[type=address], input[type=contact] 
  
 input[type=text], input[type=password] {
    width: 20%;
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
    margin: 10px 0;
    border: none;
    cursor: pointer;
    width: 20%;
}


.cancelbtn {
    padding: 12px 20px;
    background-color: #f44336;
}

.cancelbtn,.signupbtn {
    float: left;
    width: 20%;
}

input.ng-invalid.ng-dirty{border:1px solid red;}

</style>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Signup</title>
        <script src="./js/angular.min.js"></script>
   
    </head>
    <body>
        
        <h2>Sign Up Form</h2>
        <form action="RegisterServlet" method="post">
            <center> <label><b> First Name</b></label>
              <input type="text" placeholder="Enter First Name" name="name" required><br>
 
 
              <label><b> Last Name</b></label>
 <input type="text" placeholder="Enter Last Name" name="last" required="required"><br>
 
    <label><b>Email</b></label>
    <input type="text" placeholder="Enter Email" name="email" required><br>

    <label><b>Password</b></label>
    <input type="password" placeholder="Enter Password" name="password" required><br>
    


    <label><b>Repeat Password</b></label>
<input type="password" placeholder="Repeat Password" name="psw-repeat" required><br>
    
    <label><b>Address</b></label>
  <input type ="text"   placeholder="Enter Address " name="address" required><br>
    
    <label><b>Contact</b></label>
<input type ="number" placeholder="Enter Contact no. " name="phone" required><br>

<label><b>Gender</b></label>
 <input type="radio" name="gender" value="male"> Male  <input type="radio" name="signup" value="female"> Female<br>
 
 <label><b>Pin Code</b></label>
<input type="number" placeholder="Enter Pincode" name="pincode" ng-model="user.pincode" required>
<br>
  <select name="country">
  <option value="country">Country</option>
  <option value="country">India</option>
  <option value="country">USA</option>
  <option value="country">Australia</option>
  <option value="country">Paris </option>
  <option value="country">England</option>
  
  </select><br><br>
 <button type="button" class="cancelbtn">Cancel</button>
      <button type="submit" >Sign Up</button>
</form>
  </body>
 </html>

   
