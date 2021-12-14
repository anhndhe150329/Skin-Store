<%-- 
    Document   : EditUser
    Created on : Jun 22, 2021, 11:27:40 AM
    Author     : Asus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
    </head>
    <body>
    <center>
        <form method="post" action="UpdateUserServlet">
            <table>
                <tr>
                    <th colspan="2">Edit</th>
                </tr>
                <tr hidden="">
                    <td><input name="id" type="text" value="${user.userId}" /></td>
                </tr>
                <tr>
                    <td><label for="fn">First Name:</label></td>
                    <td><input name="firstName" id="fn" type="text" value="${user.firstName}" /></td>
                </tr>
                <tr>
                    <td><label for="ln">Last Name:</label></td>
                    <td><input name="lastName" id="ln" type="text" value="${user.lastName}" /></td>
                </tr>
                <tr>
                    <td><label for="dob">Date of Birth:</label></td>
                    <td><input name="DOB" id="dob" type="date" value="${user.DOB}" required="" /></td>
                </tr>
                <tr>
                    <td><label for="p">Phone:</label></td>
                    <td><input name="phone" id="p" type="text" value="${user.phone}" /></td>
                </tr>
                <tr>
                    <td><label for="e">Email:</label></td>
                    <td><input name="email" id="e" type="text" value="${user.email}" required="" /></td>
                </tr>
                <tr>
                    <td><label for="address">Address:</label></td>
                    <td><input name="address" id="address" type="text" value="${user.address}" /></td>
                </tr>
                <tr>
                    <td><input value="Save" type="submit" name="op" /></td>
                    <td><input value="Clear" type="reset" /></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
