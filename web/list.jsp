<%-- 
    Document   : list
    Created on : Jun 22, 2021, 9:15:45 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List User</title>
    </head>
    <body>
        <table border="1px">
            <tr>
                <th>ID</th>
                <th>User Name</th>
                <th>Password</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Date of Birth</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Address</th>
            </tr>
            <c:forEach items="${Users}" var="User">
                <tr>
                    <td>${User.userId}</td>
                    <td>${User.username}</td>
                    <td>${User.password}</td>
                    <td>${User.firstName}</td>
                    <td>${User.lastName}</td>
                    <td>${User.DOB}</td>
                    <td>${User.phone}</td>
                    <td>${User.email}</td>
                    <td>${User.address}</td>
                    <td><a href="UpdateUserServlet?userId=${User.userId}">Edit</a>
                        <a href="ChangePassUserServlet?userId=${User.userId}">Change Password</a>
                        <a href="DeleteUserServlet?userId=${User.userId}" >Delete</a>
                    </td>
                </tr>
            </c:forEach>
        </table>
        <a href="Home.jsp">Back</a>
    </body>
</html>
