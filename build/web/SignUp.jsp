<%-- 
    Document   : SingIn
    Created on : Jun 22, 2021, 9:44:51 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
    </head>
    <style>
        body{
            display: flex;
            height: 100vh;
            justify-content: center;
            align-items: center;
            background: url(PT/fullback.png); 
        }
        .container{
            max-width: 700px;
            width: 100%;
            background: url(PT/background1.png);
            padding: 25px 30px;
            border-radius: 10px;
        }
        .container .title{
            font-size: 25px;
            font-weight: 500;
            position: relative;
            color: white;
        }
        .container .title::before{
            content: '';
            position: absolute;
            height: 3px;
            width: 40px;
            background: #ff0057;;            
            bottom: 0;
        }
        .container .user-details{
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .user-details .input-box{
            width: calc(100% / 2 - 20px);
        }
        .user-details .input-box input{
            height: 40px;
            width: 100%;
            border-radius: 5px;
            border: 1px solid #ccc;
            font-size: 15px;
            padding-left: 15px; 
        }
        .input-box p{
            font-size:18px; 
            color: white;
        }
        .button{
            height: 45px;
            margin: 20px 0;
            text-align: center;
        }
        .button input{
            height: 100%;
            width: 30%;
            border-radius: 10px;
        }
        .container .button input[type="submit"]:hover{
            background: #ff0057;
        }
    </style>
    <body>
        <div class="container">
            <div class="title">Registration</div>
            <form method="post" action="AddUserServlet">
                <div class="user-details">
                    <div class="input-box">
                        <lable for="un" > <p>User Name*:</p>
                            <input name="username" id="un" type="text" placeholder="Enter your name" /> ${eUser}
                        </lable>
                    </div>
                    <div class="input-box">
                        <lable for="pw" > <p>Password*:</p>
                            <input name="password" id="pw" type="password" placeholder="Enter your password" /> ${ePass}
                        </lable>
                    </div>
                    <div class="input-box">
                        <label for="rpw" > <p>Confirm Password*:</p>
                            <input name="repassword" id="rpw" type="password" placeholder="Confirm your password" /> ${eRePass}
                        </label>
                    </div>
                    <div class="input-box">
                        <lable for="fn"> <p>First Name:</p>
                            <input name="firstName" id="fn" type="text" placeholder="Enter your first name" />
                        </lable>
                    </div>
                    <div class="input-box">
                        <lable for="ln" > <p>Last Name:</p>
                            <input name="lastName" id="ln" type="text" placeholder="Enter your last name" />
                        </lable>
                    </div>
                    <div class="input-box">
                        <lable for="dob" > <p> Date of Birth*: </p>
                            <input name="DOB" id="dob" type="date" required="" />
                        </lable>
                    </div>
                    <div class="input-box">
                        <lable for="p" > <p> Phone: </p>
                            <input name="phone" id="p" type="text" placeholder="Enter your phone"/> ${ePhone}
                        </lable>
                    </div>
                    <div class="input-box">
                        <lable for="e" > <p>Email:</p>
                            <input name="email" id="e" type="text" required="" placeholder="Enter your email"/> ${eEmail}
                        </lable>
                    </div>
                    <div class="input-box">
                        <lable for="address" ><p> Address:</p>
                            <input name="address" id="address" type="text" placeholder="Enter your adress"/>
                        </lable>
                    </div>                                       
                </div>       
                <div class="button">
                    <lable> 
                        <input value="Sign up" type="submit" name="op" />  
                        <input value="Clear" type="reset" />
                    </lable>           
                </div>      
            </form>
        </div>
    </body>
</html>
<%--
            <table>
                <tr>
                    <th colspan="2">Sign Up</th>
                </tr>
                <tr>
                    <td><label for="un">User Name*:</label></td>
                    <td><input name="username" id="un" type="text" placeholder="Enter your name" /></td>
                    <td style="color:red;">${eUser}</td>
                </tr>
                <tr>
                    <td><label for="pw">Password*:</label></td>
                    <td><input name="password" id="pw" type="password" placeholder="Enter your password" /></td>
                    <td style="color:red;">${ePass}</td>
                </tr>
                <tr>
                    <td><label for="rpw">Confirm Password*:</label></td>
                    <td><input name="repassword" id="rpw" type="password" placeholder="Confirm your password" /></td>
                    <td style="color:red;">${eRepass}</td>
                </tr>
                <tr>
                    <td><label for="fn">First Name:</label></td>
                    <td><input name="firstName" id="fn" type="text" placeholder="Enter your first name" /></td>
                </tr>
                <tr>
                    <td><label for="ln">Last Name:</label></td>
                    <td><input name="lastName" id="ln" type="text"  placeholder="Enter your last name"/></td>
                </tr>
                <tr>
                    <td><label for="dob">Date of Birth*:</label></td>
                    <td><input name="DOB" id="dob" type="date" required="" /></td>
                </tr>
                <tr>
                    <td><label for="p">Phone:</label></td>
                    <td><input name="phone" id="p" type="text" placeholder="Enter your phone"/></td>
                    <td style="color:red;">${ePhone}</td>
                </tr>
                <tr>
                    <td><label for="e">Email*:</label></td>
                    <td><input name="email" id="e" type="text" required="" placeholder="Enter your email"/></td>
                    <td style="color:red;">${eEmail}</td>
                </tr>
                <tr>
                    <td><label for="address">Address:</label></td>
                    <td><input name="address" id="address" type="text" placeholder="Enter your adress"/></td>
                </tr>
                </div>
                <tr>
                    <td><input value="Sign up" type="submit" name="op" /></td>
                    <td><input value="Clear" type="reset" /></td>
                </tr>
            </table>
--%>