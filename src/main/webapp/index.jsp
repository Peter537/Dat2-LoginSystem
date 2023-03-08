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
<form action="login-servlet">
    <label for="name">Navn:</label><br>
    <input type="text" id="name" name="name" value="Peter"><br>
    <label for="password">Password:</label><br>
    <input type="text" id="password" name="password" value="123"><br><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>