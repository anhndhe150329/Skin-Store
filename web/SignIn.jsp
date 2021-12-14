<%-- 
    Document   : SignIn
    Created on : Jun 25, 2021, 2:35:33 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Oxygen');

        body{
            margin: 0;
            padding: 0;
            font-family: 'Oxygen', sans-serif;
            letter-spacing: 1px;
        }

        section{
            width: 100%;
            height: 100vh;
            background: url(PT/fullback.png);
            background-size: cover;
        }

        .container{
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            width: 350px;
            height: 350px;
            

        }
        .container .login_form{
            position: relative;
            width: 100%;
            height: 350px;
            
            box-sizing: border-box;
            
        }

        

        .container .login_form{
            background: url(PT/background1.png);
            height: 380px;
            border-radius: 15px;
            box-shadow: -20px 0 15px rgba(0, 0, 0, 0.2);
            padding: 30px;
        }

        .container .login_form h1{
            color: white;

        }

        .container .login_form input{
            display: block;
            width: 100%;
            padding: 10px;
            box-sizing: border-box;
            margin-bottom: 20px;
            border: 2px solid #ccc;
            border-radius: 25px;
            outline: none;
            font-size: 15px;
                    }

        .container .login_form input:hover{
            border: 2px solid #673ab7;
        }

        .container .login_form input[type="submit"]{
            color: #fff;
            background: #673ab7;
            font-size: 16px;
            transition: 0.5s;
        }

        .container .login_form input[type="submit"]:hover{
            background: #ff0057;
            border: 2px solid #ff0057;
        }

        .container .login_form a{             
            text-decoration: none;
            font-weight: bold;
            color: white;
        }
        .container .login_form a:hover{
            color: #ff0057;
        }
    </style>
    <body>        
        <section>
            <div class="container">
                <div class="login_form">
                    <h1>Sign In</h1>
                    <form action="SignInServlet" method="post">
                        <lable for="username">
                            <input type="text" name="username" required="" placeholder="Username">${eUser}
                        </lable>
                        <lable for="password">
                             <input type="password" name="password" required="" placeholder="Password">${ePass}
                        </lable>
                        <p><a href="">Forgot password?</a></p>
                        <input type="submit" name="op" value="Sign In">
                    </form>
                    <a href="SignUp.jsp">Don't have account yet? Sign up.</a>
                </div>
            </div>
        </section>    
 
    </body>
</html>
<%--
        <form action="SignInServlet" method="post">
            <table>
                <tr>
                    <th colspan="2">Sign In</th>
                </tr>
                <tr>
                    <td><label for="username" >User Name:</label></td>
                    <td><input id="username" name="username" type="text" required="" /></td>
                    <td style="color: red;">${eUser}</td>
                </tr>
                <tr>
                    <td><label for="password" >Password:</label></td>
                    <td><input id="password" name="password" type="password" required="" /></td>
                    <td style="color: red;">${ePass}</td>
                </tr>
                <tr>
                    <td><input type="submit" value="Sign In" name="op" /></td>
                </tr>
            </table>
            <a href="SignUp.jsp">Don't have account yet ?</a>
        </form>
--%>