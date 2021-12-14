<%-- 
    Document   : Header
    Created on : Jun 22, 2021, 9:26:40 PM
    Author     : Nhat Anh PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
        <style>
            .menu{                    
                margin-bottom: 3px;    
            }
            .logo{
  
            }
            .bar{
                margin-top: 4px;
                display :flex;
            }
            .tabs ul li a{	    
                background-color:#9C9C9C;         
                color: black;
            }

            .bar form{
                
                margin-left: 55px;
            }
            .bar form button{
                background-color: #9C9C9C;
            }
            
        </style>
    </head>
    <body>
        <div class="menu">
            <div class="logo" >
                <a href="">
                    <img src="PT/vieskins.png">
                </a>
            </div>
            <div class="bar">
                <div class="tabs">
                    <ul class="nav flex-column flex-sm-row">
                        <li class="nav-item ">
                            <a class="nav-link btn btn-outline-success" href="HomeControl?name=home">Home</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link btn btn-outline-success" href="SignIn.jsp">Login</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link btn btn-outline-success" href="SignUp.jsp">Sign up</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link btn btn-outline-success" href="CateControl?id=1">Pistol</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link btn btn-outline-success" href="CateControl?id=5">SMG</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link btn btn-outline-success" href="CateControl?id=6">Heavy</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link btn btn-outline-success" href="CateControl?id=4">Rifle</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link btn btn-outline-success" href="CateControl?id=2">Knifes</a>
                        </li>
                        <li class="nav-item ">
                            <a class="nav-link btn btn-outline-success" href="CateControl?id=3">Gloves</a>
                        </li>
                        
                    </ul>
                </div>
                <form class="d-flex" action="SearchControlServlet" method="post">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="id">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
                <a href="CartControl?name=shoppingcart">Your Cart</a>
                <a href="UpdateUserServlet?name=addfunds">Add Funds</a>
                <a href="SellControl?name=showstock">Your Stock</a>
            </div>

        </div>
    </body>
</html>
