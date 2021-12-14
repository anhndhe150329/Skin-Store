<%-- 
    Document   : yourstock
    Created on : Jul 11, 2021, 7:16:20 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

            <c:forEach begin="0" end="3" var="i">
                <div class="row">
                    <c:forEach items="${list}" begin="${i*4}" end="${(i+1)*4-1}" var="x">
                        <div class="col-md-3" style="border:1px solid #fc4;margin-left: 20px;width: 23%;background-color: #1c1e22;border-radius: 5px;">
                            <center>
                                <img style="width: 50%; height: 50%" src="${x.img}.png">

                                <p style="color: wheat">${x.skin_name}</p>
                                <p style="color: wheat">${x.price}</p>
                                <a class="nav-link btn btn-outline-success" href="SellControl?name=delete&stock_id=${x.stock_id}" style="color:wheat; " >Delete</a>
                            </center>
                        </div>
                    </c:forEach>
                </div>
                <br>
            </c:forEach>

            <center>
                <a  href="${url}1&name=showstock" style="border: 1px solid aquamarine; color: aquamarine; ">|<<</a>
                <c:forEach begin="${x}" end="${y}" var="i">

                    <a  href="${url}${i}&name=showstock" style="border: 1px solid aquamarine; color: aquamarine; ">${i}</a>

                </c:forEach>
                <a  href="${url}${end}&name=showstock" style="border: 1px solid aquamarine; color: aquamarine; ">>>|</a>
            </center>
            <jsp:include page="footer.jsp" flush="true"></jsp:include>
        </div>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    </body>
</html>
