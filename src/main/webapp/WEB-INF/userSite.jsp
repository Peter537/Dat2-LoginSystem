<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>Velkommen til din side ${sessionScope.person.name}</h1>
<p>Dit session id er: ${requestScope.id}</p>
<p>Din kode er ${sessionScope.person.password}</p>

<form action="logout-servlet">
    <input type="submit" value="Log af">
</form>

${requestScope.besked}
<form action="user-overview-servlet" method="get">
    <input type="submit" value="Gå til administrator side">
</form>

</body>
</html>