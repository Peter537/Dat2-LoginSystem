<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Account</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>
</head>
<body>
<!--
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
-->

<section class="vh-100 bg-dark d-flex justify-content-center align-items-center">
    <div class="bg-secondary gap-3 d-flex flex-column" style="padding: 2.2rem 5rem;">
        <label class="w-100 text-center DefaultText">Opret Konto</label>
        <form class="d-flex flex-column gap-3 DefaultForm" action="login-servlet" method="post">
            <div class="d-flex flex-column gap-2">
                <label class="DefaultText" for="newUserName">Navn</label>
                <input type="text" id="newUserName" name="newUserName" placeholder="Enter your name">
                <label class="DefaultText" for="newUserPassword">Password</label>
                <input type="text" id="newUserPassword" name="newUserPassword" placeholder="Enter your password">
                <label class="DefaultText" for="newUserConfirmPassword">Confirm Password</label>
                <input type="text" id="newUserConfirmPassword" name="newUserConfirmPassword"
                       placeholder="Enter your password again">
            </div>
            <label class="w-100 text-danger" style="font-weight: bold">${requestScope.newUserBesked}</label>
            <input class="btn btn-primary" type="submit" value="Opret Konto">
        </form>
        <a href="index.jsp" class="d-flex flex-column gap-3" style="padding: 6px 12px; height: 38px">Log ind i
            stedet</a>
    </div>
</section>

<style>
    .DefaultText {
        font-size: 2.55em;
        font-weight: 500;
        letter-spacing: 3px;
        color: rgba(230, 230, 230, .8);
    }

    .DefaultForm {
        font-size: 1.2em;
        color: rgba(100, 100, 100, .8);
    }

    .DefaultForm div > label {
        font-size: 1.33em;
    }

    .DefaultForm div > input {
        padding: 0 0 0 5px;
    }
</style>
</body>
</html>
