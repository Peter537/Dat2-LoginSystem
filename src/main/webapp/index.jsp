<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login Side</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <h1>Login her</h1>
    <br/>
    <div class="text-center">
        <label>${requestScope.besked}</label>
        <form action="login-servlet" method="get">
            <label for="name">Navn:</label><br>
            <input type="text" id="name" name="name" value="Peter"><br><br>
            <label for="password">Password:</label><br>
            <input type="text" id="password" name="password" value="123"><br>
            <a href="#">Glemt adgangskode</a><br><br>
            <input class="btn btn-primary" type="submit" value="Login">
        </form>
    </div>
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
        <input type="text" id="newUserConfirmPassword" name="newUserConfirmPassword"
               placeholder="Enter your password again"><br><br>
        <input type="submit" value="Submit">
    </form>
</div>

<div class="container-fluid bg-dark text-light p-5">
    <div class="container bg-dark p-5">
        <h1 class="display-4">Welcome to my Website</h1>
        <hr>
        <p>Go to My Website</p>
        <a href="#" class="btn btn-primary">link</a>
    </div>
</div>

</body>
</html>