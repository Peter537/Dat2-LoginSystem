<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Velkommen til din side ${sessionScope.person.name}</h1>
<p>Din kode er ${sessionScope.person.password}</p>

<br>
<form action="logout-servlet">
    <input type="submit" value="Log af">
</form>

<br>
${requestScope.newPasswordBesked}
<form action="change-password-servlet">
    <label for="newPassword">Nyt Password:</label><br>
    <input type="text" id="newPassword" name="newPassword" value=""><br><br>
    <input type="submit" value="Skift kode">
</form>

<br>
${requestScope.besked}
<form action="user-overview-servlet" method="get">
    <input type="submit" value="Gå til administrator side">
</form>

</body>
</html>