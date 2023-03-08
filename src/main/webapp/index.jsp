<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Side</title>
</head>
<body>
<h1>Login her</h1>
<br/>
${requestScope.besked}
<form action="login-servlet" method="get">
    <label for="name">Navn:</label><br>
    <input type="text" id="name" name="name" value="Peter"><br><br>
    <label for="password">Password:</label><br>
    <input type="text" id="password" name="password" value="123"><br><br>
    <input type="submit" value="Submit">
</form>
<br>
<h1>Opret ny bruger</h1>
<br>
<br>
${requestScope.newUserBesked}
<form action="login-servlet" method="post">
    <label for="newUserName">Navn:</label><br>
    <input type="text" id="newUserName" name="newUserName" placeholder="Enter your name"><br><br>
    <label for="newUserPassword">Password:</label><br>
    <input type="text" id="newUserPassword" name="newUserPassword" placeholder="Enter your password"><br><br>
    <label for="newUserConfirmPassword">Confirm Password:</label><br>
    <input type="text" id="newUserConfirmPassword" name="newUserConfirmPassword" placeholder="Enter your password again"><br><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>