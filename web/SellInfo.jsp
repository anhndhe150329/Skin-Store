<%-- 
    Document   : SellInfo
    Created on : Jul 11, 2021, 5:59:58 PM
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
        <form action="SellControl?stock_id=${x}" method="post">
                Factory New<input type="radio" name="type" value="Factory New">
                Minimal Wear<input type="radio" name="type" value="Minimal Wear">
                Well Worn<input type="radio" name="type" value="Well Worn">
                Battle Scarred<input type="radio" name="type" value="Battle Scarred"><br>
            Price<input type="number" name="price"><br>
            <input type="submit" value="Enter">
        </form>
    </body>
</html>
