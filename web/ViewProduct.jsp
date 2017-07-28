<%-- 
    Document   : ViewProduct
    Created on : Jul 5, 2017, 2:59:40 PM
    Author     : richa yadav
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <table border="1" class="table">
            <thead>
                <tr>
                    <th>Product Id</th>
                    <th>Food Name</th>
                    <th>Food Price </th>
                    <th>Food Type</th>
                    <th>Food Description</th>
                    <th>Food Quantity</th>
                    <th>Update</th>
                    <th>Delete</th>
                </tr>
            </thead>
            <c:forEach items="${allProfiles}" var="item">
            <tbody>
                <tr>
                    <td>${item.getFOOD_ID()}</td>
                    <td>${item.getFOOD_NAME()}</td>
                    <td>${item.getFOOD_PRICE()}</td>
                    <td>${item.getFOOD_TYPE()}</td>
                    <td>${item.getFOOD_DESCRIPTION()}</td>
                    <td>${item.getFOOD_QUANTITY()}</td>
                    <td><a href="UpdateDetails?id">Update</a></td>
                    <td><a href="DeleteDetails?id">Delete</a></td>
                </tr>
            </tbody>
            </c:forEach>
        </table>

    </body>
</html>
