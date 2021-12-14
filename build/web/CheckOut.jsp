<%-- 
    Document   : CheckOut
    Created on : Jul 9, 2021, 11:43:59 AM
    Author     : User
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
        <h1>Mua Thanh Cong</h1>
        <a href="HomePage.jsp">Mua Tiep</a>
        <c:forEach begin="0" end="${list.size()}" items="${list}" var="i">
            <p>${i.skin_name}</p><br>
        </c:forEach>
    </body>
</html>
