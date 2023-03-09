<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container-fluid vh-100 p-0 bg-dark d-flex justify-content-center align-items-center">
    <div class="container text-center text-white-50 bg-secondary">
        <h1>Opret ny bruger</h1>
        <br>
        <label class="text-danger">${requestScope.newUserBesked}</label>
        <form action="login-servlet" method="post">
            <label for="newUserName">Navn:</label><br>
            <input type="text" id="newUserName" name="newUserName" placeholder="Enter your name"><br><br>
            <label for="newUserPassword">Password:</label><br>
            <input type="text" id="newUserPassword" name="newUserPassword" placeholder="Enter your password"><br><br>
            <label for="newUserConfirmPassword">Confirm Password:</label><br>
            <input type="text" id="newUserConfirmPassword" name="newUserConfirmPassword"
                   placeholder="Enter your password again"><br><br>
            <input type="submit" value="Submit">
        </form>
    </div>
</div>
</body>
</html>
