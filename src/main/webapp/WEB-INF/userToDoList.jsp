<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h1>To Do List for ${requestScope.person.name}</h1>

<form action="add-to-do-list-item-servlet" method="get">
    <input type="text" hidden name="addItemUser" value="${requestScope.person.name}">
    <label for="addItemTitle">Title:</label><br>
    <input type="text" id="addItemTitle" name="addItemTitle" placeholder="Enter title"><br><br>
    <label for="addItemDescription">Description:</label><br>
    <input type="text" id="addItemDescription" name="addItemDescription" placeholder="Enter description"><br><br>
    <input type="submit" value="Tilføj To Do">
</form>

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
        <th>Title</th>
        <th>Description</th>
        <th>Time Created</th>
    </tr>
    <c:forEach var="item" items="${requestScope.person.toDoList}">
        <tr>
            <td>${item.title}</td>
            <td>${item.description}</td>
            <td>${item.getFormattedTime()}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>