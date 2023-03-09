<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Administrator side</title>
</head>
<body>
<h1>Velkommen til administrator siden</h1>

<style>
    table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
    }

    td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
    }

    tr:nth-child(even) {
        background-color: #dddddd;
    }
</style>

<table>
    <tr>
        <th>Navn</th>
        <th>Kode</th>
        <th>Role</th>
        <th>Valg</th>
    </tr>
    <c:forEach var="person" items="${applicationScope.personMap}">
    <tr>
        <td>${person.value.name}</td>
        <td>${person.value.password}</td>
        <td>${person.value.role}</td>
        <td>
            <form action="delete-other-user-servlet">
                <input type="text" hidden name="deleteUser" value="${person.value.name}">
                <input type="submit" value="Slet">
            </form>
            <form action="edit-other-user-servlet">
                <input type="text" hidden name="editUser" value="${person.value.name}">
                <input type="submit" value="Rediger">
            </form>
            <form action="to-do-list-servlet">
                <input type="text" hidden name="checkToDoListUser" value="${person.value.name}">
                <input type="submit" value="Huskeliste">
            </form>
        </td>
    </tr>
    </c:forEach>
</table>

</body>
</html>