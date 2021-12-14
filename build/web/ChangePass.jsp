<%-- 
    Document   : ChangePass
    Created on : Jun 22, 2021, 1:34:48 PM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
    </head>
    <body>
        <form method="post" action="UpdateUserServlet">
            <table>
                <tr>
                    <th colspan="2">Change Password</th>
                </tr>
                <input name="id" value="${userId}"  hidden="" />
                <input name="password" value="${password}" hidden="" />
                <tr>
                    <td><label for="oldpass">Old Password:</label></td>
                    <td><input name="oldpass" id="oldpass" type="password" required="" /></td>
                    <td>${eOld}</td>
                </tr>
                <tr>
                    <td><label for="newpass">New Password:</label></td>
                    <td><input name="newpass" id="newpass" type="password" name="password" required="" /></td>
                    <td>${eNew}</td>
                </tr>
                <tr>
                    <td><label for="renewpass">Re-new Password:</label></td>
                    <td><input name="renewpass" id="renewpass" type="password" required="" /></td>
                    <td>${eRe}</td>
                </tr>
                <tr>
                    <td><input type="submit" name="op" value="Change"  /></td>
                    <td><input type="reset" value="clear" /></td>
                </tr>
            </table>
        </form>
        <a href="ProfileServlet">Back</a>
    </body>
</html>
