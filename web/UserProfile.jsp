<%-- 
    Document   : UserProfile
    Created on : Jun 25, 2021, 4:02:31 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div>
            <a href="SignInServlet">Home</a>
            <a href="ProfileServlet" >Profile</a>
        </div>
        <table>
            <tr>
                <th colspan="2">Profile</th>
            </tr>
            <tr>
                <td>First Name:</td>
                <td>${user.firstName}</td>
            </tr>
            <tr>
                <td>Last Name:</td>
                <td>${user.lastName}</td>
            </tr>
            <tr>
                <td>DOB:</td>
                <td>${user.DOB.toString()}</td>
            </tr>
            <tr>
                <td>Phone:</td>
                <td>${user.phone}</td>
            </tr>
            <tr>
                <td>Email:</td>
                <td>${user.email}</td>
            </tr>
            <tr>
                <td>Address:</td>
                <td>${user.address}</td>
            </tr>
        </table>
        <a href="UpdateUserServlet?op=edit&id=${userId}">Edit</a>
        <a href="UpdateUserServlet?op=changepass&id=${userId}">Change Password</a>
    </body>
</html>
