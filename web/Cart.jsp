<%-- 
    Document   : Cart
    Created on : Jul 8, 2021, 4:07:24 PM
    Author     : User
--%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

        <style>
            body{
                background: url(PT/fullback.png);
                width: 100%;
            }
            .contains{

                background: url(PT/background1.png);
                border:1px solid black;     
                border-radius: 5px;
                width: 80%;
                margin: auto;
            }
        </style>
        <div class="contains">
            <jsp:include page="Header.jsp" flush="true"></jsp:include>
            <c:forEach begin="${(pageindex-1)*5}" end="${pageindex*5}" var="x" items="${list}">
                <div class="row">
                    <div class="col-md-2">
                        <img style="width:50%; height:50%;" src="${x.img}.png">
                    </div>
                    <div class="col-md-8">
                        ${x.price}
                    </div>
                    <div class="col-md-2">
                        <a href="${url}?name=delete&stock_id=${x.stock_id}">Delete</a>
                    </div>
                </div>
                <br>
            </c:forEach>
            <a href="${url}?name=checkout&cost=${cost}">Check Out</a><br>
            <h1>${cost}</h1>
            <a  href="${url}?pageindex=1&name=shoppingcart" style="border: 1px solid aquamarine; color: aquamarine; ">|<<</a>
            <c:forEach begin="${x}" end="${y}" var="i">
                <a href="${url}?pageindex=${i}&name=shoppingcart">${i}</a>
            </c:forEach>
            <a  href="${url}?pageindex=${end}&name=shoppingcart" style="border: 1px solid aquamarine; color: aquamarine; ">>>|</a>
            <jsp:include page="footer.jsp" flush="true"></jsp:include>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>
</html>
