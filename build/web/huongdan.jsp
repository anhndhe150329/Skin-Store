<%-- 
    Document   : huongdan
    Created on : Jul 7, 2021, 5:48:54 PM
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
        <h1>Hướng dẫn mua bán</h1><br>
        <h1>đừng hỏi</h1>
        <jsp:include page="footer.jsp" flush="true"></jsp:include>
        </div>

    </body>
</html>
