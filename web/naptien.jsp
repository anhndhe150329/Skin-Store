<%-- 
    Document   : naptien
    Created on : Jul 7, 2021, 5:48:44 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="UpdateUserServlet?op=addfunds&id=${userId}" method="post">
            <input type="number" name="cash">
            <input type="submit" value="Enter">
        </form>
    </body>
</html>
