<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Administrator side</title>
</head>
<body>
<h1>Velkommen til administrator siden</h1>

<c:forEach var="person" items="${applicationScope.personMap}">
    <br>
    ${person.value.name}
</c:forEach>

</body>
</html>