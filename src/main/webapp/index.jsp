<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<h1><%= "Hello World!" %>
</h1>
<br/>
<form action="hello-servlet">
    <label for="name">Navn:</label><br>
    <input type="text" id="name" name="name" value="Peter"><br>
    <label for="password">Password:</label><br>
    <input type="text" id="password" name="password" value="123"><br><br>
    <input type="submit" value="Submit">
</form>
</body>
</html>