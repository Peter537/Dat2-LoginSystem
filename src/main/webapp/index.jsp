<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
            crossorigin="anonymous"></script>
</head>
<body>
<section class="vh-100 bg-dark d-flex justify-content-center align-items-center">
    <div class="bg-secondary gap-3 d-flex flex-column" style="padding: 2.2rem 5rem;">
        <label class="w-100 text-center DefaultText">Login</label>
        <form class="d-flex flex-column gap-3 DefaultForm" action="login-servlet" method="get">
            <div class="d-flex flex-column gap-2">
                <label class="DefaultText" for="name">Navn</label>
                <input type="text" id="name" name="name" value="Peter">
                <label class="DefaultText" for="password">Password</label>
                <input type="text" id="password" name="password" value="123">
            </div>
            <a href="#" class=" text-center">Glemt adgangskode</a>
            <label class="w-100 text-danger" style="font-weight: bold">${requestScope.besked}</label>
            <input class="btn btn-primary" type="submit" value="Login">
        </form>
        <a href="createAccount.jsp" class="btn btn-primary d-flex flex-column gap-3" style="padding: 6px 12px; height: 38px">Create Account</a>
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
        color: rgba(100,100,100,.8);
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