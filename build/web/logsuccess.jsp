<%-- 
    Document   : logsuccess
    Created on : Jul 19, 2017, 5:38:40 PM
    Author     : richa yadav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Welcome <%= session.getAttribute("uname") %>
    </body>
</html>
