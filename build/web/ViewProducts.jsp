<%-- 
    Document   : ViewProducts
    Created on : Jul 5, 2017, 2:59:57 PM
    Author     : richa yadav
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.List"%>
<%@page import="Product.ProductDAOImpl"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <%
        Product.ProductDAOImpl pdao = new ProductDAOImpl();
        List<Product.Product> list = pdao.getproduct();
        
        request.setAttribute("data",list);

        %>
        
        
        
        <c:forEach items="${data}" var="x">
        
            ${x.getProductID()}
            ${x.getProductName()}
            
        </c:forEach>
        
    </body>
</html>
